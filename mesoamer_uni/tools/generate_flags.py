import os
import shutil
from collections import defaultdict

# Generate .tga flags for countries which don't have a custom one.
# Written by ishky on the MU team

countries_history_base_path = "history/countries/"
countries_common_base_path = "common/countries/"
flags_base_path = "gfx/flags/"

country_to_tag = {}
tag_to_country = {}
for country_history_filename in os.listdir(countries_history_base_path):
    tag_name = country_history_filename[:3]
    country_name = country_history_filename[6:-4]  # Chop off "AAA - " and ".txt"
    country_to_tag[country_name] = tag_name
    tag_to_country[tag_name] = country_name


country_to_color = {}
for country_common_filename in os.listdir(countries_common_base_path):
    country_name = country_common_filename[:-4]

    lines = []
    with open(countries_common_base_path + country_common_filename, errors="ignore") as country_common_file:
        color_found = False
        #print(country_common_filename)
        for line in country_common_file:
            if line.startswith("color = { "):
                color = line[10:-3].split(" ")
                country_to_color[country_name] = color
                color_found = True
                break
        if not color_found:
            print("color not found for " + country_common_filename)

flag_exists_count = 0
flag_not_exists_count = 0
color_found = 0
color_not_found = 0
existing_flag_tags = [filename[:3] for filename in os.listdir(flags_base_path)]
for tag, country in tag_to_country.items():
    if tag in existing_flag_tags:
        flag_exists_count += 1
    else:
        flag_not_exists_count += 1
        if country in country_to_color:
            color_found += 1
        else:
            print("Color not found for tag '{}', country '{}'".format(tag, country))
            color_not_found += 1

print("{},{},{},{}".format(flag_exists_count, flag_not_exists_count, color_found, color_not_found))

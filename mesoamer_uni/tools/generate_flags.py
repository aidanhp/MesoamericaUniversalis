import os
import shutil
from collections import defaultdict

import sys
sys.path.append("/home/user/pyTGA")  # https://github.com/MircoT/pyTGA
import pyTGA

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
    country_name = country_name.replace(" ", "").lower()
    country_to_tag[country_name] = tag_name
    tag_to_country[tag_name] = country_name


color_to_count = defaultdict(int)
country_to_color = {}
country_to_count = {}
for country_common_filename in os.listdir(countries_common_base_path):
    country_name = country_common_filename[:-4]
    country_name = country_name.replace(" ", "").lower()

    lines = []
    with open(countries_common_base_path + country_common_filename, errors="ignore") as country_common_file:
        color_found = False
        #print(country_common_filename)
        for line in country_common_file:
            if line.startswith("color = { "):
                color = tuple([int(x) for x in line[10:-3].split(" ")])
                #if color == (47, 122, 167): continue
                count = color_to_count[color]
                country_to_color[country_name] = color
                country_to_count[country_name] = count
                color_found = True
                color_to_count[color] += 1
                break
        if not color_found:
            #print("color not found for " + country_common_filename)
            pass

flag_size = 128
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
            color = country_to_color[country]
            count = country_to_count[country]
            if count > 0:
                print("{}, {}, {}".format(country, count, color))
                continue
            #print(count)
            #print(country)
            row = [color for x in range(flag_size)]
            image = [row for x in range(flag_size)]
            tga = pyTGA.Image(data=image)
            tga.save("tga/" + tag)
        else:
            #print("Color not found for tag '{}', country '{}'".format(tag, country))
            color_not_found += 1

print("{},{},{},{}".format(flag_exists_count, flag_not_exists_count, color_found, color_not_found))

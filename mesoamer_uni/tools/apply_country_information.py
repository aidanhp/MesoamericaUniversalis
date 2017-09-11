import os
import shutil
from collections import defaultdict

#This script applies names, idea groups, etc for all countries based on their primary culture
#Written by ishky on the MU team

countries_history_base_path = "history/countries/"
countries_common_base_path = "common/countries/"
cultures_base_path = "tools/apply_country_information_cultures/"

culture_to_common_content = defaultdict(list)
for culture in os.listdir(cultures_base_path):
    with open(cultures_base_path + culture) as culture_file:
        for line in culture_file:
            culture_to_common_content[culture].append(line)

country_to_culture = {}
for country_history_filename in os.listdir(countries_history_base_path):
    country_name = country_history_filename[6:-4]  # Chop off "AAA - " and ".txt"
    with open(countries_history_base_path + country_history_filename) as country_history_file:
        culture_found = False
        for line in country_history_file:
            if not line.startswith("primary_culture"):
                continue
            primary_culture = (line.split("=")[1]).strip()
            culture_found = True
            break
        if not culture_found:
            print("WARNING: no culture found for " + country_history_filename)
        country_to_culture[country_name] = primary_culture


for country_common_filename in os.listdir(countries_common_base_path):
    country_name = country_common_filename[:-4]

    lines = []
    with open(countries_common_base_path + country_common_filename) as country_common_file:
        for line in country_common_file:
            if line.startswith("historical_idea_groups"):
                break
            lines.append(line)

    if country_name not in country_to_culture:
        print("WARNING: country " + country_name + " does not seem to have a history file")
        continue

    culture = country_to_culture[country_name]
    del country_to_culture[country_name]

    if culture not in culture_to_common_content:
        print("WARNING: country " + country_name + " with culture " + culture + " does not seem to have culture common content")
        continue

    tmp_country_common_filename = country_common_filename + ".tmp"
    with open(countries_common_base_path + tmp_country_common_filename, "w") as tmp_country_common_file:
        for line in lines:
            tmp_country_common_file.write(line)
        for line in culture_to_common_content[culture]:
            tmp_country_common_file.write(line)

    shutil.move(countries_common_base_path + tmp_country_common_filename,
                countries_common_base_path + country_common_filename)


if len(country_to_culture) > 0:
    print("WARNING: The following countries not translated:")
    for country in country_to_culture.keys():
        print(country)



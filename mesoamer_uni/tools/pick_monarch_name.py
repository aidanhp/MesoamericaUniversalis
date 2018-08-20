import os
import shutil
import re
import random
from collections import defaultdict

# Replace monarch names
# Written by ishky on the MU team

history_countries_base_path = "history/countries/"
common_countries_base_path = "common/countries/"

country_to_monarch = {}
for common_countries_filename in os.listdir(common_countries_base_path):
    country_name = common_countries_filename[:-4]
    country_name = country_name.replace(" ", "").lower()

    #if country_name != 'cuachahuantla': continue

    # Only matches males since females will have a '-' before
    # the digit after the '='
    pattern = re.compile('"([^"]*) #(\d)" = (\d+)')

    lines = []
    with open(common_countries_base_path + common_countries_filename, errors="ignore") as common_countries_file:
        #print(common_countries_filename)
        mode = "before_names"
        lines = []
        for line in common_countries_file:
            if mode == "in_names":
                if line == "}\n":
                    mode = "after_lines"
                    break
                lines.append(line)
            if line == "monarch_names = {\n":
                mode = "in_names"

        # Pick a line at random until we find a male.  Only first
        # name on the line will be chosen if there are multiple.
        monarch_name = "not_found"
        while monarch_name == "not_found":
            random_line = lines[random.randrange(len(lines))]
            result = pattern.search(random_line)
            if result:
                monarch_name = result.group(1)

        #print("country={}, monarch_name={}, num lines={}".format(country_name, monarch_name, len(lines)))
        #print(random_line.strip())
        country_to_monarch[country_name] = monarch_name


for history_countries_filename in os.listdir(history_countries_base_path):
    country_name = history_countries_filename[6:-4]  # Chop off "AAA - " and ".txt"
    country_name = country_name.replace(" ", "").lower()

    if country_name not in country_to_monarch:
        continue
    monarch_name = country_to_monarch[country_name]

    pattern = re.compile('^\t\tname = "Random First Name"$')

    orig_filename = history_countries_base_path + history_countries_filename
    tmp_filename = orig_filename + ".tmp"

    lines = []
    matched = False
    with open(orig_filename, errors="ignore") as history_countries_file:
        for line in history_countries_file:
            if pattern.match(line):
                lines.append('\t\tname = "{}"\n'.format(monarch_name))
                matched = True
            else:
                lines.append(line)

    if not matched:
        continue

    with open(tmp_filename, "w") as history_countries_file:
        for line in lines:
            history_countries_file.write(line)

    shutil.move(tmp_filename, orig_filename)

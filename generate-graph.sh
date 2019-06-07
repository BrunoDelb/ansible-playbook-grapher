#!/bin/bash

FILENAME=${FILENAME:-graph}
cd /work
python /ansible-playbook-grapher/ansibleplaybookgrapher/cli.py --include-role-tasks -o result $@
cairosvg result.svg -o $FILENAME.png
rm result.svg
echo "Generating $FILENAME.png file..."


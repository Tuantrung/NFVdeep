#!/bin/bash

echo "Generate python virtual environment"
python3 -m venv venv1

echo "Activate virtual environment"
cd venv1 && source bin/activate

echo "Install dependency"
pip install -r requirement.txt

echo "Run training script"
python script.py --agent PPO --overlay ./data/trung_network.gpickle --request ./data/requests.json --output output/ --logs logs/


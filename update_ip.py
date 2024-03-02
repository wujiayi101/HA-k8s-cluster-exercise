# Helper script
# Given the terraform outputs, updates the IP in the ansible scripts 

import json
import re

terraform_outputs_file = 'terraform/outputs.json'

def read_ip_mapping(file_path):
    with open(file_path, 'r') as file:
        outputs_json = json.load(file)
    
    # Extract the output values from the JSON object
    ip_mapping = {}
    for output_key, output_value in outputs_json.items():
        ip_mapping[output_key.split('_', 1)[0]] = output_value['value']
    
    return ip_mapping

# Call the function to read the Terraform outputs from the JSON file
ip_mapping = read_ip_mapping(terraform_outputs_file)

def replace_ip_in_file(file_path, ip_mapping):
    # Read the file
    with open(file_path, 'r') as file:
        lines = file.readlines()

    for host, ip in ip_mapping.items():
        # Process each line
        for i, line in enumerate(lines):
            if line.startswith(host) :
                ip_match = re.search(r'\b(?:\d{1,3}\.){3}\d{1,3}\b', line)
                if ip_match:
                    print(f"The line contains both host {host} and an IP, updating IP to new one...")
                    old_ip = ip_match.group()
                    new_ip = ip
                    # Replace the IP address with the new IP
                    lines[i] = line.replace(old_ip, new_ip)

        # Write the updated content back to the file
        with open(file_path, 'w') as file:
            file.writelines(lines)


replace_ip_in_file('ansible/centos/playbooks/env_variables', ip_mapping)
replace_ip_in_file('ansible/centos/hosts', ip_mapping)

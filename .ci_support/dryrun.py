import json
import subprocess
import sys
import yaml


def get_detailed_environment(environment_input_file, environment_output_file):
    output_start = subprocess.check_output(
        ["conda", "env", "create", "-n", "testenv", "-f", environment_input_file, "--dry-run", "--json"], 
        shell=False, 
        universal_newlines=True
    )
    output_start_dict = json.loads(output_start)
    output_dict = output_start_dict.copy()

    if output_dict["name"] is None:
        del output_dict["name"]
    output_dict["dependencies"] = list(sorted([
        dep.split("::")[-1].replace("==", "=") 
        for dep in output_dict["dependencies"]
    ]))
    with open(environment_output_file, "w") as f:
        f.writelines(yaml.dump(output_dict))

    output_extended = subprocess.check_output(
        ["conda", "env", "create", "-n", "testenv", "-f", environment_output_file, "--dry-run", "--json"], 
        shell=False, 
        universal_newlines=True
    )
    output_extended_dict = json.loads(output_extended)
    return output_extended_dict == output_start_dict


if __name__ == "__main__":
    get_detailed_environment(environment_input_file=sys.argv[1], environment_output_file=sys.argv[2])

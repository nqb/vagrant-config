#!/bin/bash

if [ $# -lt 1 ]; then
cat <<EOF
Usage: create-new-env.sh ENVIRONMENT_NAME
EOF
exit 1;
fi

env_name=$1
tpl_dir=templates
tpl_file=$tpl_dir/myVagranfile.erb
inventory_file=$tpl_dir/inventory.yml

# echo -e will just print a newline
mkdir -v $env_name
echo -e
echo "Creating Vagrantfile based on $tpl_file..."
echo -e
vagrant init --output $env_name/Vagrantfile --template $tpl_file
echo -e
cp -v $inventory_file $env_name
echo -e
echo "Now edit your inventory file in $env_name then run 'vagrant up' in $env_name"
exit 0

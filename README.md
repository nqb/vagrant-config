# vagrant-config
My Vagrant config

## VM Usage

``` shell
./create-new-env.sh ENVIRONMENT_NAME
cd ENVIRONMENT_NAME

# define your inventory
vi inventory.yml

# start your environment
vagrant up
```

### Example

``` shell
./create-new-env.sh debian-env
cd debian-env

# add debian/stretch64 on 'box' line
vi inventory.yml

vagrant up
```

## Docker Usage


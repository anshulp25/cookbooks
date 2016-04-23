# mesos_master

Was facing lot of hassle to setup local Vagrant mesos master-slave setup for experimenting and testing. Thats why wrote this.

The recipe is tested with
- Centos 7

## Mesos Master

1. Mesos_Master_Install
2. Mesos_Master_ZK_Config
3. Mesos_Master_change_hostname
4. Mesos_master_config


### Commands

```
sudo chef-client -z -o recipe["mesos_master::mesos_master_install"]
sudo chef-client -z -o recipe["mesos_master::mesos_master_zk_config"]
sudo chef-client -z -o recipe["mesos_master::mesos_master_change_hostname"]
sudo chef-client -z -o recipe["mesos_master::mesos_master_config"]

```

## Mesos Slave

1. Mesos_Slave_Install
2. Mesos_slave_change_hostname
3. Mesos_slave_Config


### Commands
```
sudo chef-client -z -o recipe["mesos_master::mesos_slave_install"]
sudo chef-client -z -o recipe["mesos_master::mesos_slave_change_hostname"]
sudo chef-client -z -o recipe["mesos_master::mesos_slave_config"]

```

Start the systemctl start mesos-slave


## Manual Steps

Add the private ip to host name mappings on both master and slave.

```
172.28.128.X mesosmaster
172.28.128.X mesosslave
```

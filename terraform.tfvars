rg_name             = "Transit-VNet-skillet"
location            = "West India"
hub-vnet-name       = "hub-vnet-skn"
app1-vnet-name      = "app1-vnet-skn"
app2-vnet-name      = "app2-vnet-skn"
allowall            = "0.0.0.0/0"
hub-cidr            = "192.168.0.0/16"
app1-cidr           = "172.16.0.0/16"
app2-cidr           = "172.17.0.0/16"
mgmtSubnetName      = "Management"
mgmtSubnet          = "192.168.1.0/24"
trustSubnetName     = "Trust"
trustSubnet         = "192.168.2.0/24"
untrustSubnetName   = "Untrust"
untrustSubnet       = "192.168.3.0/24"
app1SubnetName      = "App1"
app1Subnet          = "172.16.11.0/24"
app2SubnetName      = "App2"
app2Subnet          = "172.17.22.0/24"
instancetype        = "Standard_D3_v2"
instanceSku         = "byol"
instanceVersion     = "latest"
adminUsername       = "paloalto"
adminPassword       = "Palo@lto123456"
share_dir1          = "None"
share_dir2          = "None"
www_script_path1    = "/scripts/www_build1.sh" 
www_script_path2    = "/scripts/www_build2.sh"

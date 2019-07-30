
## Brief Description
This skillet deploys VM-Series to provide inbound security for multiple VNet’s within a single subscription in a given region. It follows the transit VNet architecture with VNet peering to connect multiple Subscriber VNet’s to Hub VNet and communicate with each other via the security policies configured on VM-Series NGFW.

## Target Audience
A list of the target audience for the skillet.  
-	Core SE’s
-	Public Cloud SE’s

## Skillet Details

Authoring Group:  Public Cloud

Documentation:  

Github Location:  https://github.com/ceskillets/Cloud-Azure-Inbound-Transit-VNET-with-Standard-LB.git 

PAN-OS Supported:  8.1, 9.0

Cloud Provider(s) Supported:  AZURE

Type of Skillet:  Public Cloud

Purpose:  Demo

Status:  Completed


## Detail Description
There are many different ways to deploy VM-Series NGFW to protect critical workloads in Google Cloud Platform. Each design models has their own merits. In this skillet we intend to deploy VM-Series on Microsoft Azure, specifically on the Transit VNet design model. This architecture allows you to centralize security for multiple spoke VNet and connect it to hub VNet to consolidate all kinds of external connectivity. 

Executing this skillet, will allow you to successfully deploy VM-series NGFW in the Azure environment. This deployment uses external Load balancer to receive inbound user request from internet and forward it to respective applications in the spoke VNet.

This design models primarily defines how traffic flows are distributed amongst VM-Series firewalls while offering you flexibility in the number of firewalls, scale, and operational resiliency. To ensure symmetric traffic flow for the response from the server, SNAT is configured on the NGFW’s Trust interface IP.

 

### Inbound Traffic
For inbound traffic, the external load-balancer distributes traffic to the firewalls. The public load-balancer’s health probes monitor firewall availability through the HTTPS service activated in the interface management profile. Connectivity to the HTTPS service is limited to traffic sourced from the health probe IP address.

 

### High Availability
Based on the health probe timers, external load balancer will detect the failure and divert the traffic to the remaining healthy VM-Series firewalls. 

Horizontal Scaling: This design allows you to easily scale the number of NGFW’s horizontally to increase the performance by adding one VM at a time into the availability set.

### Outcome
In the transit VNet design, a common set of firewalls provides visibility and control of all traffic profiles (inbound, and outbound). V-Series are deployed in the HUB VNet in HA using external load balancer to avoid downtime caused by maintenance activities or failure.

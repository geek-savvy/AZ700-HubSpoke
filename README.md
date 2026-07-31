# AZ-700 Hub-and-Spoke Network with Terraform

## Project Overview

This project demonstrates how to deploy a Microsoft Azure Hub-and-Spoke network architecture using Terraform.

The environment follows Azure networking best practices and serves as a hands-on project for the Microsoft AZ-700: Designing and Implementing Microsoft Azure Networking Solutions certification.

---

## Technologies

- Microsoft Azure
- Terraform
- Git
- GitHub
- Visual Studio Code / PyCharm

---

## Architecture

Hub-and-Spoke Network

Hub-VNet
- Address Space: 10.0.0.0/16

Production
- VNet: 10.1.0.0/16
- AppSubnet: 10.1.1.0/24

Development
- VNet: 10.2.0.0/16
- AppSubnet: 10.2.1.0/24

---

## Resources Deployed

- Resource Group
- Hub Virtual Network
- Production Virtual Network
- Development Virtual Network
- Azure Bastion Subnet
- Azure Firewall Subnet
- Shared Services Subnet
- VNet Peering
- Network Security Groups
- Custom NSG Security Rules

---

## Security Rules

### Production

- Allow RDP (3389)
- Allow HTTP (80)
- Allow HTTPS (443)

### Development

- Allow SSH (22)
- Allow HTTPS (443)

---

## Repository Structure

```
provider.tf
resource_group.tf
network.tf
peering.tf
nsg.tf
variables.tf
outputs.tf
```

---

## Project Status

✅ Resource Group

✅ Hub VNet

✅ Hub Subnets

✅ Production VNet

✅ Development VNet

✅ VNet Peering

✅ Network Security Groups

✅ Custom NSG Rules

⬜ Azure Bastion

⬜ Windows Server VM

⬜ Ubuntu Linux VM

⬜ Route Tables

⬜ Azure Network Watcher

---

## Author

Created by Will Nash

GitHub:
https://github.com/geek-savvy
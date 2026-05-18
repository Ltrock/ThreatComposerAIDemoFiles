# ThreatComposerAIDemoFiles
This project demonstrates how to use Terraform infrastructure definitions together with AWS Threat Composer AI CLI to perform automated threat modeling for a banking application architecture.

## Project Structure
.
├── architecture.txt              # Banking application architecture description
├── terraform/
│   ├── main.tf                   # Main Terraform infrastructure
│   ├── variables.tf              # Terraform variables
│   ├── outputs.tf                # Terraform outputs
│   └── modules/                  # Optional Terraform modules
├── diagrams/
│   └── banking-architecture.png  # Optional architecture diagram
├── output/
│   ├── threat-model.md           # Threat Composer generated threat model
│   └── findings.json             # Optional structured findings
└── README.md

The goal is to show how Threat Composer AI CLI can:

Read architecture descriptions
Analyze Terraform infrastructure
Identify potential threats
Suggest mitigations
Accelerate threat modeling for developers

## reference: https://github.com/awslabs/threat-composer/blob/main/docs/AI-CLI-MCP.md

# ThreatComposerAIDemoFiles
This project demonstrates how to use Terraform infrastructure definitions together with AWS Threat Composer AI CLI to perform automated threat modeling for a banking application architecture.

## Project Structure

output/
├── threatmodel.tc.json              # Final assembled threat model
├── components/                      # Generated threat model components
│   ├── applicationInfo.tc.json
│   ├── architectureDescription.tc.json
│   ├── architectureDiagram.tc.json
│   ├── dataflowDescription.tc.json
│   ├── dataflowDiagram.tc.json
│   ├── threats.tc.json
│   └── mitigations.tc.json
├── logs/                            # Workflow execution logs
│   └── workflow_YYYYMMDD_HHMMSS.log
├── config/                          # Runtime configuration
│   └── run-metadata.json
└── session_YYYYMMDD_HHMMSS_xxxxx/  # Session data
    ├── session.json
    ├── agents/                      # Individual agent outputs
    └── multi_agents/                # Multi-agent outputs

The goal is to show how Threat Composer AI CLI can:

Read architecture descriptions
Analyze Terraform infrastructure
Identify potential threats
Suggest mitigations
Accelerate threat modeling for developers

## reference: https://github.com/awslabs/threat-composer/blob/main/docs/AI-CLI-MCP.md

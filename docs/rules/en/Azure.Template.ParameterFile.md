---
severity: Important
category: Resource deployment
resource: All resources
online version: https://github.com/Microsoft/PSRule.Rules.Azure/blob/main/docs/rules/en/Azure.Template.ParameterFile.md
---

# Use ARM parameter file structure

## SYNOPSIS

Use ARM template parameter files that are valid.

## DESCRIPTION

Azure Resource Manager (ARM) template parameter files have a pre-defined structure.
ARM template parameter files require `$schema`, `contentVersion` and `parameters` sections to be defined.
If any of these sections are missing, ARM will not accept the parameter file.

## RECOMMENDATION

Consider reviewing the requirements for this file.
Also consider using Visual Studio Code to assist with authoring these files.

## LINKS

- [Parameters in Azure Resource Manager templates](https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/template-parameters)

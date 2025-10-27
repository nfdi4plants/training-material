#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

inputs: []

hints:
  SoftwareRequirement:
    packages:
      fastqc:
        version: [ "0.12.1" ]

baseCommand:
    - "fastqc"
    - "--version"

outputs: []
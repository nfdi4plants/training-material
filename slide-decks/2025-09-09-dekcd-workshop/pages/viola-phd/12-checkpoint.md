

<Viola>

✔︎ I’ve added experimental details from SOPs\
✔︎ In addition to the raw data, my ARC now contains the annotated data analysis.\
✔︎ Using a datamap I can point to the content of my result files.

</Viola>

In your file system, your ARC should look similar to this: 
<div class="overflow-y-auto">

````md magic-move
```bash
|- isa.investigation.xlsx
|- studies/
|   |- AthalianaColdStress/
|   |   |- ...
|- assays/
|   |- SugarMeasurement
|   |   |- ...
|   |- Proteomics_DataAnalysis
|   |   |- README.md
|   |   |- dataset
|   |   |   |- MSFraggerOutput
|   |   |   |   |- combined_protein.csv
|   |   |   |- combined_protein.fasta
|   |   |- isa.assay.xlsx
|   |   |- protocols
|   |   |   |- AssayTemplate_Proteomics_DataAnalysis.json
```
```bash

|   |- Proteomics_DataAnalysis
|   |   |- README.md
|   |   |- dataset
|   |   |   |- MSRaw
|   |   |   |   |- WT_Cold_1_Measured.d
|   |   |   |   |- WT_Cold_2_Measured.d
|   |   |   |   |- WT_Cold_3_Measured.d
|   |   |   |   |- WT_RT_1_Measured.d
|   |   |   |   |- WT_RT_2_Measured.d
|   |   |   |   |- WT_RT_3_Measured.d
|   |   |- isa.assay.xlsx
|   |   |- protocols
|   |   |   |- AssayTemplate_Proteomics_MS.json
```
```bash
|   |- Visualization
|   |   |- README.md
|   |   |- dataset
|   |   |   |- heatmap.svg
|   |   |- isa.assay.xlsx
|   |   |- protocols
|   |   |   |- heatmap.py
|- workflows/
|   |- heatmap
|   |   |- workflow.cwl
|   |   |- heatmap.py
|   |   |- Dockerfile
|- runs/
|   |- heatmap-run
|   |   |- run.cwl
|   |   |- run.yml
```
````

</div>


<div class="space-y-2">
<Viola>
Now so far I’ve mostly added raw data and experimental metadata. How can I describe how I analyzed my data and created results?
</Viola>
<div>
<img src="/assets/viola-tutorial/arc-prototypic-workflows1.DSsysfoW_1WlP2B.svg"/>
</div>
</div>

---

<div class="space-y-2">
<Viola>
What if I have analyzed data in a way that is not perfectly reusable or reproducible – for instance when I use a proprietary software or a colleague helped with data analysis – but I would still want to store and annotate the data analysis in a way comprehensible to others?
</Viola>
<div>
<img src="/assets/viola-tutorial/arc-prototypic-workflows2.GM7wVJZg.svg"/>
</div>
</div>

---

<div class="space-y-2">
<div class="text-justify"> 

A computational workflow can simply be treated as a protocol. This can be a summary of the steps followed in any data analysis software. Or it can be a script. Hence the data analysis can simply be packaged as an assay, with the computational workflow stored in `protocols` and the resulting data stored in `dataset`

</div>
<div class="flex justify-center">
<img style="width: 80%" src="/assets/viola-tutorial/arc-prototypic-workflows-virtual.CEIRuLJG_1nSy4S.svg"/>
</div>
</div>

--- 

<AdmonitionType type="task">

- Create a new assay `Visualization`
- Add the python script and the output file to the assay

</AdmonitionType>

<Solution>

1. Add a new assay `Visualization`
1. Import the python script `heatmap.py` into `protocols`
1. Import the figure `heatmap.svg` resulting from the script into `dataset`
1. Add a new annotation table `Visualization`
1. Add the following building blocks: `Input[Data]`, `Protocol REF` and `Output[Data]`
1. Add one row with `sugar_result.csv`, `heatmap.py` and `heatmap.svg`

</Solution>

---

<div class="space-y-2">
<Viola>
Ok, in this case the heatmap was actually produced using a python script. It should be possible to document this in a reusable way.
</Viola>
<div class="flex justify-center">
<img style="width: 85%" src="/assets/viola-tutorial/arc-prototypic-workflows-cwl1.DZY_6sEU_Z1IePdK.svg"/>
</div>
</div>

---

<div class="space-y-2">

The script file in `workflows` is accompanied with a CWL file, which contains workflow metadata to render it reusable. The specific parameters of a `run`’s execution are stored in a separate job file.

<div class="flex justify-center">
<img style="width: 85%" src="/assets/viola-tutorial/arc-prototypic-workflows-cwl2.MeaPJjyg_Z1XtIkf.svg"/>
</div>
</div>

---

<AdmonitionType type="task">

- Download the additional files from [here](https://nfdi4plants.github.io/nfdi4plants.knowledgebase/violas-cwl.zip)

</AdmonitionType>

<Solution>

1. Download and extract the files:
    ```bash
    wget https://nfdi4plants.github.io/nfdi4plants.knowledgebase/violas-cwl.zip
    unzip violas-cwl.zip
    ```

</Solution>

---

Briefly summarized,
- the `heatmap.py` is the example data analysis script, which creates a heatmap based on a CSV table input
- the `workflow.cwl` is a CWL document that incorporates the `heatmap.py`
    - It requires two `inputs`
        1. `MeasurementTableCSV`: the file name of the CSV table
        1. `FigureFileName`: how the user wants to name the output file
    - And it generates one `output`: an `.svg` file named according to FigureFileName
- the `Dockerfile` handles the software dependencies
    - here: Python and the python packages `pandas`, `plotly`, `kaleido` (including specific versions)
- the `run.cwl` connects the inputs to the workflow steps to be run
    - in this example only a single step `heatmap/workflow.cwl` is being run
- the `run.yml` provides the required `input` parameters for `run.cwl`
    - the relative path to the CSV table input: `sugar_result.csv`
    - the desired file name: e.g. `heatmap`

---

<AdmonitionType type="task">

- Sort the files of `violas-cwl` into the ARC

</AdmonitionType>

<Solution>

1. Open the ARC
    ```bash
    cd path/to/your/arc
    ```
1. Add the `workflows` data
    ```bash
    mkdir workflows/heatmap
    mv /path/to/workflow.cwl workflows/heatmap/
    mv /path/to/heatmap.py workflows/heatmap/
    mv /path/to/Dockerfile workflows/heatmap/
    ```
1. Add the `runs` data
    ```bash
    mkdir runs/heatmap-run
    mv /path/to/run.cwl runs/heatmap-run/
    mv /path/to/run.yml runs/heatmap-run/
    ``` 
</Solution>

---

<AdmonitionType type="important">

If you don't have `cwltool` installed, run in an appropriate environment:

```bash
pip install cwltool
```

</AdmonitionType>

<AdmonitionType type="task">
- Run the workflow of your ARC
</AdmonitionType>

<Solution>

1. Run the workflow using `cwltool`
    ```bash
    cd runs/heatmap-run
    cwltool run.cwl run.yml
    ```

</Solution>
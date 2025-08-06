

<div class="space-y-2">
<Viola>
The data file “sugar_result.csv” I added earlier contains multiple columns, but in the assay annotation, I just pointed to the file. Is there a way to specify which column belongs to which sample?
</Viola>
<div class="flex justify-center">
<img style="width: 90%" src="/assets/viola-tutorial/arc-prototypic-datamap-fragment-selectors1.0AxSGwJq_24uItP.svg"/>
</div>
</div>

---

<AdmonitionType type="task">

- Connect the sample to specific data points in the `sugar_result.csv`.

</AdmonitionType>

<Solution>

1. In the `SugarMeasurement` assay, open the `Sugar Measurement` sheet
1. Open the `Data Annotator` tool
1. Open `sugar_result.csv`
1. Swith from `autodetect` to `output` and select only the 6 data columns 
1. Click `submit`

</Solution>

---

<div class="space-y-2">
<Viola>
Wow, this is very verbose, even though it only took a few clicks! And you say data scientists will now finally be content?
</Viola>
<div>
<img src="/assets/viola-tutorial/arc-prototypic-datamap-fragment-selectors2.C8wlFbPF_yAoHa.svg"/>
</div>
</div>

--- 

<AdmonitionType type="task">

- Add a datamap describing the columns of the `sugar_result.csv`

</AdmonitionType>

<Solution>

1. Go to the `Assay` sheet
1. In the `Datamap` section click `Add Datamap`
1. Open the `Data Annotator` tool within the `Data Map` sheet and select the `sugar_result.csv` file
1. Click on `Open Annotator`, select the 7 columns and click `submit`
1. Add the following annotation

| Data | Explication | Unit | Object Type |
|------|-------------|------|-------------|
| sugar_result.csv#col=1|molecule name| | string
| sugar_result.csv#col=2|molecule count| Millimole per Kilogram | Float
...

</Solution>
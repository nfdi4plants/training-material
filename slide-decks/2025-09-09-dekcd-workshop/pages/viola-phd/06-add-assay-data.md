

<div class="space-y-2">
<Viola>
    Ok, I think I understand. The study is used to describe the overall experiment and the sample generation. Then the assays are used to describe the individual lab processes and the data generation!
</Viola>
<div>
    <img src="/assets/viola-tutorial/arc-prototypic-assay-identify.vvSBZ2hs_Z1HdgMm.svg"/>
</div>
</div>

---

<div class="space-y-2">
<Viola>
    Then let's start with the sugar measurement. I used a Infinite M200 plate reader (Tecan) for the photometry.
</Viola>
<div class="flex justify-center">
    <img style="width: 80%" src="/assets/viola-tutorial/arc-prototypic-assay-sugar.CQ39sqWt_Z2oWBHz.svg"/>
</div>
</div>

---

<div class="flex justify-center">
    <img style="width: 70%" src="/assets/viola-tutorial/arc-prototypic-assay-modular1.JkK5kNNF.svg"/>
</div>

---

<AdmonitionType type="task">

- Add a new assay for the Sugar Measurement and add its metadata
- Add the `sugar_extraction_protocol.md` and the `sugar_results.csv`
- Add two annotation tables to the assay

</AdmonitionType>

<Solution>

1. Click on the plus icon next to `assays` to add a new assay with name `SugarMeasurement`
1. Add measurement type `sugar measurement`, technology type `photometry` and technology platform `Infinite M200 plate reader (Tecan)`.
1. Right click on the `dataset` folder and import `sugar_result.csv` from the demo data
1. Right click on the `protocols` folder and import `sugar_extraction_protocol.md` from the demo data
1. At the bottom of the right panel, click on the `+` right next to the `Assay` sheet to add one sheet for each lab process 
1. Right click each sheet's tab to rename them (`sugar extraction`, `sugar measurement`)

</Solution>

---

<img src="/assets/viola-tutorial/arc-prototypic-assay-labprocess1-extraction.CbMsEQms_ZpO5NM.svg"/>

Similar to the study example, we can parametrize the individual process steps, for instance:
- Vortex Mixer: 3 seconds
- Temperature: 95 degree celsius

<AdmonitionType type="tip">

Instead of adding each building block to the table, we can use a generic template for a sugar extraction! You can also use copy and paste features (using right click on cells) to fill out the cells and use regular expressions to update cell values (e.g. replace `leaf` with `sugar-ext`).

</AdmonitionType>

---

<AdmonitionType type="task">

- Add a new table to the `sugar extraction` sheet. Try using a template!
- Hint: You can filter for different communities using the `select community` dropdown. There is e.g. a `Training` community
- Fill the table with relevant metadata
- Repeat for the `sugar_measurement` sheet

</AdmonitionType>


<Solution>

1. Select the `sugar extraction` tab and click `Start from exisitng template!` 
1. Click on `Browse database` and select the `Training` community by clicking the cogwheel and selecing the community from the dropdown
1. Click on the template `Training - sugar extraction` and `select`
1. Click `Add templates`, select `Import Type` with Units and `Append to active table`
1. Transfer the sample names of your study's `Output[Sample Name]` to the `Input[Sample Name]` column of the assay
1. Add information of the `sugar_extraction_protocol.md` to the table
1. Fill the `Output[Sample Name]` column with `Cold1_sugar-ext`, ... and `RT3_sugar-ext`

</Solution>
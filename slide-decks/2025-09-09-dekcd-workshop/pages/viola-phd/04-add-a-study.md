

<div class="space-y-2">
    <Viola>
    And where do I add my experimental design? Where can I describe how I grew my plants under different conditions?
    </Viola>
    <div>
    With <b>studies</b> you can describe materials and resources. In Viola's PhD project you can add different growth conditions of your plants.
    </div>
    <img src="/assets/viola-tutorial/arc-prototypic-study-divide-conquer.DF3db3zO_ZLtxkj.svg"/>
</div>

---

<AdmonitionType type="task">

- Add a new Study 'AthalianaColdStress'
- Add a description that the study is about cold acclimation of Arabidopsis leaf tissue

</AdmonitionType>

<Solution>

1. Click on the plus icon next to `studies` to add a new study
1. Enter a name for the `New Study`: AthalianaColdStress
1. Click on the study's name in the file tree to edit the study metadata in the right panel
1. Add a description: Cold acclimation analysis of Arabidopsis leaf tissue

</Solution>
---

<div class="space-y-2">
    <Viola>
    And where do I note down the plants I used? I grew my plants on <i>hydroponic plant culture media</i>.
    </Viola>
    <!-- <div class="flex justify-center">
    <img style="width: 70%" src="/assets/arc/documentation-principle-study.png">
    </div> -->
</div>

---

<AdmonitionType type="task">

- Add the plants Cold1, Cold2, Cold3, RT1, RT2 and RT3 as inputs to your study
- Add the samples Cold1_leaf, Cold2_leaf, Cold3_leaf, RT1_leaf, RT2_leaf and RT3_leaf 

</AdmonitionType>

<Solution>

1. Click on the study's name in the file tree
1. At the bottom of the right panel, click on the `+` right next to the `Study` sheet
1. Right click on sheet's tab to rename it to `plant-growth`
1. Click on add "Add Building Block" button, add `Input>Source Name` and `Output>Sample Name` and click `Add Column`
1. At the bottom of the table, type 6 in the text field and click `+` to add six rows to your table
1. Add the sample identifiers into the columns `Input[Source Name]` and `Output[Sample Name]`

</Solution>

---

<AdmonitionType type="task">

- Add characteristics for those plants (e.g. organism and growth medium)
- Add factors for those samples (e.g. temperature day)

</AdmonitionType>

<Solution>

1. Click on the study's name in the file tree
1. At the bottom of the right panel, click on the `+` right next to the `Study` sheet
1. Right click on sheet's tab to rename it to `plant-growth`
1. Click on add "Add Building Block" button, add `Input>Source Name` and `Output>Sample Name` and click `Add Column`
1. At the bottom of the table, type 6 in the text field and click `+` to add six rows to your table
1. Add the sample identifiers into the columns `Input[Source Name]` and `Output[Sample Name]`

</Solution>

---

<div class="space-y-2">
    <Viola>
    I saved my lab notes about the plant growth in the file growth_protocol.md. Can I store that somewhere?
    </Viola>
    <div class="flex justify-center">
        <img style="width: 80%" src="/assets/viola-tutorial/arc-prototypic-study-identify.DWudct8C_ZiY6JN.svg"/>
    </div>
</div>

---

<AdmonitionType type="task">

- Import the `growth_protocol.md` into the `protocols` folder
- Add the protocol as well as its parameters (temperature day, light intensity) to the study table

</AdmonitionType>

<Solution>

1. Right click on the `protocols` folder and select `Import Files` from the context menu
1. Select the file `growth_protocol.md` from the demo data and click `Open`
1. A click on the protocols file name opens a text editor in the right panel
1. In the "Building Blocks" widget, select `Parameter`, search for the parameter name (e.g. `growth time`)
1. Click `Unit` and search e.g. for `day` in the search bar and click `Add column`
1. In the table below, select any cell in the Parameter column and add the correct value

</Solution>
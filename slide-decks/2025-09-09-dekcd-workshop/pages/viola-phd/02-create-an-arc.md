

<div class="space-y-2">
    <Viola>
        So, where do I start? What is an ARC? And how do I create one?
    </Viola>
    <div>
        <img src="/assets/viola-tutorial/arc-scaffold.CuiXZJt-_262yIV.svg"/>
    </div>
</div>

---

<AdmonitionType type="important">
    
If ARCitect is not yet installed on your computer, please follow these instructions:
1. Install all dependencies via
    ```bash
    sudo apt-get update
    sudo apt-get install libgtk-3-0 libnotify4 xdg-utils 
    libsecret-1-0
    ```
2. Download the Linux DEB package from ARCitect's [release page](https://github.com/nfdi4plants/ARCitect/releases/latest)
    ```bash
    wget https://github.com/nfdi4plants/ARCitect/releases/download/vx.x.x/ARCitect_x.x.x_amd64.deb
    ```
3. Install ARCitect
    ```bash
    sudo dpkg -i ./ARCitect-x.x.x_amd64.deb
    ```
4. Start ARCitect
    ```bash
    arcitect
    ```

</AdmonitionType>

---

<div class="space-y-1">
<AdmonitionType type="task">

- Create a new ARC

</AdmonitionType>

<Solution>

1. Open the ARCitect
    ```bash
    arcitect
    ```
1. In the sidebar on the left, click on `New ARC`
1. Select a location and name of your ARC
    <AdmonitionType type="caution">
    
    - Use a short acronym
    - Avoid spaces and special characters in your ARC's name
    - Avoid administrative metadata (name, data, etc.)
    - Use a combination of keywords maybe grant number
    
    </AdmonitionType>

</Solution>

</div>
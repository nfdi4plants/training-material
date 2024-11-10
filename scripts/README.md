
# Repo maintenance

## Add DataPLANT knowledge base as submodule


### Add submodule (done once)

```bash
git submodule add https://github.com/nfdi4plants/nfdi4plants.knowledgebase/
```

### Init (done once)

```bash
git submodule update --init --recursive
```


### Update (done to pull latest commit from kb repo)

```bash
git submodule update --recursive --remote
```
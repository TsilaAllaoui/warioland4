# Wario Land 4 Chaos Viewer Data

Generated from `/home/tsila/warioland4`.

## Publish

From the Wario Land 4 repo:

```sh
git checkout --orphan chaos-data
git rm -rf .
cp -r /home/tsila/warioland4/chaos-viewer-data/* .
git add -A
git commit -m "Publish Chaos Viewer atlas data"
git push -u origin chaos-data --force
```

Then open:

https://bmanus2-dotcom.github.io/chaos-viewer/?repo=https%3A%2F%2Fgithub.com%2FTsilaAllaoui%2Fwarioland4

Or directly:

https://bmanus2-dotcom.github.io/chaos-viewer/?data=https%3A%2F%2Fraw.githubusercontent.com%2FTsilaAllaoui%2Fwarioland4%2Fchaos-data%2Fchaos-db.json

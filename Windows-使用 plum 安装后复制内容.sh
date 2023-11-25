#!/usr/bin/env bash
cp "$APPDATA"/plum/package/e71828/wubi86-jidian/wubi86_jidian.custom.yaml  "$APPDATA"/Rime/
cp "$APPDATA"/plum/package/e71828/wubi86-jidian/default.custom.yaml  "$APPDATA"/Rime/
cp "$APPDATA"/plum/package/e71828/wubi86-jidian/weasel.custom.yaml  "$APPDATA"/Rime/
cp "$APPDATA"/plum/package/e71828/wubi86-jidian/rime.lua  "$APPDATA"/Rime/jidian.rime.lua
touch "$APPDATA"/Rime/ice.rime.lua
diff -DVERSION1 "$APPDATA"/Rime/ice.rime.lua "$APPDATA"/Rime/jidian.rime.lua > "$APPDATA"/Rime/rime.lua
cp "$APPDATA"/plum/package/e71828/wubi86-jidian/wubi86_jidian.ico  "$APPDATA"/Rime/
cp "$APPDATA"/plum/package/e71828/wubi86-jidian/preview  "$APPDATA"/Rime/ -r
cp "$APPDATA"/plum/package/e71828/wubi86-jidian/lua  "$APPDATA"/Rime/ -r

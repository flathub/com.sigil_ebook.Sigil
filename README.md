## For plugins that need java runtime  

```
flatpak install flathub org.freedesktop.Sdk.Extension.openjdk17//24.08
```

## For plugins that need tk support
tk only supports x11
```
flatpak override --socket=x11 --nosocket=fallback-x11 com.sigil_ebook.Sigil
```

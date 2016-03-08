## TWRP device tree for Galaxy S4 Active (International)

Add to `.repo/local_manifests/jactivelte.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
	<project path="device/samsung/jactivelte" name="android_device_samsung_jactivelte" remote="TeamWin" revision="android-6.0" />
</manifest>
```

Then run `repo sync` to check it out.

To build:

```sh
. build/envsetup.sh
lunch omni_jactivelte-eng
make -j5 recoveryimage
```

Kernel sources are available at: https://github.com/jcadduono/nethunter_kernel_jactivelte/tree/twrp-6.0


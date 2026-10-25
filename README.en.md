<div align="center">
<img src="assets/branding/app-icon.png" width="96" alt="Shuguang icon" />

# Shuguang · 曙光

### Draw a route. Set your location in motion.

**An Android mock-location and custom trajectory tool.**

[Download v1.3](https://github.com/flower1201/shuguang/releases/download/v1.3.0/shuguang-v1.3.apk) · [中文文档](README.md) · [Release notes](https://github.com/flower1201/shuguang/releases/tag/v1.3.0) · [Report an issue](https://github.com/flower1201/shuguang/issues)
</div>

Choose a destination and follow a recommended route, or place your own waypoints and travel along straight segments. Control speed, pause, resume and inspect progress from one native Android screen.

<div align="center">
<img src="assets/screenshots/home.png" width="220" alt="Home screen" />
<img src="assets/screenshots/route.png" width="220" alt="Trajectory editor" />
<img src="assets/screenshots/coordinate.png" width="220" alt="Coordinate entry" />
</div>

## What you can do

| Feature | Behavior |
| --- | --- |
| Recommended routes | Walking, driving or cycling routes from Baidu Maps, using the first returned route and its road geometry |
| Manual waypoints | Add map points or BD-09 coordinates and move along straight segments in order |
| Destination search | Search names or addresses, select a city when needed, and browse result pages |
| Current location | Center the map on the system-provided location and use it as a start point or waypoint |
| Playback controls | Set `0.1–300 km/h`, start, pause, resume and stop; inspect distance and progress |
| Saved drafts | Restore the editor's route draft when returning |
| Background movement | Continue after leaving the editor while the process remains alive |
| Existing tools | Baidu / Google map entry points, location history, coordinate operations and floating directional controls |

A failed navigation request never silently becomes a straight-line route. The trajectory editor uses Baidu Maps; map services require network access, valid keys and the relevant permissions.

## Getting started

1. Install the [v1.3 APK](https://github.com/flower1201/shuguang/releases/download/v1.3.0/shuguang-v1.3.apk). Requires Android 8.1 / API 27 or newer.
2. Enable Developer options and choose **Shuguang / 曙光** as the mock location app.
3. Allow location access and enable system location services when requesting the current location.
4. Open **自定义轨迹** (custom trajectory), choose recommended or manual mode, and configure your route.
5. Set the speed and tap **开始行进** (start).

The current-location button uses the location reported by Android. While mock location is active, this may be a simulated position, which the UI identifies. Device power management may interrupt background movement. The app does not automatically resume after its process is terminated, and it does not promise compatibility with every receiving app or bypass of mock-location detection.

## Source and builds

This is an **apktool-rebuildable project**, with **Java sources and generated smali for the trajectory extension**. It is not a complete Android Studio / Gradle source project.

- [`route-src/java/`](route-src/java/): route geometry, playback, navigation, search and the native editor.
- [`apktool/`](apktool/): decoded resources, manifest and smali.
- [`scripts/build.ps1`](scripts/build.ps1): compile, rebuild and sign.
- [`DESIGN.md`](DESIGN.md): UI design specification.

Install JDK 17+, Android SDK with a platform API 27+ and D8, apktool 3.0.2 and uber-apk-signer 1.3.0. Configure their paths and run:

```powershell
./scripts/build.ps1
```

Set `ANDROID_HOME`, `APKTOOL_BAT` and `UBER_APK_SIGNER_JAR` if automatic discovery does not find your tools. Put your own map keys in the Git-ignored `.tools/local-map-keys.json`; see the [Chinese build guide](README.md#本地构建) and [module documentation](route-src/README.md).

Public source uses map-key placeholders and Google's public sample AdMob App ID. Release APKs contain their build-time map configuration. CI artifacts have placeholder keys and a build-environment Debug certificate, so their signatures may differ from the release APK.

## v1.3 release

- Version: `1.3` (`versionCode 35`).
- Package: `com.mm.app.ybwwlkj`.
- APK: `shuguang-v1.3.apk`, Debug-signed, APK signatures v2 / v3.
- SHA-256: `a69a3c9d99b7c61865d22fb81f2fdcea5ad508cd8387a03d0abd172222dd4b5f`.

Development checks on an Android 11 emulator covered manual route movement, pause/resume, arrival and background movement; a live Baidu walking route was also retrieved. The 1.3 package was built, signature-checked and installed on the emulator. A complete regression across physical devices and all feature scenarios has not been completed.

## Contributing

Bug reports, UI improvements and pull requests are welcome. Include your device, Android version and reproduction steps. See [CONTRIBUTING.md](CONTRIBUTING.md).

If Shuguang helps with your location-related development, a **Star** helps others discover it.

## License

Project code is covered by the [MIT License](LICENSE). Bundled third-party SDKs remain subject to their own licenses and service terms.

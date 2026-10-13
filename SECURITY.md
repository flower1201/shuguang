# Security Policy

## Reporting

If you find a vulnerability in this project, open a private security advisory on GitHub or contact the repository owner.

## Secrets

Public source under `apktool/AndroidManifest.xml` uses **placeholders** for:

- Google Maps API key
- Baidu LBS API key
- AdMob Application ID

Before shipping a private or production build:

1. Put your own keys into the manifest
2. Restrict each key by package name / signing certificate / API in the vendor console
3. Rotate any key that was ever committed or shipped in an older APK

Release APKs may still embed keys that were present at build time. Treat published APKs as public.

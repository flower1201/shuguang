# Security Policy

## Reporting

If you find a vulnerability in this project, open a private security advisory on GitHub or contact the repository owner.

## Secrets

Public source under `apktool/AndroidManifest.xml` uses **placeholders** for:

- Google Maps API key
- Baidu LBS API key

The AdMob Application ID is Google's public **sample/test App ID** so that a source build can start without a private advertising configuration. An invalid placeholder makes MobileAdsInitProvider crash before the app opens. Replace the sample ID with your own before distribution.

For builds you distribute:

1. Supply your own keys through the ignored local map configuration described in README.md.
2. Restrict each key by package name / signing certificate / API in the vendor console.
3. Rotate keys if they are used without authorization, exposed outside their intended distribution, or cannot be properly restricted. Never package server-side secrets or signing private keys.

Release APKs embed their build-time client SDK keys. Client keys in an Android APK are extractable, so restrictions must be enforced by the service provider. The v1.3 APK uses its configured map keys; public source and CI builds retain placeholders. Release and CI builds use Debug signing and may have different certificates.

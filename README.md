# 曙光 (Shuguang)

Android 虚拟定位 / Mock Location 工具。

## 当前版本

- 应用名：曙光
- versionName：`曙光1.1`
- versionCode：`34`
- 包名：`com.mm.app.ybwwlkj`

安装包请从 [Releases](../../releases) 下载 `INSTALL-ME-shuguang.apk`。

## 安装说明

1. 从 Releases 下载 APK
2. 若手机上已有旧签名版本，请先卸载再安装
3. 在系统开发者选项中开启「模拟位置」/「选择模拟位置信息应用」，并指定本应用
4. 本 Release 使用 **Android Debug** 证书签名（便于自用分发）；正式商店分发请自行换正式签名

## 权限说明

应用需要定位相关权限，以及 `ACCESS_MOCK_LOCATION`（在开发者选项中授予模拟位置能力）。

## 安全提示

APK 内可能包含地图等第三方服务密钥。公开仓库后请尽快在对应控制台**轮换密钥**，并限制密钥可用包名/签名/API。

## License

MIT（见 [LICENSE](LICENSE)）
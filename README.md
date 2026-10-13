# 曙光 (Shuguang)

Android 虚拟定位 / Mock Location 工具。

## 当前版本

- 应用名：曙光
- versionName：`曙光1.1`
- versionCode：`34`
- 包名：`com.mm.app.ybwwlkj`

安装包请从 [Releases](../../releases) 下载 `INSTALL-ME-shuguang.apk`。

## 仓库内容

| 路径 | 说明 |
| --- | --- |
| `apktool/` | apktool 可重建工程（smali + 资源） |
| Releases | 预构建 APK |

公开源码中的地图 / 广告 Key 已替换为占位符，构建前请填入你自己的密钥：

- `YOUR_GOOGLE_MAPS_API_KEY`
- `YOUR_BAIDU_LBS_API_KEY`
- `ca-app-pub-XXXXXXXXXXXXXXXX~XXXXXXXXXX`

## 本地构建

依赖：JDK 17+、[apktool](https://apktool.org/)、[uber-apk-signer](https://github.com/patrickfav/uber-apk-signer)（或 apksigner）

```bash
apktool b apktool -o shuguang-unsigned.apk
java -jar uber-apk-signer.jar --apks shuguang-unsigned.apk --out dist/
```

安装前如遇签名冲突，先卸载旧版。本 Release 默认使用 Android Debug 证书（v2/v3）。

## 安装说明

1. 从 Releases 下载 APK，或自行构建签名
2. 系统开发者选项中开启模拟位置，并指定本应用

## License

MIT（见 [LICENSE](LICENSE)）
# 自定义轨迹扩展

`java/` 是可维护的 Java 源码，生成到 `apktool/smali_classes4/com/mm/app/loaction/route/`。
`stubs/` 仅描述原工程坐标转换工具的签名，不会编入 APK。百度 SDK 的编译依赖固定为 7.5.4，与 APK 自带版本一致。

## 行为

- 手动标定：地图依次点选，或输入 BD-09 坐标；按标定点顺序逐段直线运动。支持撤销最后一点、清空。
- 导航推荐：选择起点、终点、步行/驾车/骑行；使用百度返回的第一条推荐路线和每个路段的完整坐标。规划失败不会改成直线冒充推荐路线。
- 速度单位 km/h；启动时转换成 m/s。默认 5 km/h，可设置 0.1–300 km/h。
- 使用单调时钟计算已走距离；跨过拐点时保留剩余距离，暂停不累计时间，到达终点后停止前进。
- 复用已有 LocationService 的 GPS/network 提供器和 100 ms 更新循环。轨迹坐标在发布前通过原有 LocationUtils 转为 WGS84。
- 离开编辑页仍继续运行；返回可暂停、继续、停止。进程被系统终止后不会自行恢复移动。
- 编辑点位、路线类型和速度前需停止当前轨迹。单点定位操作会接回原定位控制。
- 地图 Key 未配置时可通过坐标添加和运行手动轨迹。底图和推荐路线需要配置匹配包名、签名的百度 Android Key。

## 构建与验证

需要 JDK 17+、Android SDK（platforms/android-* 和 cmdline-tools 或 build-tools）。
设置 `ANDROID_HOME` 或 `ANDROID_SDK_ROOT`；本机也会自动发现 Codex 预览环境的 SDK。

```powershell
.\scripts\build-route.ps1
.\scripts\test-route.ps1
.\scripts\build.ps1
```

首次编译从 Maven Central 下载固定版本的 SDK 编译依赖及 baksmali 到 `.tools/`；中间文件在 `.build/`，均不提交。
编译脚本只替换本扩展拥有的 smali 包。生成的 smali 应随 Java 源码一同提交，以保留原 apktool 重建方式。

本地地图配置可保存在已被 Git 忽略的 `.tools/local-map-keys.json`，键名为 `com.baidu.lbsapi.API_KEY` / `com.google.android.geo.API_KEY`。`build.ps1` 只把配置写入临时构建副本，公开源文件继续保留占位符。也可通过 `-MapConfig` 指定此格式的文件。

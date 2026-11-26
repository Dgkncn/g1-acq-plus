# G1 ACQ Plus (`v9.6.0`) — Google AI Pro (5TB) & Ultra (20TB / 30TB) 全平台隐藏优惠终极工具箱（iOS 小火箭模块 + Android MuMu 脚本强拉）

> **开源出处与致谢（Attribution & Credits）**
> - **iOS 模块部分**基于开源项目 [**`crhywun/g1-acq`**](https://github.com/crhywun/g1-acq)（[@crhywun](https://github.com/crhywun)）扩展构建，同步了 `com.google.gemini.*` 命名空间引擎与本机可视化规则编辑器架构；感谢 [@duwqijlk](https://github.com/duwqijlk) 在 [PR #8](https://github.com/crhywun/g1-acq/pull/8) 中贡献的 **`com.google.gemini.2tb.ai.m.3month_ip_99p`** 实测方案。
> - **Android 脚本强拉部分**位于本仓库 [**`android-mumu-scripts/`**](android-mumu-scripts/) 目录，基于 **MuMu 模拟器 (Root) + Frida + Google Play `BillingClient`** 原生接口直接向 Google Play 商店强拉隐藏 \$0 免费试用与 1 折收银台。

---

## ⚠️ 核心必读：iOS 小火箭改写 vs. Android 脚本强拉的本质区别（严禁混用 SKU！）

我们在逆向 iOS 正版 `GoogleOne.ipa` / `GoogleGemini.ipa` 与 Android `com.google.android.apps.subscriptions.red.apk` 后证实：**iOS Apple App Store (`StoreKit`) 与 Android Google Play (`BillingClient`) 的后台商品目录完全隔离**！

| 对比维度 | 🍎 **一、iOS 端（Shadowrocket 小火箭网页响应改写）** | 🤖 **二、Android 端（MuMu 模拟器 + Frida 脚本强拉 `BillingClient`）** |
| :--- | :--- | :--- |
| **底层结算通道** | **Apple App Store (`StoreKit 2`)** | **Google Play Store (`BillingClient` 原生内购接口)** |
| **专属存活 SKU** | • **`com.google.gemini.2tb.ai.m.3month_ip_99p`**（**Pro 5TB 前 3 个月 99% OFF**，美区 **\$0.29/月**、印区 **\$0.11/月=0.05折**、印尼 **0.1折**）<br>• **`g1.ios.30tb.m`**（**真 Ultra 30TB 20x**，土区 Apple ID **₺2,949.99/月 ≈ ¥585/月**）<br>• **`g1.ios.20tb.m`**（**真 Ultra 20TB 5x**，土区 Apple ID **₺1,989.99/月 ≈ ¥395/月**） | • **`g1.2tb.ai.subs_variant`**（**Pro 5TB 12 个月 \$0 免费试用** + 3 个 6 个月免费 Offer，**最高可叠加至 24 个月 \$0 免费！**）<br>• **`g1.2tb.ai.12months_eft`** 及 **`.1` ~ `.20`**（**21 个独立 12 个月 \$0 免费池**）<br>• **`g1.2tb.ai.6months_eft.1` ~ `.26`**（**26 个独立 6 个月 \$0 免费池**）<br>• **`g1.2tb.ai.3months_eft.1` ~ `.30`**（**30 个独立 3 个月 \$0 免费池**）<br>• **`g1.2tb.ai.12months_ip_90p` / `75p`**（**全年 12 个月 \$1.99/月 或 \$4.99/月**） |
| **付款方式要求** | 绑定在 **iPhone App Store（媒体与购买项目）** 上的 Apple ID 付款方式或礼品卡（不校验 Google 账号绑卡） | 绑定在 **Google Play 账号** 上的外币卡（Visa / MasterCard）或当地电子钱包 |
| **跨平台混用后果** | ❌ 如果把 Android 专属的 `g1.2tb.ai.12months_eft` 填进 iOS 小火箭，Apple Store 查无此 ID，点击必报 **`购买交易未完成，请尝试重新选择方案`**！ | ❌ 如果把 iOS 专属的 `com.google.gemini.*` 或 `g1.ios.*` 填进 Android 脚本，Google Play `BillingClient` 会返回 `0 offers`！ |

---

# 🍎 第一部分：iOS 端（Shadowrocket 小火箭）可订阅方案与教程

## 1. Shadowrocket（小火箭）模块安装地址

在 iPhone 的 Shadowrocket「模块（Modules）」中点击右上角 `+` 添加以下地址：

```text
https://raw.githubusercontent.com/Dgkncn/g1-acq-plus/main/g1-acq-v8.sgmodule
```
*(秒过缓存版本直链：`https://raw.githubusercontent.com/Dgkncn/g1-acq-plus/v9.6.0/g1-acq-v8.sgmodule`)*

## 2. iOS 端 HTTPS 解密证书开启与操作步骤（4 步搞定）
1. **开启 HTTPS 解密并装证书**：
   - 打开小火箭 → 底部 **「配置」** → 点击当前配置右侧蓝色 **`(i)`** → 进入 **「HTTPS 解密」** → 开启顶部的「HTTPS 解密」开关 → 点击 **「生成新的 CA 证书」→「安装证书」** 跳转到系统下载描述文件。
2. **安装并信任根证书（必做）**：
   - 打开 iPhone **系统设置 → 已下载描述文件** 完成安装；
   - 打开 iPhone **系统设置 → 通用 → 关于本机 → 滑到底部「证书信任设置」**，把 `Shadowrocket` 根证书右侧的开关打开（变成绿色）。
3. **打开本机可视化管理与调试面板**：
   - 用 Safari 访问：**[https://one.google.com/g1-sku-report](https://one.google.com/g1-sku-report)**（顶部显示 **`本机脚本已接管 · v9.6.0`**）。
   - **装上模块默认已启用第 1 套存活方案（`$0.29 / 1元 / 0.05折开 Pro 5TB`）**，无需任何额外设置！如果想切换土区 Ultra 老档，点击对应卡片的「应用模板」即可。
4. **进 App 调起 Apple Store 收银台**：
   - 从手机后台**彻底上滑划掉 Google One App**（清除旧缓存），重新打开进入升级方案页 → 点击 **Ultra 5x (20TB)** 的订阅按钮 → 弹出 **Apple App Store 系统付款框**核对价格后确认即可！

## 3. iOS 端 Pro / Ultra 方案存活状态实测表（2026-11-26 真机验证，失效方案已划线）

| 存活状态 | iOS 模板名称 | 源 SKU → 目标 SKU | 2026-11-26 iPhone 真机实测结果 |
| :--- | :--- | :--- | :--- |
| ✅ **100% 存活（默认启用）** | 🔥 **0.05折 / \$0.29 / 1元开 Pro 5TB** (`pro-1yuan`) | `g1.ios.20tb.m.v2` → **`com.google.gemini.2tb.ai.m.3month_ip_99p`** | **实测弹窗成功**！进升级页点 **Ultra 5x (20TB)**，Apple 弹窗显示 **`Google AI Pro (5 TB)`**：<br>• 🇺🇸 美区 Apple ID：**US\$0.29/月 × 3个月**（约 ¥2/月）<br>• 🇮🇳 印区 Apple ID：**₹10/月 × 3个月**（≈ \$0.11/月，**0.05 折**）<br>• 🇮🇩 印尼区 Apple ID：**Rp 3,000/月 × 3个月**（≈ \$0.18/月，**0.1 折**）<br>• 🇸🇬 新加坡 Apple ID：**S\$0.48/月 × 3个月**（**0.17 折**） |
| ✅ **100% 存活（备选槽位）** | 🔥 **0.05折 / \$0.29 / 1元开 Pro 5TB** (`pro-1yuan-from-2tb`) | `g1.ios.2tb.ai.m` → **`com.google.gemini.2tb.ai.m.3month_ip_99p`** | **实测存活**！仅单条改写 Pro 按月槽位（不改年付避免同 ID 冲突），进升级页选「按月」点 **Pro 5TB** 即可弹窗 |
| ✅ **100% 存活（真 Ultra 唯一低价）** | 🇹🇷 **土区真 Ultra 30TB (20x) & 20TB 老定价直购** (`tr-ultra-legacy`) | `g1.ios.30tb.ai.pro.m` → **`g1.ios.30tb.m`**<br>`g1.ios.20tb.m.v2` → **`g1.ios.20tb.m`** | **实测弹窗成功**！需配合 **土区 Apple ID**：<br>• **真 Ultra 30TB (20x)**：**₺2,949.99/月（≈ ¥585/月，3 折）**<br>• **真 Ultra 20TB (5x)**：**₺1,989.99/月（≈ ¥395/月，4.1 折）**<br>*(注：若用美区 Apple ID 点此模板，弹窗会显示美区老档原价 \$99.99)* |
| ⚠️ **可弹窗但促销已停** | ~~💎 2TB / Pro 5TB · 全年 12个月 1折 (90p)~~ (`pro-12months-90p`) | ~~`g1.ios.2tb.ai.m` → `g1.2tb.ai.12months_ip_90p`~~ | **iOS 端实测促销已关**：商品 ID 在 Apple Store 仍存在可弹窗，但首年 \$1.99 促销属性已被关闭，iOS 弹窗直接回退显示原价 **US\$19.99/月**（Android Play 端仍可用） |
| ❌ **已拉闸下架** | ~~⚡ 真 Ultra 20TB / 30TB · 三个月 2.5折 (75p)~~ (`ultra-75p`) | ~~`g1.ios.20tb.m.v2` → `g1.20tb.3months_ip_75p.acq`~~<br>~~`g1.ios.30tb.ai.pro.m` → `g1.ai.ultra.3months_ip_75p.acq`~~ | **实测已拉闸**：Apple Store 已下架 `.acq` 75p 商品，点击直接报 `购买交易未完成` |
| ❌ **已拉闸下架** | ~~🎁 真 Ultra 20TB / 30TB · 1个月 \$0 免费试用~~ (`ultra-1m-free`) | ~~`g1.ios.20tb.m.v2` → `g1.20tb.1month_eft.acq`~~<br>~~`g1.ios.30tb.ai.pro.m` → `g1.ai.ultra.1month_eft.acq`~~ | **实测已拉闸**：iOS 端点击报 `购买交易未完成` |
| ❌ **已拉闸下架** | ~~⚡ 真 Ultra 20TB / 30TB · 三个月 1折 (90p)~~ | ~~`g1.20tb.3months_ip_90p.acq` / `g1.ai.ultra.3months_ip_90p.acq`~~ | **实测已拉闸**：iOS 端与 Google Play 端均已下架 |

---

# 🤖 第二部分：Android 端（MuMu 模拟器 + Frida 脚本强拉 `BillingClient`）完整教程

> 📁 **完整脚本目录**：已打包在本仓库的 [**`android-mumu-scripts/`**](android-mumu-scripts/) 文件夹中，下载本仓库到本地即可双击运行！

## 1. 为什么 Android 端能直接白嫖 **12 个月 ~ 24 个月 \$0 免费 Google AI Pro (5 TB)**？
- Google 在 Android 端的 Google Play 结算库（`BillingClient`）里，藏着大量页面上完全不展示的隐藏商品变体（如 `g1.2tb.ai.subs_variant`、`g1.2tb.ai.12months_eft` 以及 76 个 OEM 独立编号池 `.1` ~ `.30`）。
- 我们的 [`android-mumu-scripts/ultra0.py`](android-mumu-scripts/ultra0.py) 脚本通过 **Frida 注入 Google One 进程**，在内存中直接调用 `BillingClient.queryProductDetailsAsync` 拿出隐藏的 `$0.00` Offer Token，并在主线程直接执行 `launchBillingFlow` **强行拉起 Google Play 原生 0 元收银台**！

## 2. 准备工作（MuMu 模拟器 + 一键环境安装）

### 第一步：配置 MuMu 模拟器 12
1. 在电脑上安装并打开 **MuMu 模拟器 12**。
2. 点击模拟器右上角菜单 → **「设置中心」**：
   - 在 **「其他」**（或「常规」）中勾选开启 **「手机 ROOT 权限」**；
   - 在 **「磁盘」** 中选择 **「可写系统盘」**（可选，推荐开启），保存并重启模拟器。
3. 在模拟器中安装/开启 **Google Play 商店** 与 **Google One App**（`com.google.android.apps.subscriptions.red`），登录你要开通会员的 Google 账号（该账号需已绑定付款方式且当前无活跃 Google One 订阅）。

### 第二步：双击运行 `一键安装环境.bat`
进入本仓库的 [**`android-mumu-scripts/`**](android-mumu-scripts/) 目录，双击 [**`一键安装环境.bat`**](android-mumu-scripts/一键安装环境.bat)（或运行 `python setup_env.py`）：
- 脚本会自动完成：
  1. 检查本地 Python 环境（3.10+）；
  2. 自动安装兼容的 **`frida==16.5.9`**；
  3. 自动寻找 MuMu 模拟器自带的 `adb.exe` 并连接 `127.0.0.1:16384`（或 `emulator-5554`）；
  4. 自动向模拟器推送并启动 `frida-server`，推送辅助计费模块并完成全绿自检！

## 3. Android 端一键双击脚本使用指南（位于 `android-mumu-scripts/`）

环境自检全绿后，直接按你的需求双击以下 `.bat` 脚本，模拟器屏幕上就会自动弹出 Google Play 收银台：

### 🅰️ 方案一：\$0 免费白嫖 Google AI Pro (5 TB) 12 个月 ~ 24 个月（首选！）
1. **先查当前账号所有可用免费/折扣资格（零风险不下单）**：
   - 双击 [**`03_查询当前账号所有可用免费与折扣Offer.bat`**](android-mumu-scripts/03_查询当前账号所有可用免费与折扣Offer.bat)
   - 或命令行执行：
     ```bash
     python query_sku.py g1.2tb.ai.subs_variant g1.2tb.ai.12months_eft g1.2tb.ai.18months_eft g1.play.2tb.ai.student
     ```
2. **第 1 步：直拉 12 个月 \$0 免费 Google AI Pro (5 TB) 收银台**：
   - 双击 [**`01_Pro5TB_免费12个月_直拉收银台.bat`**](android-mumu-scripts/01_Pro5TB_免费12个月_直拉收银台.bat)
   - 模拟器会自动打开 Google One 并弹出 Google Play 收银台：确认显示 **「今天 US\$0.00 / 12 个月免费试用」** 后点击 **「订阅」**！
3. **第 2 步（进阶叠加）：在 12 个月免费基础上再叠加 +6 个月（累计 18 ~ 24 个月 \$0 免费）**：
   - 第 1 步开通成功后，双击 [**`02_Pro5TB_免费叠加6个月_可叠至24个月.bat`**](android-mumu-scripts/02_Pro5TB_免费叠加6个月_可叠至24个月.bat)
   - **叠加原理**：脚本会自动从 Google Play 的 `library.db` 读取你刚开通的 12 个月 `purchaseToken`，并通过 `SubscriptionUpdateParams.setOldPurchaseToken(旧Token).setReplaceProrationMode(5)` 调用 `g1.2tb.ai.subs_variant` 下的另外 3 个独立半年免费 Offer（`6months-eft` / `6months-eft-2` / `6months-eft-ss-2026`），将剩余天数无损折算顺延至 **18 个月（546 天）甚至 24 个月 \$0 免费**！

### 🅱️ 方案二：当普通免费档没资格时，调用新挖出的「76 个 OEM 独立编号免费池」！
我们在 2026-11-26 对 `BillingClient` 进行深度爆破，发现了 **76 个带 `.1` ~ `.30` 数字后缀的 OEM 独立免费试用 SKU**（每个编号在 Google Play 拥有独立的试用资格计数器！）。直接在 `android-mumu-scripts/` 目录下打开终端运行以下命令即可强制拉起任意一个独立池的 0 元收银台：

```bash
# 1. 强拉 20 个独立的「12 个月 $0 免费 Pro 5TB」OEM 池（可把末尾 .1 换成 .1 到 .20 任意数字）
python ultra0.py --account "current@device" --no-add --force --sku g1.2tb.ai.12months_eft.1

# 2. 强拉 26 个独立的「6 个月 $0 免费 Pro 5TB」OEM 池（可把末尾 .1 换成 .1 到 .26 任意数字）
python ultra0.py --account "current@device" --no-add --force --sku g1.2tb.ai.6months_eft.1

# 3. 强拉 30 个独立的「3 个月 $0 免费 Pro 5TB」OEM 池（如 .22 为小米15国际版 3个月免费池，可换 .1 到 .30）
python ultra0.py --account "current@device" --no-add --force --sku g1.2tb.ai.3months_eft.22
```

### 🅲 方案三：拿不到免费试用的老号，强拉 Android 端 1 折 / 0.5 折付费特惠收银台
对于曾经订阅过、完全无法享受 `eft` 免费试用的老 Google 账号，可直接双击以下脚本强拉 Android Play 的 `introprice` 折扣收银台：
- **连续 12 个月 1 折（\$1.99/月 × 12 = \$23.88/年）**：双击 [**`1_Pro5TB_每个月1.99_12个月.bat`**](android-mumu-scripts/1_Pro5TB_每个月1.99_12个月.bat)（若部分区 90p 已关，可把脚本内的 `90p` 改为 `g1.2tb.ai.12months_ip_75p` 享 \$4.99/月 × 12）
- **连续 3 个月 1 折（\$1.99/月 × 3）**：双击 [**`2_Pro5TB_每个月1.99_3个月.bat`**](android-mumu-scripts/2_Pro5TB_每个月1.99_3个月.bat)
- **首月 0.5 折（\$0.99/首月）**：双击 [**`3_Pro5TB_1个月0.99.bat`**](android-mumu-scripts/3_Pro5TB_1个月0.99.bat)

### 🅳 方案四：已开通 AI Pro 账号的「好友裂变 4 个月免费 AI Pro 邀请器」(`ReferralToolActivity`)
只要你的账号已经通过上述 iOS（\$0.29/月）或 Android（3个月/12个月免费）开通了 Google AI Pro，在 MuMu 模拟器连接 ADB 后执行以下一行命令，即可强行调起 Google One 隐藏的**好友裂变 4 个月免费 AI Pro 邀请面板**：
```bash
adb shell "su -c 'am start -n com.google.android.apps.subscriptions.red/com.google.android.apps.subscriptions.red.LauncherActivity -a android.intent.action.VIEW -d \"https://one.google.com/referral\"'"
```
每个 Pro 账号每年可生成 **3 条独立的「4 个月 Google AI Pro \$0 免费试用」邀请链接**，发给任意其他 Google 账号点击即可直接免门槛领取 4 个月 AI Pro！

---

## 4. Android Google Play 端 Pro / Ultra 全量隐藏 SKU 存活状态表（2026-11-26 实测）

| 存活状态 | Android Google Play 隐藏 SKU | Offer ID | 实测优惠内容与价格 |
| :--- | :--- | :--- | :--- |
| ✅ **100% 存活（主力白嫖）** | **`g1.2tb.ai.subs_variant`** | `12months-eft` / `6months-eft` / `6months-eft-2` / `6months-eft-ss-2026` | **Pro 5TB：12 个月 \$0 免费 + 3 个 6 个月 \$0 免费**（支持 `--stack` 叠加至 24 个月免费） |
| ✅ **100% 存活（全新挖出）** | **`g1.2tb.ai.12months_eft`** 及 **`.1` ~ `.20`** | `eft-12months` | **Pro 5TB：共 21 个独立的 12 个月 \$0 免费试用池 (`P1Y`)** |
| ✅ **100% 存活（全新挖出）** | **`g1.2tb.ai.6months_eft`** 及 **`.1` ~ `.26`** | `eft-6months` | **Pro 5TB：共 27 个独立的 6 个月 \$0 免费试用池 (`P6M`)** |
| ✅ **100% 存活（全新挖出）** | **`g1.2tb.ai.3months_eft`** 及 **`.1` ~ `.30`** | `eft-3months` | **Pro 5TB：共 31 个独立的 3 个月 \$0 免费试用池 (`P3M`)**（`.22` 为小米 15 国际版池） |
| ✅ **存活（特定资格）** | **`g1.2tb.ai.18months_eft`** / **`15months_eft`** | `eft-18months` / `eft-15months` | **Pro 5TB：18 个月 / 15 个月 \$0 免费试用** |
| ✅ **存活（学生 Play 档）** | **`g1.play.2tb.ai.student`** | `eft-12mo` | **Pro 5TB：学生通道 12 个月 \$0 免费试用 (`P1Y`)** |
| ✅ **存活（老号长期折扣）** | **`g1.2tb.ai.12months_ip_75p`** / **`12months_ip_90p`** | `introprice` / `ip-12mo-90p` | **Pro 5TB：连续 12 个月 2.5 折（\$4.99/月）或 1 折（\$1.99/月）** |
| ✅ **存活（老号短期折扣）** | **`g1.2tb.ai.3months_ip_90p.acq`** / **`1month_ip_95p.acq`** | `introprice` | **Pro 5TB：前 3 个月 \$1.99/月 或 首月 \$0.99** |
| ✅ **存活（大容量半价 Pro）** | **`g1.10tb`** | 基础月付 | **Google AI Pro (10 TB)**：\$49.99/月（比 Ultra 20TB 便宜一半，享全套 AI Pro 权益） |
| ❌ **已拉闸下架** | ~~`g1.ai.ultra.3months_ip_90p.acq` / `75p.acq`~~ | ~~`introprice`~~ | **Ultra 30TB (20x)：前 3 个月 1 折 (\$19.99) / 2.5 折 (\$49.99) 已在 Play 端下架** |
| ❌ **已拉闸下架** | ~~`g1.20tb.3months_ip_90p.acq` / `75p.acq` / `80p`~~ | ~~`introprice`~~ | **Ultra 20TB (5x)：前 3 个月 1 折 (\$9.99) / 2 折 / 2.5 折 已在 Play 端下架** |

---

## 五、免责声明与出处标注

- 响应中替换商品 ID 或通过 `BillingClient` 拉起收银台，最终是否展示试用、订阅周期与扣款金额**一律以 Apple App Store / Google Play 原生收银台弹窗显示为准**。免费试用或首期特惠到期前请务必在对应商店的「订阅管理」中取消自动续费。
- **上游项目致谢**：[https://github.com/crhywun/g1-acq](https://github.com/crhywun/g1-acq)（[@crhywun](https://github.com/crhywun)、[@duwqijlk](https://github.com/duwqijlk)、[@cehomecambodia-lang](https://github.com/cehomecambodia-lang)）。

---

<div align="center">

# 📢 **有问题联系推特：[https://x.com/zixunclub](https://x.com/zixunclub)**

[![Twitter Follow](https://img.shields.io/badge/X%20(Twitter)-%40zixunclub-000000?style=for-the-badge&logo=x&logoColor=white)](https://x.com/zixunclub)

</div>

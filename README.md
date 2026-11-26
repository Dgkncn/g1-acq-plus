# G1 ACQ Plus (`v9.6.0`) — Google AI Pro & Ultra (iOS / Android) 实测存活优惠与隐藏 SKU 终极模块

> **开源出处与致谢（Attribution & Credits）**
> - 本项目基于开源项目 [**`crhywun/g1-acq`**](https://github.com/crhywun/g1-acq)（作者：[@crhywun](https://github.com/crhywun)）扩展构建，同步了 `com.google.gemini.*` 命名空间引擎与本机可视化规则编辑器架构。
> - 感谢 [@duwqijlk](https://github.com/duwqijlk) 在上游 [PR #8](https://github.com/crhywun/g1-acq/pull/8) 中贡献的 **「1 元 / 0.05 折开 Pro」**（`com.google.gemini.2tb.ai.m.3month_ip_99p`）实测方案，以及 [@cehomecambodia-lang](https://github.com/cehomecambodia-lang) 在 [PR #3](https://github.com/crhywun/g1-acq/pull/3) 中贡献的早期 Ultra 映射思路。
> - **本分支（`v9.6.0`）核心特性（仅专注 Google AI Pro 5TB 与 Google AI Ultra 20TB/30TB）**：
>   1. **✅ 装上即用（默认单条无冲突映射）**：默认仅将 `g1.ios.20tb.m.v2` 精确改写为 **`com.google.gemini.2tb.ai.m.3month_ip_99p`**（彻底解决多槽位同 ID 冲突导致的 `购买交易未完成` 报错）。美区 Apple ID 实测弹出 **\$0.29/月 × 3 个月**，印区 **₹10/月（≈ \$0.11/月 = 0.05 折）**，印尼区 **Rp 3,000/月（0.1 折）**！
>   2. **🇹🇷 土区真 Ultra 20x (30TB / 20TB) 老定价唯一存活低价通道 (`tr-ultra-legacy`)**：剥离 `.ai.pro` 与 `.v2` 后缀，调用 Apple Store 未涨价老 SKU（30TB `g1.ios.30tb.m` = **₺2,949.99/月** 约 3 折；20TB `g1.ios.20tb.m` = **₺1,989.99/月** 约 4.1 折）。
>   3. **👑 Android Google Play 端全新爆破出的 76+ 个 OEM 独立编号免费试用池**：除 `g1.2tb.ai.18months_eft` / `12months_eft` / `subs_variant` 外，最新扫出 **`g1.2tb.ai.12months_eft.1` ~ `.20`（20 个独立 12 个月 \$0 免费试用 SKU）**、**`g1.2tb.ai.6months_eft.1` ~ `.26`（26 个 6 个月免费 SKU）**、**`g1.2tb.ai.3months_eft.1` ~ `.30`（30 个 3 个月免费 SKU）**。
>   4. **🛠️ 内置 iOS 实时抓包调试日志面板 + 一键导出 TXT 文本 (`g1-debug-log.txt`) + 10 槽位批量探测器**，100% 纯本机运行，零外部 Webhook 上报。

---

## 一、Shadowrocket（小火箭）模块安装地址

在 Shadowrocket「模块（Modules）」中点击右上角添加以下地址：

```text
https://raw.githubusercontent.com/Dgkncn/g1-acq-plus/main/g1-acq-v8.sgmodule
```
*(秒过缓存版本直链：`https://raw.githubusercontent.com/Dgkncn/g1-acq-plus/v9.6.0/g1-acq-v8.sgmodule`)*

### 安装与使用步骤
1. 在小火箭「模块」中添加并勾选启用上方模块。
2. 进入小火箭 **配置 → 当前配置右侧 `(i)` → HTTPS 解密**，开启 HTTPS 解密并安装、信任 Shadowrocket 根证书（确保**系统设置 → 通用 → 关于本机 → 证书信任设置**中已打开根证书完全信任开关）。
3. 打开 **Safari** 访问本机 SKU 管理与调试页：[https://one.google.com/g1-sku-report](https://one.google.com/g1-sku-report)
   - 页面顶部显示 **`本机脚本已接管 · v9.6.0`** 即表示模块生效。
   - 默认已启用 **✅ `0.05折 / $0.29 / 1元开 Pro 5TB（仅改20TB）`**，也可在「预制映射模板」中点击任意模板的 **「应用模板」** 一键切换，或点击顶部的 **「📄 导出日志到 TXT 文本」** 导出完整抓包诊断报告。
4. 从手机后台**彻底划掉 Google One App / Google App**，重新打开进入升级方案页，点击 **Ultra 5x (20TB)** 的订阅按钮即可弹出 Apple App Store 收银台！

---

## 二、2026-11-26 实测：iOS 端 Pro / Ultra 方案存活状态一览（失效方案已划线标注）

| 状态 | 模板名称 | 源 SKU → 目标 SKU | 2026-11-26 真机实测结果 |
| :--- | :--- | :--- | :--- |
| ✅ **100% 存活（默认启用）** | 🔥 **0.05折 / \$0.29 / 1元开 Pro 5TB** (`pro-1yuan`) | `g1.ios.20tb.m.v2` → **`com.google.gemini.2tb.ai.m.3month_ip_99p`** | **实测弹窗成功**！进升级页点 **Ultra 5x (20TB)**，Apple 弹窗显示 **`Google AI Pro (5 TB)`**：美区 **US\$0.29/月 × 3个月**，印区 **₹10/月 (\$0.11=0.05折)**，印尼 **Rp3,000/月 (0.1折)**，新加坡 **S\$0.48/月 (0.17折)** |
| ✅ **100% 存活（备选槽位）** | 🔥 **0.05折 / \$0.29 / 1元开 Pro 5TB** (`pro-1yuan-from-2tb`) | `g1.ios.2tb.ai.m` → **`com.google.gemini.2tb.ai.m.3month_ip_99p`** | **实测存活**！仅单条改写 Pro 按月槽位（不改年付避免同 ID 冲突），进升级页选「按月」点 **Pro 5TB** 即可弹窗 |
| ✅ **100% 存活（真 Ultra 唯一低价）** | 🇹🇷 **土区真 Ultra 30TB (20x) & 20TB 老定价直购** (`tr-ultra-legacy`) | `g1.ios.30tb.ai.pro.m` → **`g1.ios.30tb.m`**<br>`g1.ios.20tb.m.v2` → **`g1.ios.20tb.m`** | **实测弹窗成功**！需配合 **土区 Apple ID**：真 Ultra 30TB (20x) 仅 **₺2,949.99/月（≈¥585/月，3折）**，20TB (5x) 仅 **₺1,989.99/月（≈¥395/月，4.1折）**（美区 Apple ID 弹窗显示美区原价） |
| ⚠️ **可弹窗但促销已关** | ~~💎 2TB / Pro 5TB · 全年 12个月 1折 (90p)~~ (`pro-12months-90p`) | ~~`g1.ios.2tb.ai.m` → `g1.2tb.ai.12months_ip_90p`~~ | **实测促销已停**：商品 ID 在 Apple Store 仍存在可弹窗，但首年 \$1.99 促销属性已被关闭，弹窗直接显示原价 **US\$19.99/月** |
| ❌ **已拉闸下架** | ~~⚡ 真 Ultra 20TB / 30TB · 三个月 2.5折 (75p)~~ (`ultra-75p`) | ~~`g1.ios.20tb.m.v2` → `g1.20tb.3months_ip_75p.acq`~~<br>~~`g1.ios.30tb.ai.pro.m` → `g1.ai.ultra.3months_ip_75p.acq`~~ | **实测已拉闸**：Apple Store 已下架 `.acq` 75p 商品，点击直接报 `购买交易未完成` |
| ❌ **已拉闸下架** | ~~🎁 真 Ultra 20TB / 30TB · 1个月 \$0 免费试用~~ (`ultra-1m-free`) | ~~`g1.ios.20tb.m.v2` → `g1.20tb.1month_eft.acq`~~<br>~~`g1.ios.30tb.ai.pro.m` → `g1.ai.ultra.1month_eft.acq`~~ | **实测已拉闸**：iOS 端点击报 `购买交易未完成` |
| ❌ **已拉闸下架** | ~~⚡ 真 Ultra 20TB / 30TB · 三个月 1折 (90p)~~ | ~~`g1.20tb.3months_ip_90p.acq` / `g1.ai.ultra.3months_ip_90p.acq`~~ | **实测已拉闸**：iOS 端与 Google Play 端均已下架 |

---

## 三、`com.google.gemini.2tb.ai.m.3month_ip_99p` 各区 Apple Store 实测价格表（✅ 存活）

通过「**99% OFF (`3month_ip_99p` 单条改写)**」叠加不同国家/地区的 **Apple ID**（只需在 iPhone `App Store` 切换媒体与购买项目账号，无需换 Google 账号地区），前 3 个月实付价格如下：

| Apple ID 国家/地区 | 该区 AI Pro 常规月费 | 改写 `3month_ip_99p` 后前三月月费 | 折合美元 / 人民币 | 相对于美区 \$19.99/月 的真实折扣 |
| :--- | :--- | :--- | :--- | :--- |
| 🇮🇳 **印度区 (IN)** | `₹ 1,950 / 月` | **`₹ 9 ~ ₹ 10 / 月`** | **≈ \$0.11 / 月（约 ¥0.80 / 月）** | **🔥 0.05 折** |
| 🇮🇩 **印尼区 (ID)** | `Rp 309,000 / 月` | **`Rp 3,000 / 月`** | **≈ \$0.18 / 月（约 ¥1.35 / 月）** | **🔥 0.09 折（0.1 折）** |
| 🇹🇷 **土耳其区 (TR)** | `₺ 869.99 / 月` (旧档 `₺ 539.99`) | **`₺ 5.39 ~ ₺ 8.69 / 月`** | **≈ \$0.16 ~ \$0.25 / 月（约 ¥1.2 ~ ¥1.8）** | **🔥 0.08 ~ 0.12 折** |
| 🇳🇬 **尼日利亚 (NG)** | `₦ 28,500 / 月` | **`₦ 285 / 月`** | **≈ \$0.17 / 月（约 ¥1.25 / 月）** | **🔥 0.085 折** |
| 🇪🇬 **埃及区 (EG)** | `EGP 939.99 / 月` | **`EGP 9.40 / 月`** | **≈ \$0.19 / 月（约 ¥1.38 / 月）** | **🔥 0.095 折** |
| 🇵🇰 **巴基斯坦 (PK)** | `Rs 5,600 / 月` | **`Rs 56 / 月`** | **≈ \$0.20 / 月（约 ¥1.45 / 月）** | **🔥 0.10 折** |
| 🇺🇸 **美区 (US)** | `US$ 19.99 / 月` | **`US$ 0.29 / 月`（真机已弹窗验证）** | **\$0.29 / 月（约 ¥2.08 / 月）** | **🔥 0.14 折** |
| 🇸🇬 **新加坡区 (SG)** | `S$ 28.90 / 月` | **`S$ 0.48 / 月`** | **≈ \$0.35 / 月（约 ¥2.55 / 月）** | **🔥 0.17 折** |

---

## 四、深扒全平台（Android Google Play & Web & iOS）仍可利用的 Pro / Ultra 隐藏通道

除了上面 iOS 端存活的 **2 条通道**外，我们通过深度扫描 `BillingClient` 与逆向 APK / IPA，还挖出了以下 **仅针对 Google AI Pro (5TB / 10TB) 与 Google AI Ultra (20TB / 30TB)** 的存活隐藏优惠池（注意：以下 `g1.2tb.ai.*` 编号为 **Android Google Play `BillingClient` 专属商品**，需在 Android / 模拟器端通过 `ultra0.py` / `query_sku.py` 调起，不可直接填入 iOS `StoreKit`）：

### 1. Android Google Play 端：Google AI Pro (5 TB) 76+ 个独立 OEM 免费试用池（✅ 100% 存活）
当一个账号或设备用完了通用试用来拉起普通 `g1.2tb.ai` 时，Google Play 后台实际上还藏着 **按机型/合作商编号（`.1` ~ `.30`）独立分配的 76 个免费试用商品 ID**！只要其中一个没领过，就能直接弹 **\$0.00 免费试用**：

| 隐藏 SKU 家族 (Android Google Play) | 存活编号范围 | Offer ID | 实测优惠内容 | 状态 |
| :--- | :--- | :--- | :--- | :--- |
| **`g1.2tb.ai.subs_variant`** | 单一主变体（含 4 个独立免费 Offer） | `12months-eft` / `6months-eft` / `6months-eft-2` / `6months-eft-ss-2026` | **12 个月 \$0 免费试用** 或 **3 种不同的 6 个月 \$0 免费试用** | ✅ **100% 存活（已实测连开多单）** |
| **`g1.2tb.ai.12months_eft`** | 主档 + **`.1` ~ `.20`（共 21 个独立 SKU！）** | `eft-12months` | **12 个月 \$0 免费试用 (`P1Y`)**（对应 Pixel 9 Pro / Chromebook Plus 等 20 个 OEM 独立池） | ✅ **100% 存活** |
| **`g1.2tb.ai.18months_eft`** / **`15months_eft`** | 主档 | `eft-18months` / `eft-15months` | **18 个月 / 15 个月 \$0 免费试用** | ✅ **存活（需特定资格）** |
| **`g1.play.2tb.ai.student`** | 学生通道专属 Play SKU | `eft-12mo` | **12 个月 \$0 免费试用 (`P1Y`)** | ✅ **存活** |
| **`g1.2tb.ai.6months_eft`** | 主档 + **`.1` ~ `.26`（共 27 个独立 SKU！）** | `eft-6months` | **6 个月 \$0 免费试用 (`P6M`)**（对应三星 S24/S25、小米等 26 个 OEM 独立池） | ✅ **100% 存活** |
| **`g1.2tb.ai.3months_eft`** | 主档 + **`.1` ~ `.30`（共 31 个独立 SKU！）** | `eft-3months` | **3 个月 \$0 免费试用 (`P3M`)**（如 `.22` 实测为 `xiaomi15_global_aip_3month_eft` 小米 15 国际版 3 个月免费池！） | ✅ **100% 存活** |
| **`g1.2tb.ai.2months_eft`** / **`g1.play.2tb.ai`** | 主档 | `eft-2months` / `eft-3mo` | **2 个月 / 3 个月 \$0 免费试用** | ✅ **100% 存活** |

### 2. Android Google Play 端：Google AI Pro (5 TB) 存活折扣档（无免费资格老号可用）

| 隐藏 SKU (Android Google Play) | Offer ID | 实测优惠内容 | 状态 |
| :--- | :--- | :--- | :--- |
| **`g1.2tb.ai.12months_ip_75p`** | `introprice` | **连续 12 个月 2.5 折（\$4.99/月 × 12 个月）** | ✅ **Android 端存活** |
| **`g1.2tb.ai.3months_ip_50p`** / **`2months_ip_50p`** | `ip-3months-50p` / `ip-2months-50p` | **前 3 个月 / 2 个月 5 折半价（\$9.99/月）** | ✅ **Android 端存活** |
| **`g1.10tb`** | 基础月付 | **Google AI Pro (10 TB)**：比 Ultra 20TB 便宜一半（\$49.99/月），同样享有全套 AI Pro 权益 | ✅ **存活** |

### 3. Google AI Pro 会员裂变通道：`ReferralToolActivity`（好友裂变 4 个月免费 AI Pro）
- **触发方式**：任意已开通 Google AI Pro（哪怕是 3 个月小米免费试用或 \$0.29 iOS 试用号）的账号，在 Android Google One 客户端拉起 `com.google.android.apps.subscriptions.red.LauncherActivity` / `ReferralToolActivity`（或访问 `one.google.com` 推荐页），每年可生成 **3 条独立的「4 个月 Google AI Pro 免费试用」邀请链接**，发给其他账号直接免门槛领 4 个月 AI Pro！

---

## 五、免责声明与出处标注

- 响应中替换商品 ID 仅代表客户端向 App Store / Google Play 发起指定 SKU 的收银台请求，最终是否展示试用、订阅周期与扣款金额**一律以 App Store / Google Play 原生收银台弹窗显示为准**。
- **上游项目致谢**：[https://github.com/crhywun/g1-acq](https://github.com/crhywun/g1-acq)（[@crhywun](https://github.com/crhywun)、[@duwqijlk](https://github.com/duwqijlk)、[@cehomecambodia-lang](https://github.com/cehomecambodia-lang)）。

---

<div align="center">

# 📢 **有问题联系推特：[https://x.com/zixunclub](https://x.com/zixunclub)**

[![Twitter Follow](https://img.shields.io/badge/X%20(Twitter)-%40zixunclub-000000?style=for-the-badge&logo=x&logoColor=white)](https://x.com/zixunclub)

</div>

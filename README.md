# G1 ACQ Plus (`v9.0.0`) — Google One & Gemini (iOS / Android) 0.05折 Pro / 土区 Ultra / 18M 免费试用 SKU 模块

> **开源出处与致谢（Attribution & Credits）**
> - 本项目基于开源项目 [**`crhywun/g1-acq`**](https://github.com/crhywun/g1-acq)（作者：[@crhywun](https://github.com/crhywun)）扩展构建，同步了其最新 `v7.11.0` 的 `com.google.gemini.*` 命名空间引擎与本机可视化规则编辑器架构。
> - 感谢 [@duwqijlk](https://github.com/duwqijlk) 在上游 [PR #8](https://github.com/crhywun/g1-acq/pull/8) 中贡献的 **「1 元 / 0.05 折开 Pro」**（`com.google.gemini.2tb.ai.m.3month_ip_99p`）实测模板，以及 [@cehomecambodia-lang](https://github.com/cehomecambodia-lang) 在 [PR #3](https://github.com/crhywun/g1-acq/pull/3) 中贡献的 Ultra 20TB / 30TB 1 个月免费试用方案。
> - **本分支（`v9.0.0`）核心增强**：
>   1. **🔥 新增「0.05 折 / 1 元开 Gemini AI Pro」双入口模板 (`pro-1yuan`)**：将 `g1.ios.20tb.m.v2` 与 `g1.ios.2tb.*` 改写为 `com.google.gemini.2tb.ai.m.3month_ip_99p`（前三月立减 99%），叠加 Apple ID 地区汇率差后：**🇮🇳 印度区仅 ₹10/月（≈ \$0.11/月 = 0.05 折）、🇮🇩 印尼区 Rp 3,000/月（≈ \$0.18/月 = 0.1 折）、🇸🇬 新加坡区 S\$0.48/月（0.17 折）**！
>   2. **🇹🇷 新增「土区 Ultra 20x (30TB / 20TB) 老定价直购模板」(`tr-ultra-legacy`)**：剥离 `.ai.pro` 与 `.v2` 后缀，调用土区 Apple Store 未涨价老 SKU（30TB `g1.ios.30tb.m` = **₺2,949.99/月** 约 3 折；20TB `g1.ios.20tb.m` = **₺1,989.99/月** 约 4.1 折），并内置 `[URL Rewrite]` 拦截 `rpcids=A6N72c` 预检请求，**同时支持 Google One 独立 App (`batchexecute`) 与 Google App (`/ai?`)**！
>   3. **👑 内置 7 套一键预制模板 + 130+ 全量实测隐藏 SKU 目录（[sku-catalog.json](sku-catalog.json)）**：涵盖 Pro 5TB 18个月/15个月/12个月 \$0 免费试用（`g1.2tb.ai.18months_eft` 等）、全年 12 个月 1 折（`g1.2tb.ai.12months_ip_90p`）、Ultra 三个月 2.5 折（`3months_ip_75p.acq`）与 1 个月免费试用，**100% 纯本机运行，零外部 Webhook 上报**。

---

## 一、Shadowrocket（小火箭）模块安装地址

在 Shadowrocket「模块（Modules）」中点击右上角添加以下地址：

```text
https://raw.githubusercontent.com/Dgkncn/g1-acq-plus/main/g1-acq-v8.sgmodule
```
*(兼容旧文件名地址：`https://raw.githubusercontent.com/Dgkncn/g1-acq-plus/main/g1-acq-v7.sgmodule`)*

### 安装与使用步骤
1. 在小火箭「模块」中添加并勾选启用上方模块。
2. 进入小火箭 **配置 → 当前配置右侧 `(i)` → HTTPS 解密**，开启 HTTPS 解密并安装、信任 Shadowrocket 根证书（确保 `one.google.com` 在解密域名列表中）。
3. 打开 **Safari** 访问本机 SKU 管理页：[https://one.google.com/g1-sku-report](https://one.google.com/g1-sku-report)
   - 页面顶部显示 **`本机脚本已接管 · v9.0.0`** 即表示模块生效。
   - 在 **「预制映射模板」** 中点击任意一套模板的 **「应用模板」** 即可一键保存生效（也可在下方「映射管理」中自由添加/编辑 `g1.*`、`com.google.one.*`、`com.google.gemini.*` 精确或前缀规则）。
4. 打开 iOS **Google One App** 或 **Google App（彩色 G 图标）→ Google One 方案页**，点击对应档位拉起 App Store 收银台核对价格与周期。

---

## 二、v9.0.0 内置的 7 套一键预制模板

| 模板名称 | 匹配方式 | 源 SKU → 目标 SKU | 适用场景与实测效果 |
| :--- | :--- | :--- | :--- |
| 🔥 **0.05折 / 1元开 Pro** (`pro-1yuan`) | 精确 + 前缀 | `g1.ios.20tb.m.v2` → `com.google.gemini.2tb.ai.m.3month_ip_99p`<br>`g1.ios.2tb.` → `com.google.gemini.2tb.ai.m.3month_ip_99p` | **前三月 99% OFF**！进升级页点 **Ultra 5x (20TB)** 或 **2TB**，收银台弹 Gemini Pro（印区 ₹10≈\$0.11/月=0.05折，印尼 Rp3,000=0.1折，新加坡 S\$0.48=0.17折），实际到账 AI Pro |
| 🇹🇷 **土区 Ultra 30TB & 20TB 老定价** (`tr-ultra-legacy`) | 两条精确 | `g1.ios.30tb.ai.pro.m` → `g1.ios.30tb.m`<br>`g1.ios.20tb.m.v2` → `g1.ios.20tb.m` | 土区 Apple ID + Google One App 专用：30TB 仅 **₺2,949.99/月**（原价 ~₺9,500），20TB 仅 **₺1,989.99/月**（原价 ₺4,749） |
| ⚡ **Ultra 20TB / 30TB · 三个月 2.5折** (`ultra-75p`) | 两条精确 | `g1.ios.20tb.m.v2` → `g1.20tb.3months_ip_75p.acq`<br>`g1.ios.30tb.ai.pro.m` → `g1.ai.ultra.3months_ip_75p.acq` | 现役可用 Ultra 促销档（原 90p 一折拉闸后的主力替代）：前 3 个月减免 75%（实付 25%） |
| 🎁 **Ultra 20TB / 30TB · 1个月 \$0 免费** (`ultra-1m-free`) | 两条精确 | `g1.ios.20tb.m.v2` → `g1.20tb.1month_eft.acq`<br>`g1.ios.30tb.ai.pro.m` → `g1.ai.ultra.1month_eft.acq` | 尝试调起 Ultra 20TB / 30TB 1 个月 \$0 免费试用 |
| 💎 **2TB / Pro · 全年 12个月 1折** (`pro-12months-90p`) | 前缀 | `g1.ios.2tb.` → `g1.2tb.ai.12months_ip_90p` | 连续 12 个月 90% OFF 一折（美区 \$1.99/月 × 12 = \$23.88/年） |
| 👑 **2TB / Pro 5TB · 18个月 \$0 免费** (`pro-18m-free`) | 前缀 | `g1.ios.2tb.` → `g1.2tb.ai.18months_eft` | 全量扫描挖掘出的 Pro 5TB 18 个月 \$0 免费试用档 |
| 👑 **2TB / Pro 5TB · 12个月 \$0 免费** (`pro-12m-free`) | 前缀 | `g1.ios.2tb.` → `g1.2tb.ai.12months_eft` | Pro 5TB 12 个月 \$0 免费试用档（或手动改为 `g1.2tb.ai.subs_variant`） |

---

## 三、`com.google.gemini.2tb.ai.m.3month_ip_99p` 各区 Apple Store 价格实测对比

通过「**99% OFF (`3month_ip_99p` 改写)**」叠加「**低价区 Apple ID**」，可以将原价 \$19.99/月（约 ¥145/月）的 Gemini AI Pro 压到 **0.05 折 ~ 0.17 折**：

| Apple ID 国家/地区 | 该区 AI Pro 常规月费 | 改写 `3month_ip_99p` 后前三月月费 | 折合美元 / 人民币 | 折合美区原价 (\$20/月) 折扣 |
| :--- | :--- | :--- | :--- | :--- |
| 🇮🇳 **印度区 (IN)** | `₹ 1,950 / 月` | **`₹ 9 ~ ₹ 10 / 月`** | **≈ \$0.11 / 月（约 ¥0.80 / 月）** | **🔥 0.05 折** |
| 🇮🇩 **印尼区 (ID)** | `Rp 309,000 / 月` | **`Rp 3,000 / 月`** | **≈ \$0.18 / 月（约 ¥1.35 / 月）** | **🔥 0.10 折** |
| 🇹🇷 **土耳其区 (TR)** | `₺ 869.99 / 月` (旧档 `₺ 539.99`) | **`₺ 5.39 ~ ₺ 8.69 / 月`** | **≈ \$0.16 ~ \$0.25 / 月（约 ¥1.2 ~ ¥1.8）** | **🔥 0.08 ~ 0.12 折** |
| 🇳🇬 **尼日利亚 (NG)** | `₦ 28,500 / 月` | **`₦ 285 / 月`** | **≈ \$0.17 / 月（约 ¥1.25 / 月）** | **🔥 0.085 折** |
| 🇪🇬 **埃及区 (EG)** | `EGP 939.99 / 月` | **`EGP 9.40 / 月`** | **≈ \$0.19 / 月（约 ¥1.38 / 月）** | **🔥 0.095 折** |
| 🇵🇰 **巴基斯坦 (PK)** | `Rs 5,600 / 月` | **`Rs 56 / 月`** | **≈ \$0.20 / 月（约 ¥1.45 / 月）** | **🔥 0.10 折** |
| 🇸🇬 **新加坡区 (SG)** | `S$ 28.90 / 月` | **`S$ 0.48 / 月`** | **≈ \$0.35 / 月（约 ¥2.55 / 月）** | **🔥 0.17 折** |

---

## 四、全量扫描挖掘出的核心隐藏 SKU 一览表（[sku-catalog.json](sku-catalog.json)）

### 1. Google AI Pro (2 TB / 5 TB) — 0.05折、1折与 \$0 免费试用系列

| 隐藏 SKU (Product ID) | 命名空间 / 平台 | 优惠内容 | 续费原价 |
| :--- | :--- | :--- | :--- |
| **`com.google.gemini.2tb.ai.m.3month_ip_99p`** | `com.google.gemini.*` (iOS) | **前 3 个月 0.1 折 (-99% OFF，印区 \$0.11=0.05折)** | 各区 Pro 月费 |
| **`g1.2tb.ai.18months_eft`** | `g1.*` (Play / iOS) | **18 个月 \$0 免费试用** (`P1Y6M`) | \$19.99/月 |
| **`g1.2tb.ai.15months_eft`** | `g1.*` (Play / iOS) | **15 个月 \$0 免费试用** (`P1Y3M`) | \$19.99/月 |
| **`g1.2tb.ai.12months_eft`** | `g1.*` (Play / iOS) | **12 个月 \$0 免费试用** (`P1Y`) | \$19.99/月 |
| **`g1.2tb.ai.subs_variant`** | `g1.*` (Play / iOS) | **12 个月 / 6 个月×3 \$0 免费试用** (`12months-eft`) | \$19.99/月 |
| **`g1.play.2tb.ai.student`** | `g1.*` (Play / iOS) | **学生通道 12 个月 \$0 免费试用** (`eft-12mo`) | \$19.99/月 |
| **`g1.2tb.ai.12months_ip_90p`** | `g1.*` (Play / iOS) | **前 12 个月 1 折 \$1.99/月**（共 \$23.88/年） | \$19.99/月 |
| **`g1.2tb.ai.12months_ip_75p`** | `g1.*` (Play / iOS) | **前 12 个月 2.5 折 \$4.99/月** | \$19.99/月 |
| **`g1.2tb.ai.3months_ip_90p.acq`** | `g1.*` (Play / iOS) | **前 3 个月 1 折 \$1.99/月** | \$19.99/月 |
| **`g1.2tb.ai.1month_ip_95p.acq`** | `g1.*` (Play / iOS) | **首月 0.5 折 \$0.99/月** | \$19.99/月 |
| **`g1.ios.2tb.y`** | `g1.ios.*` (土区老年付档) | **土区 Apple Store 老定价年付 ₺499.99/年（≈ ¥100/年）** | ₺499.99/年 |

### 2. Google AI Ultra (20 TB / 30 TB) — 土区老定价、2.5 折与免费试用系列

| 隐藏 SKU (Product ID) | 适用档位 | 优惠内容 | 续费原价 |
| :--- | :--- | :--- | :--- |
| **`g1.ios.30tb.m`** | Ultra 30TB (20x) | **土区 Apple Store 老定价 ₺2,949.99/月（约 3 折）** | ₺2,949.99/月 |
| **`g1.ios.20tb.m`** | Ultra 20TB (5x) | **土区 Apple Store 老定价 ₺1,989.99/月（约 4.1 折）** | ₺1,989.99/月 |
| **`g1.20tb.3months_ip_75p.acq`** | Ultra 20TB (5x) | **前 3 个月 2.5 折 \$24.99/月**（现役主力可用） | \$99.99/月 |
| **`g1.ai.ultra.3months_ip_75p.acq`** | Ultra 30TB (20x) | **前 3 个月 2.5 折 \$49.99/月**（现役主力可用） | \$199.99/月 |
| **`g1.20tb.1month_eft.acq`** | Ultra 20TB (5x) | **1 个月 \$0 免费试用** | \$99.99/月 |
| **`g1.ai.ultra.1month_eft.acq`** | Ultra 30TB (20x) | **1 个月 \$0 免费试用** | \$199.99/月 |

---

## 五、免责声明与出处标注

- 响应中替换商品 ID 仅代表客户端向 App Store / Google Play 发起指定 SKU 的收银台请求，最终是否展示试用、订阅周期与扣款金额**一律以 App Store / Google Play 原生收银台弹窗显示为准**。
- **上游项目致谢**：[https://github.com/crhywun/g1-acq](https://github.com/crhywun/g1-acq)（[@crhywun](https://github.com/crhywun)、[@duwqijlk](https://github.com/duwqijlk)、[@cehomecambodia-lang](https://github.com/cehomecambodia-lang)）。

---

<div align="center">

# 📢 **有问题联系推特：[https://x.com/zixunclub](https://x.com/zixunclub)**

[![Twitter Follow](https://img.shields.io/badge/X%20(Twitter)-%40zixunclub-000000?style=for-the-badge&logo=x&logoColor=white)](https://x.com/zixunclub)

</div>


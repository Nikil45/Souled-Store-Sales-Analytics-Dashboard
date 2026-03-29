# 🛍️ Souled Store — Sales Analytics Dashboard

!\[Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=for-the-badge\&logo=powerbi\&logoColor=black)
!\[SQL](https://img.shields.io/badge/SQL-4479A1?style=for-the-badge\&logo=mysql\&logoColor=white)
!\[Excel](https://img.shields.io/badge/Excel-217346?style=for-the-badge\&logo=microsoft-excel\&logoColor=white)
!\[Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge\&logo=python\&logoColor=white)
!\[Status](https://img.shields.io/badge/Status-Completed-brightgreen?style=for-the-badge)

> \*\*An end-to-end business analytics project analysing Souled Store's sales, customer behaviour, regional performance, courier operations, and product trends — with data-backed business decisions derived directly from 12,511 order records.\*\*

\---

## 📌 Table of Contents

* [Project Overview](#-project-overview)
* [Dataset Description](#-dataset-description)
* [Tools \& Technologies](#-tools--technologies)
* [Dashboard Overview](#-dashboard-overview)
* [Key Insights from Data](#-key-insights-from-data)
* [Business Problems Identified](#-business-problems-identified)
* [Business Decisions \& Recommendations](#-business-decisions--recommendations)
* [SQL Queries](#-sql-queries)
* [Project Structure](#-project-structure)
* [How to Use](#-how-to-use)
* [Author](#-author)

\---

## 📋 Project Overview

**Souled Store** is one of India's leading fan merchandise and pop-culture apparel brands. This project analyses **12,511 order line items** across **5,459 unique orders** to identify key business challenges and provide data-driven decisions to improve revenue, customer retention, and operational efficiency.

|Metric|Actual Value (from Data)|
|-|-|
|💰 Total Revenue|₹1,28,18,813|
|📦 Total Unique Orders|5,459|
|🛒 Total Line Items|12,511|
|💳 Avg Order Value|₹2,348|
|🏙️ Top City|Mumbai (₹14,93,339)|
|🌍 Top Region|West (₹49,21,515 — 38.4%)|
|👕 Top Category|Oversized T-Shirts (₹27,41,639)|
|📱 Top Device|App Orders (₹78,63,777 — 61.3%)|
|🚚 Top Courier|Delhivery (5,462 shipments — 43.7%)|
|🎨 Top Brand|The Souled Store Original (₹73,91,190)|

\---

## 📂 Dataset Description

**File:** `Souled\_Store.csv` | **Rows:** 12,511 | **Columns:** 28

|Column|Description|
|-|-|
|`OrderId`|Unique identifier for each order|
|`Gender`|Target segment — Men, Women, Kids, Extras, Accessory|
|`OrderDate`|Date of order|
|`Pincode`|Customer delivery pincode|
|`State`|Customer's state|
|`City`|Customer's city|
|`Zone`|Zone A to Zone E|
|`Tire`|Customer tier — Tire 1 (premium), Tire 2, Tire 3|
|`Region`|North / South / East / West|
|`ParentProduct`|Main product name|
|`VariantProduct`|Specific variant with size|
|`Qty`|Quantity ordered|
|`Category`|Product category (Oversized T-Shirts, Jeans, etc.)|
|`ListPrice`|Price of the item (₹)|
|`IsExclusive`|Whether product is Souled Store exclusive|
|`PaymentStatus`|Paid / Pending / Refunded / Paid-Refunded|
|`OrderLineItemStatus`|Processing / Delivered / Returns / Exchange|
|`PaymentMethod`|UPI / COD / POC / Wallet / DCC / Twid etc.|
|`Courier`|Delhivery / Xpressbees / DTDC Air / Blue Dart etc.|
|`ArtistName`|Brand/franchise (Marvel, DC, Naruto, Disney etc.)|
|`IndividualDiscount`|Discount applied per item|
|`DeviceType`|App Orders / Web Orders / Store orders|
|`OrderFrom`|Online Orders / Physical Store name|
|`StoreOnline`|Yes (in-store) / No (online)|
|`HyperLocal`|Whether it is a hyperlocal delivery|

\---

## 🛠️ Tools \& Technologies

|Tool|Purpose|
|-|-|
|**Power BI**|Interactive 11-page dashboard \& visualisations|
|**SQL**|Data extraction, transformation \& business queries|
|**Excel**|Initial data exploration \& preprocessing|
|**Python (Pandas)**|EDA, data validation \& metric calculations|
|**DAX**|Calculated KPI measures in Power BI|

\---

## 📊 Dashboard Overview

The Power BI dashboard contains **11 pages:**

|Page|Description|
|-|-|
|**Dashboard**|Main overview — KPIs, category, trend, payment, zone|
|**KPI Summary**|High-level business metrics at a glance|
|**Monthly Trend**|Revenue trend across all 12 months|
|**Zone Analysis**|Zone A–E performance breakdown|
|**City Revenue**|Top cities by revenue contribution|
|**Category**|Product category deep dive|
|**Payment**|Payment method split and trends|
|**Device**|App vs Web vs Store revenue analysis|
|**Order Status**|Processing / Delivered / Returns / Exchange|
|**Region Breakdown**|North / South / East / West comparison|
|**Raw Data**|Complete filterable data table|

### Dashboard Screenshot

!\[Souled Store Dashboard](./screenshots/dashboard.png)

\---

## 💡 Key Insights from Data

### 🌍 Region Performance

|Region|Revenue|Items|Avg Price|Revenue %|
|-|-|-|-|-|
|**West**|₹49,21,515|4,891|₹1,006|38.4%|
|**South**|₹37,44,135|3,576|₹1,047|29.2%|
|**North**|₹30,87,770|2,970|₹1,040|24.1%|
|**East**|₹10,65,393|1,074|₹992|**8.3%**|

> ⚠️ East generates only 8.3% of total revenue despite being India's 2nd most populous zone

### 🏙️ Top 10 Cities by Revenue

|Rank|City|Revenue|
|-|-|-|
|1|Mumbai|₹14,93,339|
|2|Bangalore|₹12,71,027|
|3|Hyderabad|₹8,49,559|
|4|Pune|₹7,41,508|
|5|Delhi|₹6,39,298|
|6|Chennai|₹5,66,095|
|7|Ahmedabad|₹4,35,089|
|8|Gurgaon|₹3,25,578|
|9|Indore|₹3,24,431|
|10|Mohali|₹2,50,674|

### 👗 Gender Revenue Split

|Gender|Revenue|Items|Share|
|-|-|-|-|
|**Men**|₹99,06,208|7,776|**79.2%**|
|**Women**|₹26,07,253|2,437|**20.8%**|
|Kids|₹87,751|149|0.7%|
|Accessory|₹16,938|12|0.1%|

> 🚨 Women vs Men revenue gap = \*\*₹73,00,000\*\* — biggest untapped opportunity

### 👕 Top Product Categories

|Category|Revenue|Items|
|-|-|-|
|Oversized T-Shirts|₹27,41,639|2,649|
|Men Cargo Jeans|₹8,41,352|348|
|Women Oversized T-Shirts|₹7,62,181|918|
|Men Jeans|₹4,84,383|217|
|Oversized Polos|₹4,53,328|421|
|Men Relaxed Shirts|₹4,15,611|287|
|Men Low Top Sneakers|₹3,77,445|155|
|Holiday Shirts|₹3,76,556|293|

### 🎨 Top Brands/Franchises

|Brand|Revenue|Items|
|-|-|-|
|The Souled Store (Original)|₹73,91,190|7,420|
|Marvel™|₹11,45,174|973|
|DC Comics™|₹7,05,444|655|
|Naruto|₹5,29,914|465|
|Disney™|₹2,72,813|287|
|Harry Potter™|₹2,15,821|178|
|Looney Tunes™|₹1,98,268|181|

### 💳 Payment Method Analysis

|Method|Orders|Revenue|
|-|-|-|
|UPI|3,275|₹35,13,905|
|COD|3,280|₹32,92,631|
|POC (Pay at Store)|3,428|₹31,66,566|
|DCC|1,406|₹16,00,319|
|Wallet|648|₹7,42,457|
|Twid|248|₹2,68,689|

> ⚠️ COD = 25.7% of orders — significant revenue collection risk

### 🚚 Courier Performance

|Courier|Shipments|Revenue|
|-|-|-|
|Delhivery|5,462|₹57,37,727|
|Null (Store/POC)|3,470|₹32,06,464|
|Xpressbees|1,980|₹21,49,668|
|DTDC Air|737|₹7,95,610|
|Blue Dart Air|434|₹4,77,176|
|Ecom Express|313|₹3,67,088|
|Borzo India|26|₹22,716|

### 📱 Device Type Revenue

|Device|Revenue|Orders|Share|
|-|-|-|-|
|App Orders|₹78,63,777|7,249|**61.3%**|
|Store Orders|₹32,06,464|3,470|**25.0%**|
|Web Orders|₹17,48,572|1,792|**13.6%**|

### 📦 Order Status Breakdown

|Status|Count|Revenue|
|-|-|-|
|Processing|8,981|₹95,83,462|
|Delivered|3,519|₹32,21,162|
|Returns|10|₹13,240|
|Exchange|1|₹949|

### 🏷️ Exclusive vs Non-Exclusive

|Type|Revenue|Items|Share|
|-|-|-|-|
|Exclusive|₹73,83,912|6,932|57.6%|
|Non-Exclusive|₹54,34,901|5,579|42.4%|

\---

## 🚨 Business Problems Identified

### 1\. 📉 East Region Severely Underperforming

East generates only **₹10,65,393 (8.3%)** despite covering massive states — West Bengal, Bihar, Jharkhand, Odisha, and all Northeast states. Only **1,074 orders** vs West's **4,891 orders** — a 4.5x gap with no logical geographic justification.

### 2\. 👩 Women's Category — ₹73 Lakh Revenue Gap

Men drive **79.2% (₹99 Lakh)** vs Women at only **20.8% (₹26 Lakh)**. Women Oversized T-Shirts already rank 3rd in category revenue, proving the demand exists — it is simply not being marketed or stocked enough.

### 3\. 💸 COD Risk — ₹32.9 Lakh at Risk

**3,280 COD orders worth ₹32,92,631** with payment still pending. Every COD order is a revenue collection risk — if the customer refuses delivery, this becomes lost revenue plus reverse logistics cost.

### 4\. 📦 71.8% Orders Still in Processing

**8,981 out of 12,511 items** are still in "Processing" status. Only 3,519 are marked Delivered. This suggests either a logistics bottleneck, data pipeline issue, or an operations gap that needs immediate attention.

### 5\. 🌐 Web Channel Extremely Weak

Web Orders generate only **₹17,48,572 (13.6%)** while App drives ₹78.6L (61.3%). The website is not converting — indicating poor UX, lack of investment, or no dedicated web marketing strategy.

### 6\. 📍 Over-Dependence on 3 Metro Cities

Mumbai + Bangalore + Hyderabad contribute **₹36,13,925 (28.2%)** of all revenue. Any slowdown in these 3 cities directly impacts nearly 30% of the business with no fallback.

### 7\. 🚚 Single Courier Dependency

**Delhivery handles 43.7% of all shipments.** A service disruption, price hike, or SLA breach from Delhivery directly impacts nearly half of all deliveries.

### 8\. ⚔️ Non-Exclusive Products Vulnerable to Competition

Non-exclusive products (42.4% of revenue = ₹54.3L) are licensed merchandise that customers can find on Amazon, Flipkart, or competing stores — often at lower prices.

\---

## ✅ Business Decisions \& Recommendations

### 1\. 🗺️ Aggressive East Region Expansion

**Data:** East = 1,074 orders vs West = 4,891 orders — 4.5x gap despite similar population

**Actions:**

* Launch targeted digital campaigns for Kolkata, Bhubaneswar, Patna, Guwahati, Ranchi
* Partner with East-based influencers and college fests (IIT Kharagpur, IIM Calcutta catchment)
* Offer free shipping + 10% first-order discount for East pin codes for 90 days
* Negotiate with Delhivery and Xpressbees for faster East India delivery SLAs

**Expected Impact:** 50% order growth in East = +₹5.3 Lakh additional revenue

\---

### 2\. 👩 Launch Dedicated Women's Growth Initiative

**Data:** Women = 20.8% revenue; Women Oversized T-Shirts = 3rd highest category (₹7.6L, 918 items)

**Actions:**

* Create dedicated "For Her" section on App and Website with separate navigation
* Expand Women's catalogue — add Hoodies, Joggers, Crop Tops, Co-ord sets
* Run Women-specific influencer campaigns — anime, Marvel, Disney female content creators
* Launch Women-exclusive franchise drops — DC Heroines, Studio Ghibli, K-drama collabs

**Expected Impact:** Growing Women's share from 20.8% to 30% = +₹12 Lakh revenue

\---

### 3\. 💳 Reduce COD Dependency — Protect ₹32.9 Lakh

**Data:** 3,280 COD orders; ₹32,92,631 revenue at collection risk

**Actions:**

* Introduce 5% "Prepaid Discount" on UPI/Card to incentivise prepaid orders
* Implement COD verification call before dispatch to confirm delivery intent
* Cap COD orders at ₹1,500 — mandate prepaid for higher-value orders
* Show "Faster Delivery for Prepaid" at checkout as a psychological incentive

**Expected Impact:** Converting 30% of COD to prepaid = ₹10 Lakh risk eliminated

\---

### 4\. 🌐 Fix Web Channel Performance

**Data:** Web = 13.6% revenue (₹17.5L) vs App = 61.3% (₹78.6L) — 4.5x gap

**Actions:**

* Full UX audit of souledstore.com — checkout flow, page speed, mobile responsiveness
* Launch "Web Wednesday" flash sales to drive web traffic
* Implement Google Shopping Ads for high-intent search traffic
* Add "Open in App" nudge on web for lower-funnel conversion

**Expected Impact:** Doubling web share from 13.6% to 20% = +₹8 Lakh incremental revenue

\---

### 5\. 📦 Fix Processing Backlog \& Delivery Pipeline

**Data:** 8,981 items (71.8%) in Processing; only 3,519 (28.2%) Delivered

**Actions:**

* Build SLA dashboard for warehouse — target dispatch within 24 hours of order placement
* Implement real-time inventory sync to prevent overselling out-of-stock items
* Automated order status SMS/WhatsApp at each stage to reduce support tickets
* Audit whether backlog is a data pipeline issue or a real operations delay

**Expected Impact:** Faster delivery = higher customer satisfaction = better repeat rate

\---

### 6\. 🏙️ Develop Tier-2 City Growth Strategy

**Data:** Indore (₹3.2L), Gurgaon (₹3.2L), Mohali (₹2.5L) performing well without targeted campaigns

**Actions:**

* Run city-specific paid campaigns for Indore, Jaipur, Nagpur, Surat, Kochi, Vizag
* Partner with college festivals in Tier-2 cities — pop-culture merchandise is extremely popular with college demographics
* Introduce "Tier-2 Free Shipping" for 6 months to build market penetration

**Expected Impact:** 10 Tier-2 cities growing to ₹3L each = ₹30 Lakh incremental revenue

\---

### 7\. 🎨 Protect \& Grow the Exclusive Product Moat

**Data:** Exclusive products = ₹73.8L (57.6%); Souled Store Originals alone = ₹73.9L (57.8% of revenue)

**Actions:**

* Increase frequency of Souled Store Original drops — the brand is the #1 revenue driver
* Create limited-edition series with scarcity messaging ("Only 500 units") to drive FOMO
* Expand new franchise partnerships — explore One Piece, Demon Slayer, BTS, Game of Thrones
* Protect existing licenses — Marvel, DC, Naruto, Disney collectively = ₹25.5L

**Expected Impact:** Growing exclusive share from 57.6% to 65% builds brand moat and reduces price competition risk

\---

### 8\. 🚚 Diversify Courier Partners — Reduce Single-Partner Risk

**Data:** Delhivery = 43.7% of all shipments — single point of logistics failure

**Actions:**

* Set a 35% maximum volume cap per courier to enforce diversification
* Negotiate SLA contracts with Xpressbees and DTDC Air for guaranteed delivery windows
* Route high-value orders (₹2,000+) through Blue Dart Air for premium handling
* Build a courier performance scorecard — track delivery success rate, RTO%, and average delivery time per partner

**Expected Impact:** Reduces logistics risk, enables competitive courier negotiation, improves overall delivery reliability

\---

## 🗄️ SQL Queries

### 1\. Revenue by Region

```sql
SELECT 
    Region,
    SUM(ListPrice) AS Total\_Revenue,
    COUNT(DISTINCT OrderId) AS Total\_Orders,
    ROUND(AVG(ListPrice), 2) AS Avg\_Item\_Price,
    ROUND(SUM(ListPrice) \* 100.0 / SUM(SUM(ListPrice)) OVER(), 2) AS Revenue\_Pct
FROM souled\_store
GROUP BY Region
ORDER BY Total\_Revenue DESC;
```

### 2\. Top 10 Cities by Revenue

```sql
SELECT TOP 10
    City, State, Region,
    SUM(ListPrice) AS Total\_Revenue,
    COUNT(DISTINCT OrderId) AS Total\_Orders
FROM souled\_store
GROUP BY City, State, Region
ORDER BY Total\_Revenue DESC;
```

### 3\. Gender Revenue Analysis

```sql
SELECT 
    Gender,
    SUM(ListPrice) AS Total\_Revenue,
    COUNT(\*) AS Total\_Items,
    ROUND(SUM(ListPrice) \* 100.0 / SUM(SUM(ListPrice)) OVER(), 2) AS Revenue\_Share\_Pct
FROM souled\_store
WHERE Gender NOT IN ('Extras', 'Null')
GROUP BY Gender
ORDER BY Total\_Revenue DESC;
```

### 4\. COD Risk — Pending Revenue

```sql
SELECT 
    PaymentMethod,
    PaymentStatus,
    COUNT(\*) AS Total\_Items,
    SUM(ListPrice) AS Revenue\_At\_Risk
FROM souled\_store
WHERE PaymentMethod = 'COD' AND PaymentStatus = 'Pending'
GROUP BY PaymentMethod, PaymentStatus;
```

### 5\. Courier Performance Scorecard

```sql
SELECT 
    Courier,
    COUNT(\*) AS Total\_Shipments,
    SUM(ListPrice) AS Total\_Revenue,
    SUM(CASE WHEN OrderLineItemStatus = 'Delivered' THEN 1 ELSE 0 END) AS Delivered\_Count,
    SUM(CASE WHEN OrderLineItemStatus = 'Returns' THEN 1 ELSE 0 END) AS Returns\_Count,
    ROUND(SUM(CASE WHEN OrderLineItemStatus = 'Delivered' THEN 1.0 ELSE 0 END) / COUNT(\*) \* 100, 2) AS Delivery\_Success\_Rate\_Pct
FROM souled\_store
WHERE Courier != 'Null'
GROUP BY Courier
ORDER BY Total\_Shipments DESC;
```

### 6\. Exclusive vs Non-Exclusive Revenue

```sql
SELECT 
    IsExclusive,
    SUM(ListPrice) AS Total\_Revenue,
    COUNT(\*) AS Total\_Items,
    ROUND(SUM(ListPrice) \* 100.0 / SUM(SUM(ListPrice)) OVER(), 2) AS Revenue\_Pct
FROM souled\_store
GROUP BY IsExclusive
ORDER BY Total\_Revenue DESC;
```

### 7\. Device Type Performance

```sql
SELECT 
    DeviceType,
    SUM(ListPrice) AS Total\_Revenue,
    COUNT(DISTINCT OrderId) AS Total\_Orders,
    ROUND(SUM(ListPrice) \* 100.0 / SUM(SUM(ListPrice)) OVER(), 2) AS Revenue\_Pct
FROM souled\_store
GROUP BY DeviceType
ORDER BY Total\_Revenue DESC;
```

### 8\. Top 10 Franchises by Revenue

```sql
SELECT TOP 10
    ArtistName,
    SUM(ListPrice) AS Total\_Revenue,
    COUNT(\*) AS Total\_Items,
    COUNT(DISTINCT OrderId) AS Total\_Orders
FROM souled\_store
WHERE ArtistName NOT IN ('Null')
GROUP BY ArtistName
ORDER BY Total\_Revenue DESC;
```

### 9\. Zone-wise Performance

```sql
SELECT 
    Zone, Region,
    SUM(ListPrice) AS Total\_Revenue,
    COUNT(DISTINCT OrderId) AS Total\_Orders,
    ROUND(SUM(ListPrice) \* 100.0 / SUM(SUM(ListPrice)) OVER(), 2) AS Revenue\_Pct
FROM souled\_store
GROUP BY Zone, Region
ORDER BY Total\_Revenue DESC;
```

### 10\. Payment Method Risk Analysis

```sql
SELECT 
    PaymentMethod,
    PaymentStatus,
    COUNT(\*) AS Total\_Items,
    SUM(ListPrice) AS Total\_Revenue
FROM souled\_store
GROUP BY PaymentMethod, PaymentStatus
ORDER BY PaymentMethod, Total\_Revenue DESC;
```

\---

## 📁 Project Structure

```
souled-store-analytics/
│
├── 📊 dashboard/
│   └── SOULED\_STORE.pbix               # Power BI dashboard (11 pages)
│
├── 📸 screenshots/
│   ├── dashboard.png                    # Main dashboard screenshot
│   ├── kpi\_summary.png
│   ├── monthly\_trend.png
│   ├── zone\_analysis.png
│   ├── city\_revenue.png
│   ├── category.png
│   ├── payment.png
│   ├── device.png
│   └── region\_breakdown.png
│
├── 📂 data/
│   └── Souled\_Store.csv                 # Raw dataset (12,511 records, 28 columns)
│
├── 🗄️ sql/
│   ├── 01\_revenue\_by\_region.sql
│   ├── 02\_top\_cities.sql
│   ├── 03\_gender\_analysis.sql
│   ├── 04\_cod\_risk\_analysis.sql
│   ├── 05\_courier\_performance.sql
│   ├── 06\_exclusive\_revenue.sql
│   ├── 07\_device\_type.sql
│   ├── 08\_top\_brands.sql
│   ├── 09\_zone\_analysis.sql
│   └── 10\_payment\_risk.sql
│
└── README.md                            # This file
```

\---

## ▶️ How to Use

### 1\. Clone the Repository

```bash
git clone https://github.com/your-username/souled-store-analytics.git
cd souled-store-analytics
```

### 2\. Open Power BI Dashboard

* Install [Power BI Desktop](https://powerbi.microsoft.com/desktop/) (free)
* Open `dashboard/SOULED\_STORE.pbix`
* If prompted, update data source path to `data/Souled\_Store.csv`
* Click **Refresh** to reload all data

### 3\. Run SQL Queries

```sql
-- Import Souled\_Store.csv into MySQL / SQL Server / PostgreSQL
-- Run any query from the sql/ folder
-- Tested on MySQL 8.0+ and SQL Server 2019+
```

\---

## 👤 Author

**Nikil Shetty**

* 🔗 LinkedIn: [linkedin.com/in/nikilshetty](https://linkedin.com/in/nikilshetty)
* 💻 GitHub: [github.com/nikilshetty](https://github.com/nikilshetty)
* 📧 Email: your-email@gmail.com

\---

> ⭐ \*\*If you found this project helpful, please give it a star!\*\*

> \*"In God we trust. All others must bring data."\* — W. Edwards Deming


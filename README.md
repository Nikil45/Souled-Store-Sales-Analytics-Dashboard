# 🛍️ The Souled Store — Sales Analytics Dashboard (Power BI)

##"This project was built using retail data provided as part of a take-home assessment. The task was to analyze the data within 30 minutes using SQL queries. I extended the work independently by building an interactive dashboard in Excel to derive deeper insights and support business decision-making."

## 📌 Table of Contents

* [Project Overview]
* [Dataset Description]
* [Tools & Technologies]
* [Dashboard Overview]
* [Key Insights from Data]
* [Business Problems Identified]
* [Business Decisions & Recommendations]
* [SQL Queries]
* [Project Structure]
* [How to Use]
* [Author]

---

## 📋 Project Overview

**The Souled Store** is one of India's leading fan merchandise and pop-culture apparel brands. This project analyses **12,511 order line items** across **5,459 unique orders** to identify key business challenges and provide data-driven decisions to improve revenue, customer retention, and operational efficiency.

| Metric | Actual Value (from Data) |
|---|---|
| 💰 Total Revenue | ₹1,28,18,813 |
| 📦 Total Unique Orders | 5,459 |
| 🛒 Total Line Items | 12,511 |
| 💳 Avg Order Value | ₹2,348 |
| 🏙️ Top City | Mumbai (₹14,93,339) |
| 🌍 Top Region | West (₹49,21,515 — 38.4%) |
| 👕 Top Category | Oversized T-Shirts (₹27,41,639) |
| 📱 Top Device | App Orders (₹78,63,777 — 61.3%) |
| 🚚 Top Courier | Delhivery (5,462 shipments — 43.7%) |
| 🎨 Top Brand | The Souled Store Original (₹73,91,190) |

---

## 📂 Dataset Description

**File:** `new_soul_store.pbix` | **Rows:** 12,511 | **Columns:** 28

| Column | Description |
|---|---|
| `OrderId` | Unique identifier for each order |
| `Gender` | Target segment — Men, Women, Kids, Extras, Accessory |
| `OrderDate` | Date of order |
| `Pincode` | Customer delivery pincode |
| `State` | Customer's state |
| `City` | Customer's city |
| `Zone` | Zone A to Zone E |
| `Tire` | Customer tier — Tire 1 (premium), Tire 2, Tire 3 |
| `Region` | North / South / East / West |
| `ParentProduct` | Main product name |
| `VariantProduct` | Specific variant with size |
| `Qty` | Quantity ordered |
| `Category` | Product category (Oversized T-Shirts, Jeans, etc.) |
| `ListPrice` | Price of the item (₹) |
| `IsExclusive` | Whether product is Souled Store exclusive |
| `PaymentStatus` | Paid / Pending / Refunded / Paid-Refunded |
| `OrderLineItemStatus` | Processing / Delivered / Returns / Exchange |
| `PaymentMethod` | UPI / COD / POC / Wallet / DCC / Twid etc. |
| `Courier` | Delhivery / Xpressbees / DTDC Air / Blue Dart etc. |
| `ArtistName` | Brand/franchise (Marvel, DC, Naruto, Disney etc.) |
| `IndividualDiscount` | Discount applied per item |
| `DeviceType` | App Orders / Web Orders / Store Orders |
| `OrderFrom` | Online Orders / Physical Store name |
| `StoreOnline` | Yes (in-store) / No (online) |
| `HyperLocal` | Whether it is a hyperlocal delivery |

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| **Power BI** | Interactive single-page dashboard & visualisations |
| **SQL** | Data extraction, transformation & business queries |
| **Excel** | Initial data exploration & preprocessing |
| **Python (Pandas)** | EDA, data validation & metric calculations |
| **DAX** | Calculated KPI measures in Power BI |

---

## 📊 Dashboard Overview

The Power BI dashboard (`new_soul_store.pbix`) contains **1 consolidated page** with the following visuals:

| Visual Type | Count | Purpose |
|---|---|---|
| **Card Visuals** | 4 | KPI metrics — Revenue, Orders, AOV, Items |
| **Donut Charts** | 2 | Payment method split & Exclusive vs Non-Exclusive |
| **Clustered Bar Charts** | 2 | Regional & City-wise revenue breakdown |
| **Clustered Column Chart** | 1 | Category / monthly trend analysis |
| **Bar Chart** | 1 | Courier / brand performance |
| **Pie Charts** | 2 | Device type & Gender revenue share |
| **Slicers** | 3 | Interactive filters — Region, Device, Category |

### Dashboard Screenshot

<img width="1293" height="724" alt="image" src="https://github.com/user-attachments/assets/d781a69a-97af-4aaf-9c1a-93be05772dad" />

---

## 💡 Key Insights from Data

### 🌍 Region Performance

| Region | Revenue | Items | Avg Price | Revenue % |
|---|---|---|---|---|
| **West** | ₹49,21,515 | 4,891 | ₹1,006 | 38.4% |
| **South** | ₹37,44,135 | 3,576 | ₹1,047 | 29.2% |
| **North** | ₹30,87,770 | 2,970 | ₹1,040 | 24.1% |
| **East** | ₹10,65,393 | 1,074 | ₹992 | **8.3%** |

> ⚠️ East generates only 8.3% of total revenue despite being India's 2nd most populous zone

### 🏙️ Top 10 Cities by Revenue

| Rank | City | Revenue |
|---|---|---|
| 1 | Mumbai | ₹14,93,339 |
| 2 | Bangalore | ₹12,71,027 |
| 3 | Hyderabad | ₹8,49,559 |
| 4 | Pune | ₹7,41,508 |
| 5 | Delhi | ₹6,39,298 |
| 6 | Chennai | ₹5,66,095 |
| 7 | Ahmedabad | ₹4,35,089 |
| 8 | Gurgaon | ₹3,25,578 |
| 9 | Indore | ₹3,24,431 |
| 10 | Mohali | ₹2,50,674 |

### 👗 Gender Revenue Split

| Gender | Revenue | Items | Share |
|---|---|---|---|
| **Men** | ₹99,06,208 | 7,776 | **79.2%** |
| **Women** | ₹26,07,253 | 2,437 | **20.8%** |
| Kids | ₹87,751 | 149 | 0.7% |
| Accessory | ₹16,938 | 12 | 0.1% |

> 🚨 Women vs Men revenue gap = **₹73,00,000** — biggest untapped opportunity

### 👕 Top Product Categories

| Category | Revenue | Items |
|---|---|---|
| Oversized T-Shirts | ₹27,41,639 | 2,649 |
| Men Cargo Jeans | ₹8,41,352 | 348 |
| Women Oversized T-Shirts | ₹7,62,181 | 918 |
| Men Jeans | ₹4,84,383 | 217 |
| Oversized Polos | ₹4,53,328 | 421 |
| Men Relaxed Shirts | ₹4,15,611 | 287 |
| Men Low Top Sneakers | ₹3,77,445 | 155 |
| Holiday Shirts | ₹3,76,556 | 293 |

### 🎨 Top Brands / Franchises

| Brand | Revenue | Items |
|---|---|---|
| The Souled Store (Original) | ₹73,91,190 | 7,420 |
| Marvel™ | ₹11,45,174 | 973 |
| DC Comics™ | ₹7,05,444 | 655 |
| Naruto | ₹5,29,914 | 465 |
| Disney™ | ₹2,72,813 | 287 |
| Harry Potter™ | ₹2,15,821 | 178 |
| Looney Tunes™ | ₹1,98,268 | 181 |

### 💳 Payment Method Analysis

| Method | Orders | Revenue |
|---|---|---|
| UPI | 3,275 | ₹35,13,905 |
| COD | 3,280 | ₹32,92,631 |
| POC (Pay at Store) | 3,428 | ₹31,66,566 |
| DCC | 1,406 | ₹16,00,319 |
| Wallet | 648 | ₹7,42,457 |
| Twid | 248 | ₹2,68,689 |

> ⚠️ COD = 25.7% of orders — significant revenue collection risk

### 🚚 Courier Performance

| Courier | Shipments | Revenue |
|---|---|---|
| Delhivery | 5,462 | ₹57,37,727 |
| Null (Store/POC) | 3,470 | ₹32,06,464 |
| Xpressbees | 1,980 | ₹21,49,668 |
| DTDC Air | 737 | ₹7,95,610 |
| Blue Dart Air | 434 | ₹4,77,176 |
| Ecom Express | 313 | ₹3,67,088 |
| Borzo India | 26 | ₹22,716 |

### 📱 Device Type Revenue

| Device | Revenue | Orders | Share |
|---|---|---|---|
| App Orders | ₹78,63,777 | 7,249 | **61.3%** |
| Store Orders | ₹32,06,464 | 3,470 | **25.0%** |
| Web Orders | ₹17,48,572 | 1,792 | **13.6%** |

### 📦 Order Status Breakdown

| Status | Count | Revenue |
|---|---|---|
| Processing | 8,981 | ₹95,83,462 |
| Delivered | 3,519 | ₹32,21,162 |
| Returns | 10 | ₹13,240 |
| Exchange | 1 | ₹949 |

### 🏷️ Exclusive vs Non-Exclusive

| Type | Revenue | Items | Share |
|---|---|---|---|
| Exclusive | ₹73,83,912 | 6,932 | 57.6% |
| Non-Exclusive | ₹54,34,901 | 5,579 | 42.4% |

---

## 🚨 Business Problems Identified

### 1. 📉 East Region Severely Underperforming

East generates only **₹10,65,393 (8.3%)** despite covering massive states — West Bengal, Bihar, Jharkhand, Odisha, and all Northeast states. Only **1,074 orders** vs West's **4,891 orders** — a 4.5x gap with no logical geographic justification.

### 2. 👩 Women's Category — ₹73 Lakh Revenue Gap

Men drive **79.2% (₹99 Lakh)** vs Women at only **20.8% (₹26 Lakh)**. Women Oversized T-Shirts already rank 3rd in category revenue, proving the demand exists — it is simply not being marketed or stocked enough.

### 3. 💸 COD Risk — ₹32.9 Lakh at Risk

**3,280 COD orders worth ₹32,92,631** with payment still pending. Every COD order is a revenue collection risk — if the customer refuses delivery, this becomes lost revenue plus reverse logistics cost.

### 4. 📦 71.8% Orders Still in Processing

**8,981 out of 12,511 items** are still in "Processing" status. Only 3,519 are marked Delivered. This suggests either a logistics bottleneck, data pipeline issue, or an operations gap that needs immediate attention.

### 5. 🌐 Web Channel Extremely Weak

Web Orders generate only **₹17,48,572 (13.6%)** while App drives ₹78.6L (61.3%). The website is not converting — indicating poor UX, lack of investment, or no dedicated web marketing strategy.

### 6. 📍 Over-Dependence on 3 Metro Cities

Mumbai + Bangalore + Hyderabad contribute **₹36,13,925 (28.2%)** of all revenue. Any slowdown in these 3 cities directly impacts nearly 30% of the business with no fallback.

### 7. 🚚 Single Courier Dependency

**Delhivery handles 43.7% of all shipments.** A service disruption, price hike, or SLA breach from Delhivery directly impacts nearly half of all deliveries.

### 8. ⚔️ Non-Exclusive Products Vulnerable to Competition

Non-exclusive products (42.4% of revenue = ₹54.3L) are licensed merchandise that customers can find on Amazon, Flipkart, or competing stores — often at lower prices.

---

## ✅ Business Decisions & Recommendations

### 1. 🗺️ Aggressive East Region Expansion

**Data:** East = 1,074 orders vs West = 4,891 orders — 4.5x gap despite similar population

**Actions:**
- Launch East-region targeted campaigns on Instagram and YouTube — Kolkata, Bhubaneswar, Guwahati, Patna
- Partner with local pop-culture and anime communities in East India
- Introduce Free Shipping for East region orders for 3 months to drive trial
- Add Eastern franchise-specific drops — regional language content (Bengali, Odia)

**Expected Impact:** 50% order growth in East = +₹5.3 Lakh additional revenue

---

### 2. 👩 Launch Dedicated Women's Growth Initiative

**Data:** Women = 20.8% revenue; Women Oversized T-Shirts = 3rd highest category (₹7.6L, 918 items)

**Actions:**
- Create dedicated "For Her" section on App and Website with separate navigation
- Expand Women's catalogue — add Hoodies, Joggers, Crop Tops, Co-ord sets
- Run Women-specific influencer campaigns — anime, Marvel, Disney female content creators
- Launch Women-exclusive franchise drops — DC Heroines, Studio Ghibli, K-drama collabs

**Expected Impact:** Growing Women's share from 20.8% to 30% = +₹12 Lakh revenue

---

### 3. 💳 Reduce COD Dependency — Protect ₹32.9 Lakh

**Data:** 3,280 COD orders; ₹32,92,631 revenue at collection risk

**Actions:**
- Introduce 5% "Prepaid Discount" on UPI/Card to incentivise prepaid orders
- Implement COD verification call before dispatch to confirm delivery intent
- Cap COD orders at ₹1,500 — mandate prepaid for higher-value orders
- Show "Faster Delivery for Prepaid" at checkout as a psychological incentive

**Expected Impact:** Converting 30% of COD to prepaid = ₹10 Lakh risk eliminated

---

### 4. 🌐 Fix Web Channel Performance

**Data:** Web = 13.6% revenue (₹17.5L) vs App = 61.3% (₹78.6L) — 4.5x gap

**Actions:**
- Full UX audit of souledstore.com — checkout flow, page speed, mobile responsiveness
- Launch "Web Wednesday" flash sales to drive web traffic
- Implement Google Shopping Ads for high-intent search traffic
- Add "Open in App" nudge on web for lower-funnel conversion

**Expected Impact:** Doubling web share from 13.6% to 20% = +₹8 Lakh incremental revenue

---

### 5. 📦 Fix Processing Backlog & Delivery Pipeline

**Data:** 8,981 items (71.8%) in Processing; only 3,519 (28.2%) Delivered

**Actions:**
- Build SLA dashboard for warehouse — target dispatch within 24 hours of order placement
- Implement real-time inventory sync to prevent overselling out-of-stock items
- Automated order status SMS/WhatsApp at each stage to reduce support tickets
- Audit whether backlog is a data pipeline issue or a real operations delay

**Expected Impact:** Faster delivery = higher customer satisfaction = better repeat rate

---

### 6. 🏙️ Develop Tier-2 City Growth Strategy

**Data:** Indore (₹3.2L), Gurgaon (₹3.2L), Mohali (₹2.5L) performing well without targeted campaigns

**Actions:**
- Run city-specific paid campaigns for Indore, Jaipur, Nagpur, Surat, Kochi, Vizag
- Partner with college festivals in Tier-2 cities — pop-culture merchandise is extremely popular with college demographics
- Introduce "Tier-2 Free Shipping" for 6 months to build market penetration

**Expected Impact:** 10 Tier-2 cities growing to ₹3L each = ₹30 Lakh incremental revenue

---

### 7. 🎨 Protect & Grow the Exclusive Product Moat

**Data:** Exclusive products = ₹73.8L (57.6%); Souled Store Originals alone = ₹73.9L (57.8% of revenue)

**Actions:**
- Increase frequency of Souled Store Original drops — the brand is the #1 revenue driver
- Create limited-edition series with scarcity messaging ("Only 500 units") to drive FOMO
- Expand new franchise partnerships — explore One Piece, Demon Slayer, BTS, Game of Thrones
- Protect existing licenses — Marvel, DC, Naruto, Disney collectively = ₹25.5L

**Expected Impact:** Growing exclusive share from 57.6% to 65% builds brand moat and reduces price competition risk

---

### 8. 🚚 Diversify Courier Partners — Reduce Single-Partner Risk

**Data:** Delhivery = 43.7% of all shipments — single point of logistics failure

**Actions:**
- Set a 35% maximum volume cap per courier to enforce diversification
- Negotiate SLA contracts with Xpressbees and DTDC Air for guaranteed delivery windows
- Route high-value orders (₹2,000+) through Blue Dart Air for premium handling
- Build a courier performance scorecard — track delivery success rate, RTO%, and average delivery time per partner

**Expected Impact:** Reduces logistics risk, enables competitive courier negotiation, improves overall delivery reliability

---

## 🗄️ SQL Queries

### 1. Revenue by Region

```sql
SELECT 
    Region,
    SUM(ListPrice) AS Total_Revenue,
    COUNT(DISTINCT OrderId) AS Total_Orders,
    ROUND(AVG(ListPrice), 2) AS Avg_Item_Price,
    ROUND(SUM(ListPrice) * 100.0 / SUM(SUM(ListPrice)) OVER(), 2) AS Revenue_Pct
FROM main
GROUP BY Region
ORDER BY Total_Revenue DESC;
```

### 2. Top 10 Cities by Revenue

```sql
SELECT TOP 10
    City, State, Region,
    SUM(ListPrice) AS Total_Revenue,
    COUNT(DISTINCT OrderId) AS Total_Orders
FROM main
GROUP BY City, State, Region
ORDER BY Total_Revenue DESC;
```

### 3. Gender Revenue Analysis

```sql
SELECT 
    Gender,
    SUM(ListPrice) AS Total_Revenue,
    COUNT(*) AS Total_Items,
    ROUND(SUM(ListPrice) * 100.0 / SUM(SUM(ListPrice)) OVER(), 2) AS Revenue_Share_Pct
FROM main
WHERE Gender NOT IN ('Extras', 'Null')
GROUP BY Gender
ORDER BY Total_Revenue DESC;
```

### 4. COD Risk — Pending Revenue

```sql
SELECT 
    PaymentMethod,
    PaymentStatus,
    COUNT(*) AS Total_Items,
    SUM(ListPrice) AS Revenue_At_Risk
FROM main
WHERE PaymentMethod = 'COD' AND PaymentStatus = 'Pending'
GROUP BY PaymentMethod, PaymentStatus;
```

### 5. Courier Performance Scorecard

```sql
SELECT 
    Courier,
    COUNT(*) AS Total_Shipments,
    SUM(ListPrice) AS Total_Revenue,
    SUM(CASE WHEN OrderLineItemStatus = 'Delivered' THEN 1 ELSE 0 END) AS Delivered_Count,
    SUM(CASE WHEN OrderLineItemStatus = 'Returns' THEN 1 ELSE 0 END) AS Returns_Count,
    ROUND(SUM(CASE WHEN OrderLineItemStatus = 'Delivered' THEN 1.0 ELSE 0 END) / COUNT(*) * 100, 2) AS Delivery_Success_Rate_Pct
FROM main
WHERE Courier != 'Null'
GROUP BY Courier
ORDER BY Total_Shipments DESC;
```

### 6. Exclusive vs Non-Exclusive Revenue

```sql
SELECT 
    IsExclusive,
    SUM(ListPrice) AS Total_Revenue,
    COUNT(*) AS Total_Items,
    ROUND(SUM(ListPrice) * 100.0 / SUM(SUM(ListPrice)) OVER(), 2) AS Revenue_Pct
FROM main
GROUP BY IsExclusive
ORDER BY Total_Revenue DESC;
```

### 7. Device Type Performance

```sql
SELECT 
    DeviceType,
    SUM(ListPrice) AS Total_Revenue,
    COUNT(DISTINCT OrderId) AS Total_Orders,
    ROUND(SUM(ListPrice) * 100.0 / SUM(SUM(ListPrice)) OVER(), 2) AS Revenue_Pct
FROM main
GROUP BY DeviceType
ORDER BY Total_Revenue DESC;
```

### 8. Top 10 Franchises by Revenue

```sql
SELECT TOP 10
    ArtistName,
    SUM(ListPrice) AS Total_Revenue,
    COUNT(*) AS Total_Items,
    COUNT(DISTINCT OrderId) AS Total_Orders
FROM main
WHERE ArtistName NOT IN ('Null')
GROUP BY ArtistName
ORDER BY Total_Revenue DESC;
```

### 9. Zone-wise Performance

```sql
SELECT 
    Zone, Region,
    SUM(ListPrice) AS Total_Revenue,
    COUNT(DISTINCT OrderId) AS Total_Orders,
    ROUND(SUM(ListPrice) * 100.0 / SUM(SUM(ListPrice)) OVER(), 2) AS Revenue_Pct
FROM main
GROUP BY Zone, Region
ORDER BY Total_Revenue DESC;
```

### 10. Payment Method Risk Analysis

```sql
SELECT 
    PaymentMethod,
    PaymentStatus,
    COUNT(*) AS Total_Items,
    SUM(ListPrice) AS Total_Revenue
FROM main
GROUP BY PaymentMethod, PaymentStatus
ORDER BY PaymentMethod, Total_Revenue DESC;
```

---

## 📁 Project Structure

```
new_soul_store/
│
├── new_soul_store.pbix          # Power BI Dashboard file
├── README.md                    # Project documentation (this file)
├── screenshots/
│   └── dashboard.png            # Dashboard screenshot
└── data/
    └── souled_store.csv         # Source dataset (12,511 rows × 28 columns)
```

---

## 🚀 How to Use

1. **Download** the `new_soul_store.pbix` file from this repository
2. **Open** it using [Power BI Desktop](https://powerbi.microsoft.com/desktop/) (free download)
3. **Interact** with the dashboard using the 3 slicers — filter by Region, Device Type, or Category
4. **Drill through** order-level details by right-clicking on any visual and selecting Drillthrough
5. **Explore** the KPI cards, charts, and donut visuals to surface key trends

> 💡 **Tip:** Use the slicers at the top to filter all visuals simultaneously for focused regional or category analysis.

---

## 👤 Author

**Nikil Shetty**

* 🔗 LinkedIn: www.linkedin.com/in/nikil-shetty-32a933215
* 📧 Email: nikil.k.shetty@gmail.com

---

> ⭐ **If you found this project helpful, please give it a star!**

> *"In God we trust. All others must bring data."* — W. Edwards Deming

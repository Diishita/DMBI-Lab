# DeliverOps — CA1 Case Study Deliverable

**Course:** Data Mining and Business Intelligence (DMBI)  
**Deliverable:** Continuous Assessment 1 (CA1) — Comprehensive Case Study  
**Project Title:** DeliverOps: Business Intelligence and Data Mining Case Study for Food Delivery Operations  
**Domain:** Hyper-Local Food Delivery Logistics & Operations  
**Academic Year:** 2026 – 2027  
**Student Lead:** Atharva Waghmode (Roll: 59, Div: D15A) | Group Submission (4 Students)  
**GitHub Repository:** [https://github.com/wagha-builds/dmbi_ca.git](https://github.com/wagha-builds/dmbi_ca.git)

---

## 📂 Deliverables Inventory

| Sub-Folder / File | Deliverable Type | Description | Status |
|---|---|---|:---:|
| [`REPORT/CA1_Case_Study_Report.pdf`](./REPORT/CA1_Case_Study_Report.pdf) | Formal Academic PDF Report | Complete 31-section academic document formatted with ReportLab containing embedded figures, tables, formulas, and references | **Complete** |
| [`PPT/CA1_Presentation.pptx`](./PPT/CA1_Presentation.pptx) | Editable Presentation | Professional 17-slide 16:9 executive presentation deck built with `python-pptx` | **Complete** |
| [`POC/CA1_POC.ipynb`](./POC/CA1_POC.ipynb) | Interactive Notebook POC | Full, reproducible Jupyter Notebook executing the complete DMBI pipeline from raw data to inference | **Complete** |
| [`POC/README.md`](./POC/README.md) | POC Guide | Step-by-step setup and execution instructions for the POC notebook | **Complete** |
| [`YOUTUBE_LINKS.md`](./YOUTUBE_LINKS.md) | Video Tracker & Scripts | Formatted video submission document containing 4 student placeholder entries (PENDING) and individual presentation outlines | **Complete** |

---

## 🎯 Case Study Technical Summary

### 1. Problem Statement
Food delivery platforms operate in unpredictable urban environments where transit durations are influenced by traffic density, weather conditions, Haversine travel distance, courier age and ratings, vehicle mechanical health, and kitchen preparation times. DeliverOps builds a comprehensive decision support system utilizing dimensional warehousing, OLAP operations, supervised regression and classification, and unsupervised clustering.

### 2. Dataset & Quality Engineering
- **Raw Data Source:** Public Zomato Delivery Operations Analytics Dataset (`data/raw/food_delivery_dataset.csv`).
- **Initial Volume:** 45,584 records across 20 raw attributes.
- **Data Cleansing:** Rectified inverted GPS signs, pruned 3,495 zero/corrupted coordinates (<5° lat), filtered 2,001 critical missing dimensions, and imputed courier demographics.
- **Production Analytical Dataset:** 40,088 records (87.94% retention rate) with 34 engineered attributes.

### 3. Star Schema Data Warehouse
Instantiated in SQLite (`data/warehouse/deliverops.db`):
- **Central Fact Table:** `fact_delivery` (40,088 rows, grain: 1 completed delivery).
- **Additive Measures:** `delivery_count`, `multiple_deliveries`, `long_delivery`.
- **Semi-Additive Measures:** `delivery_duration_min`, `prep_time_min`, `distance_km`.
- **Six Dimensions:** `dim_date` (44 rows), `dim_courier` (34,671 rows), `dim_location` (7,869 rows), `dim_vehicle` (6 rows), `dim_conditions` (44 rows), `dim_order` (307 rows).

### 4. Relational OLAP Operations
Implemented via standard SQL:
- **Roll-up:** Summarises delivery performance from daily grain to month and day-of-week levels.
- **Drill-down:** Navigates from City overview into Traffic conditions and courier age cohorts.
- **Slice:** Evaluates delivery metrics strictly under `Weather = 'Fog'` (mean duration: 29.12 min).
- **Dice:** Sub-cube filtering across `City = 'Metropolitian'`, `Traffic = 'Jam'`, and `Vehicle = 'motorcycle'`.
- **Pivot:** Cross-tabulates mean delivery duration across weather severity (rows) and traffic density (columns).

### 5. Predictive Data Mining Results
- **Regression (Delivery Time Estimation):**
  - Linear Regression (Baseline): MAE 4.75 min, RMSE 5.93 min, R² 0.590
  - Decision Tree Regressor: MAE 3.57 min, RMSE 4.52 min, R² 0.762
  - **Random Forest Regressor (Champion): MAE 3.18 min, RMSE 3.98 min, R² 0.816** (explains 81.6% of delivery variance)
- **Classification (Long Delivery Detection, ≥40 min):**
  - Primary Class Prevalence: 10.32% long deliveries (4,136 delayed orders)
  - Logistic Regression: Accuracy 84.06%, Recall 84.76%, ROC-AUC 0.9299
  - Decision Tree Classifier: Accuracy 88.83%, Recall 97.10%, ROC-AUC 0.9612
  - **Random Forest Classifier (Champion): Accuracy 89.89%, Recall 96.61%, ROC-AUC 0.9716** (detects 96.6% of late deliveries)
  - Sensitivity Thresholds: 35 min (ROC-AUC 0.932), 45 min (ROC-AUC 0.979)
- **Clustering (K-Means Operational Segmentation):**
  - Optimal k validated at k=4 via peak Silhouette Score (0.1481)
  - 4 Distinct Personas:
    1. *C0: Short-Haul Quick Turnaround* (30.6% share, avg 8.85 km, 22.29 min duration, 4% delay rate)
    2. *C1: Standard Urban Single Drops* (35.9% share, avg 9.48 km, 24.29 min duration, 4% delay rate)
    3. *C2: Mid-Distance Multi-Drop Batches* (21.2% share, avg 9.88 km, 30.66 min duration, 20% delay rate)
    4. *C3: Long-Haul Complex Dispatches* (12.2% share, avg 12.55 km, 36.34 min duration, 27% delay rate)

---

## 🛠️ Reproduction Guide
To run the automated pipeline and recompile all deliverables:
```bash
# 1. Run master pipeline
python src/poc_pipeline.py

# 2. Re-compile CA1 PDF Report
python src/generate_ca1_report.py

# 3. Re-compile CA1 PPTX Deck
python src/generate_ca1_presentation.py
```


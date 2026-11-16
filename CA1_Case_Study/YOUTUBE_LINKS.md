# DeliverOps — CA1 Case Study YouTube Video Deliverables

In accordance with academic project guidelines, **each of the four students in the group must independently record, present, and submit an individual YouTube video walkthrough** covering distinct technical dimensions of the CA1 Case Study.

---

## 📹 Individual Video Submissions

### Student 1
- **Name:** Atharva Waghmode (Lead)
- **Roll Number:** 59
- **Assigned Module:** Case Study Overview, Problem Formulation, Data Quality, and ETL Pipeline
- **YouTube Video Link:** PENDING

---

### Student 2
- **Name:** To be filled
- **Roll Number:** To be filled
- **Assigned Module:** Dimensional Data Warehouse Design, Star Schema, and Relational OLAP Operations
- **YouTube Video Link:** PENDING

---

### Student 3
- **Name:** To be filled
- **Roll Number:** To be filled
- **Assigned Module:** Predictive Regression Modeling & Delivery Duration Estimation
- **YouTube Video Link:** PENDING

---

### Student 4
- **Name:** To be filled
- **Roll Number:** To be filled
- **Assigned Module:** Long-Duration Classification, Operational Clustering & Business Insights
- **YouTube Video Link:** PENDING

---

## 📋 Suggested Individual Video Presentation Outlines

To ensure that each member presents a unique, in-depth technical contribution without duplicate content, the following 8-to-10 minute presentation scripts are recommended:

### Video Outline — Student 1: Data Engineering, Quality & ETL
1. **Introduction & Business Problem (2 mins):** Background on on-demand food logistics, SLA breach costs, and the DeliverOps vision.
2. **Dataset Audit & Telemetry Anomalies (3 mins):** Walkthrough of the 45,584 raw records, detailing corrupted GPS coordinates (<5° lat), inverted coordinate signs, and missing timestamps.
3. **ETL Cleansing & Haversine Distance (3 mins):** Code walkthrough of `src/common/preprocessing.py` and `src/common/feature_engineering.py`, explaining the 87.94% data retention (40,088 clean records) and midnight rollover prep time handling.
4. **Summary & Handover (1 min):** Highlighting the data quality gate prior to warehouse ingestion.

### Video Outline — Student 2: Dimensional Modeling & OLAP Analytics
1. **Introduction & Architectural Context (2 mins):** Purpose of dimensional modeling in decision support systems versus OLTP systems.
2. **Star Schema Deep Dive (3 mins):** Detailed inspection of `fact_delivery` and the 6 dimension tables (`dim_date`, `dim_courier`, `dim_location`, `dim_vehicle`, `dim_conditions`, `dim_order`), explaining surrogate keys, additive vs. semi-additive measures, and fact grain.
3. **Relational OLAP Demonstration (4 mins):** Interactive execution of SQL queries for Roll-up, Drill-down, Slice, Dice, and Pivot across weather and traffic conditions.
4. **Analytical Summary (1 min):** Interpretation of the Pivot heatmap showing 36.8-minute average delivery times during fog + traffic jams.

### Video Outline — Student 3: Continuous Predictive Regression
1. **Introduction & Problem Formulation (2 mins):** Why exact delivery arrival forecasting is necessary for dynamic SLA setting and customer satisfaction.
2. **Modeling Pipeline & Feature Selection (3 mins):** Explanation of 80/20 train-test split, column transformers (StandardScaler + OneHotEncoder), and strict data leakage prevention.
3. **Algorithm Benchmarking & Evaluation (4 mins):** Side-by-side comparison of Linear Regression (MAE: 4.75m), Decision Tree (MAE: 3.57m), and Random Forest (Champion MAE: 3.18m, R²: 0.816). Feature importance breakdown.
4. **Live Code Prediction (1 min):** Demonstrating single-order duration inference in Python.

### Video Outline — Student 4: Delay Classification & Operational Clustering
1. **Introduction & Class Imbalance (2 mins):** Explaining the 40-minute study delay threshold and the 10.32% minority class challenge.
2. **Classification Performance (3 mins):** Demonstrating why balanced class weights enabled Random Forest to reach 96.61% recall and 0.9716 ROC-AUC, catching virtually all potential SLA breaches. Sensitivity analysis across 35m and 45m.
3. **K-Means Operational Segmentation (3 mins):** Silhouette score curve (validating k=4 at 0.1481) and detailing the 4 operational personas (Short-Haul Quick Drops, Urban Singles, Multi-Drop Batches, Long-Haul Complex).
4. **Strategic Business Recommendations & Conclusion (2 mins):** Concrete platform policies for dynamic time buffering and smart order batching constraints.


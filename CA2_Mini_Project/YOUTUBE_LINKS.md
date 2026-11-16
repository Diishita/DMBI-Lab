# DeliverOps — CA2 Mini Project YouTube Video Deliverables

In accordance with academic project guidelines, **each of the four students in the group must independently record, present, and submit an individual YouTube video walkthrough** covering distinct technical dimensions of the CA2 Mini Project.

---

## 📹 Individual Video Submissions

### Student 1
- **Name:** Atharva Waghmode (Lead)
- **Roll Number:** 59
- **Assigned Module:** Application Overview, UI Architecture, and Overview Dashboard Walkthrough
- **YouTube Video Link:** PENDING

---

### Student 2
- **Name:** To be filled
- **Roll Number:** To be filled
- **Assigned Module:** Data Explorer, ETL Studio, and Interactive Cleansing Workflow
- **YouTube Video Link:** PENDING

---

### Student 3
- **Name:** To be filled
- **Roll Number:** To be filled
- **Assigned Module:** Relational OLAP Explorer, Interactive SQL Queries & Pivot Cross-Tabulations
- **YouTube Video Link:** PENDING

---

### Student 4
- **Name:** To be filled
- **Roll Number:** To be filled
- **Assigned Module:** Dual-Model Prediction Lab, Cluster Explorer & Business Insights
- **YouTube Video Link:** PENDING

---

## 📋 Suggested Individual Video Presentation Outlines

To ensure that each member presents a unique, in-depth technical contribution without duplicate content, the following 8-to-10 minute presentation scripts are recommended:

### Video Outline — Student 1: Application Architecture & Overview Dashboard
1. **Introduction & Project Scope (2 mins):** Introducing DeliverOps as an interactive decision support system for hyper-local food logistics; highlighting the 8 functional modules.
2. **Software Stack & Local Setup (2 mins):** Demonstrating `run_app.bat` and explaining the decoupled architecture (Streamlit, Plotly, SQLite, Scikit-learn).
3. **Overview Dashboard Demonstration (4 mins):** Live screen recording of the Overview Dashboard: exploring reactive KPI cards (40,088 volume, 26.50 min mean, 10.32% delay rate), zooming into the duration histogram, and explaining traffic density bars.
4. **Summary & Module Handover (1 min):** Concluding with the importance of real-time monitoring for logistics operators.

### Video Outline — Student 2: Data Explorer & ETL Studio
1. **Introduction to Data Governance (2 mins):** Why raw telemetry must be audited and cleaned before feeding business decisions.
2. **Interactive Data Explorer (3 mins):** Demonstrating multi-attribute filtering by City, Weather, Traffic, and Vehicle type; inspecting filtered records and schema tables.
3. **ETL Studio Deep Dive (4 mins):** Walking through the before-and-after data quality audit table (explaining how 3,495 corrupted GPS records were filtered and negative coordinate signs were corrected); demonstrating the interactive pipeline re-run trigger button.
4. **Conclusion (1 min):** Highlighting the data retention rate of 87.94%.

### Video Outline — Student 3: Relational OLAP Explorer
1. **Introduction to OLAP in DeliverOps (2 mins):** Explaining how dimensional modeling allows fast multi-axis aggregation over atomic order records.
2. **Warehouse Star Schema (2 mins):** Brief review of `fact_delivery` and the 6 dimension tables in SQLite (`deliverops.db`).
3. **Interactive OLAP Operations Walkthrough (5 mins):**
   - *Roll-up Tab:* Demonstrating monthly and day-of-week aggregations.
   - *Drill-down Tab:* Navigating from Metropolitan summary into courier age bands.
   - *Slice Tab:* Slicing by Foggy weather.
   - *Dice Tab:* Multi-dimensional filtering by City, Traffic, and Vehicle.
   - *Pivot Tab:* Interacting with the Weather vs. Traffic cross-tabulation heatmap.
4. **Summary (1 min):** Explaining how OLAP replaces complex ad-hoc queries for business users.

### Video Outline — Student 4: Prediction Lab, Cluster Explorer & Insights
1. **Introduction to Predictive Inference (2 mins):** Explaining the zero data leakage policy: predicting arrival times and delay breaches strictly at or after kitchen pickup.
2. **Prediction Lab Live Simulation (3 mins):** Manipulating sliders for travel distance, weather, traffic, and courier rating to observe dual-model outputs: predicted arrival minutes (Random Forest Regressor, MAE: 3.18m) and delay breach probability (Balanced Classifier, ROC-AUC: 0.9716).
3. **Cluster Explorer Demonstration (3 mins):** Explaining the 4 K-Means personas (Short-Haul Quick Drops, Urban Singles, Multi-Drop Batches, Long-Haul Complex) and viewing comparative bar charts.
4. **Business Insights & Export Hub (2 mins):** Reviewing evidence-based recommendations and downloading datasets and reports from the Export Hub.


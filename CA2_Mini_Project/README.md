# DeliverOps — CA2 Mini Project Deliverable

**Course:** Data Mining and Business Intelligence (DMBI)  
**Deliverable:** Continuous Assessment 2 (CA2) — Interactive Mini Project  
**Project Title:** DeliverOps: Interactive Food Delivery Analytics and Prediction System  
**Domain:** Hyper-Local Food Delivery Logistics & Operations  
**Academic Year:** 2026 – 2027  
**Student Lead:** Atharva Waghmode (Roll: 59, Div: D15A) | Group Submission (4 Students)  
**GitHub Repository:** [https://github.com/wagha-builds/dmbi_ca.git](https://github.com/wagha-builds/dmbi_ca.git)

---

## 📁 Deliverables Inventory

| Sub-Folder / File | Deliverable Type | Description | Status |
|---|---|---|:---:|
| [`app.py`](./app.py) | Streamlit Production Application | Full 8-module interactive business intelligence and machine learning web application | **Complete** |
| [`run_app.bat`](./run_app.bat) | Windows Launch Script | One-click batch runner to launch the Streamlit application locally | **Complete** |
| [`requirements.txt`](./requirements.txt) | Dependency Specifications | Minimal Python dependencies required to run CA2 locally | **Complete** |
| [`PPT/CA2_Presentation.pptx`](./PPT/CA2_Presentation.pptx) | Editable Presentation | Professional 17-slide 16:9 executive presentation deck built with `python-pptx` | **Complete** |
| [`POC/README.md`](./POC/README.md) | POC Guide & Documentation | Detailed walkthrough of application features, architecture, and verification steps | **Complete** |
| [`YOUTUBE_LINKS.md`](./YOUTUBE_LINKS.md) | Video Tracker & Scripts | Formatted video submission document containing 4 student placeholder entries (PENDING) and individual presentation outlines | **Complete** |

---

## 🚀 Quick Execution Guide

### Option 1: Double-Click Launcher (Windows)
Double-click `run_app.bat` in the `CA2_Mini_Project/` directory.

### Option 2: Terminal / Command Prompt
```bash
# Navigate to the repository root
cd C:\Users\Akshaya\Desktop\dmbi_ca

# Launch Streamlit app
python -m streamlit run CA2_Mini_Project/app.py
```
The application will launch on your local browser at `http://localhost:8501`.

---

## 🛠️ Technology Stack

| Layer | Component | Technology Selected | Purpose |
|---|---|---|---|
| **Language** | Core Runtime | Python 3.9+ | Unified language across pipeline, warehouse, and models |
| **Data Manipulation** | Dataframes & Math | Pandas, NumPy | Geospatial transformations, filtering, and data quality audits |
| **Data Visualization** | Interactive Plotting | Plotly Express & Graph Objects | Dynamic charting with zooming, hovering, and responsive layouts |
| **Machine Learning** | Model Pipelines | Scikit-learn, Joblib | Random Forest regression, delay classification, and K-Means clustering |
| **Data Warehouse** | Relational Star Schema | SQLite 3 | Embedded, zero-configuration relational warehouse (`deliverops.db`) |
| **Database Access** | SQL Execution | sqlite3, Pandas SQL | Executing OLAP roll-up, drill-down, slice, dice, and pivot queries |
| **Application UI** | Web Dashboard | Streamlit | Responsive, multi-page web interface with reactive controls |
| **Presentation** | Slides Generation | python-pptx | Programmatic generation of executive 16:9 slide decks |
| **Document Reporting** | PDF Compilation | ReportLab | Compilation of academic case study reports |

---

## 🖥️ Overview of Implemented Modules

1. **📊 Overview Dashboard**: Real-time KPI summary (Total Deliveries: `40,088`, Mean Duration: `26.50 min`, Median: `26.0 min`, 90th Pct: `40.0 min`, Mean Distance: `9.74 km`, Delay Rate: `10.32%`), interactive duration histograms, and traffic comparisons.
2. **🔍 Data Explorer**: Multi-dimensional filtering by City, Weather, Traffic, and Vehicle mode; descriptive summary tables and complete schema specifications.
3. **⚙️ ETL Studio**: Inspection of staging vs. cleaned data, before-and-after data quality tables (tracking 3,495 pruned corrupted GPS rows and coordinate sign corrections), and interactive pipeline re-run buttons.
4. **🧊 OLAP Explorer**: Real-time relational OLAP querying with live SQL code viewers:
   - *Roll-up:* Temporal aggregation by Month and Day of the Week.
   - *Drill-down:* Metropolitan city breakdown into traffic density and courier age cohorts.
   - *Slice:* Isolate dispatches under specific weather severity (e.g. Fog).
   - *Dice:* Sub-cube constrained by City, Traffic, and Vehicle type.
   - *Pivot:* Weather vs. Traffic cross-tabulation matrix with interactive heatmap.
5. **🔮 Prediction Lab**: Dual-model inference interface:
   - *Continuous Arrival Time Estimation:* Random Forest Regressor (MAE: `3.18 min`, R²: `0.816`).
   - *SLA Delay Risk Classifier (≥40 min):* Balanced Random Forest Classifier (ROC-AUC: `0.9716`, Recall: `96.61%`).
   - *Interactive Dispatch Advisory:* Generates automated alerts for dynamic time buffering (+8 min).
6. **🧩 Cluster Explorer**: K-Means operational personas (k=4) validated via peak Silhouette Score (`0.1481`), displaying persona cards (Short-Haul Quick Drops, Urban Singles, Multi-Drop Batches, Long-Haul Complex) and comparative bar graphs.
7. **💡 Business Insights**: Evidence-based findings detailing traffic penalties (+45.4% during Jam traffic), weather degradation (5.8m penalty in fog), multi-delivery batching risks (5x delay increase), and vehicle maintenance ROI (3.4m recovery).
8. **📥 Export & Reports**: One-click downloads for cleaned production CSV (40,088 rows), data quality summaries, OLAP pivot results, and executive reports.


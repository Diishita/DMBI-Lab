# DeliverOps — CA2 Mini Project Proof-of-Concept (POC)

This directory documents the primary Proof-of-Concept for **Continuous Assessment 2 (CA2) Mini Project**: the interactive, web-based decision support system **DeliverOps**.

---

## 🚀 How to Launch the Application

### Method 1: Windows One-Click Batch Script
Double-click:
```text
CA2_Mini_Project\run_app.bat
```
This batch file automatically verifies Python, activates the local environment if available, installs missing packages if necessary, and launches Streamlit in your default web browser.

### Method 2: Command Line Execution
```bash
# Navigate to the CA2 directory
cd C:\Users\Akshaya\Desktop\dmbi_ca\CA2_Mini_Project

# Run Streamlit
python -m streamlit run app.py
```
Or from the project root:
```bash
python -m streamlit run CA2_Mini_Project/app.py
```

The application will open automatically at `http://localhost:8501`.

---

## 🖥️ Implemented Functional Modules

The application delivers eight specialized modules accessible via the sidebar navigation:

1. **📊 Overview Dashboard**:
   - High-level KPI cards (Total records: 40,088; Mean duration: 26.50 min; Median: 26.0 min; 90th percentile: 40.0 min; Mean distance: 9.74 km; Delay rate: 10.32%).
   - Interactive Plotly visualizations: delivery duration distribution, average duration by traffic density, duration across weather conditions, and distance vs. duration scatter plot.

2. **🔍 Data Explorer**:
   - Interactive multi-attribute filtering by City, Weather, Traffic Density, and Vehicle Type.
   - Dynamic record counter, raw data table viewer, descriptive statistics, and schema specification.

3. **⚙️ ETL Studio**:
   - Inspection of raw data staging (`45,584` rows) versus processed analytics data (`40,088` rows).
   - Before-and-after data quality audit table highlighting GPS coordinate sign correction, removal of 3,495 zero/corrupted coordinates, and demographic imputation.
   - Interactive button to re-run the full cleansing pipeline dynamically.

4. **🧊 OLAP Explorer**:
   - Interactive SQL query tabs demonstrating:
     - **Roll-up**: Temporal aggregation by Month and Day of Week.
     - **Drill-down**: Navigation from Metropolitan city overview into traffic and courier age cohorts.
     - **Slice**: Filtering deliveries strictly under specific weather conditions (e.g. Fog).
     - **Dice**: Multi-dimensional sub-cube constrained by City, Traffic, and Vehicle.
     - **Pivot**: Cross-tabulation matrix of average delivery time across Weather vs. Traffic density with interactive heatmap.

5. **🔮 Prediction Lab**:
   - **Continuous Arrival Duration Regression**: Interactive sliders for Distance (km), Kitchen Prep Time, Courier Demographics, Vehicle Condition, Weather, Traffic, and Hour of Day. Outputs estimated delivery minutes via Random Forest Regressor (MAE: 3.18 min).
   - **Long-Duration Classification (≥40 min)**: Real-time delay risk probability scoring via Balanced Random Forest Classifier (ROC-AUC: 0.9716, Recall: 96.61%).
   - **Automated Dispatch Recommendation**: Recommends dynamic time buffers (+8 min) when delay probability exceeds risk thresholds.

6. **🧩 Cluster Explorer**:
   - K-Means operational clustering (k=4) validated via peak Silhouette Score (0.1481).
   - Interactive persona cards:
     - *Cluster 0: Short-Haul Quick Turnaround* (30.6% share, 8.85 km, 22.29 min avg, 4% delay rate).
     - *Cluster 1: Standard Urban Single Drops* (35.9% share, 9.48 km, 24.29 min avg, 4% delay rate).
     - *Cluster 2: Mid-Distance Multi-Drop Batches* (21.2% share, 9.88 km, 30.66 min avg, 20% delay rate).
     - *Cluster 3: Long-Haul Complex Dispatches* (12.2% share, 12.55 km, 36.34 min avg, 27% delay rate).
   - Multi-attribute profile comparison bar charts.

7. **💡 Business Insights**:
   - Evidence-based findings on traffic penalties (+45.4% during Jam traffic), weather degradation (5.8m penalty in fog), multi-delivery batching risks (5x delay increase), and vehicle maintenance ROI (3.4m recovery).

8. **📥 Export & Reports**:
   - One-click downloads for the cleaned CSV (40,088 rows), data quality summary report (CSV), OLAP query results (CSV), and executive summary report (TXT).


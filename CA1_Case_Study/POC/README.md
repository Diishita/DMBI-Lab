# DeliverOps — CA1 Case Study Proof-of-Concept (POC)

This folder contains the complete, reproducible Jupyter Notebook Proof-of-Concept for **DeliverOps: Business Intelligence and Data Mining Case Study for Food Delivery Operations**.

---

## 📁 Folder Contents

- **`CA1_POC.ipynb`**: Executable Jupyter Notebook demonstrating end-to-end data ingestion, ETL, data warehousing, OLAP queries, regression modeling, classification modeling, K-Means clustering, and real-time inference.
- **`README.md`**: Guide to running and validating the proof-of-concept.

---

## 🚀 Execution Instructions

### Option 1: Run via VS Code or Cursor
1. Open the repository root `dmbi_ca/` in VS Code / Cursor.
2. Select the Python kernel containing `pandas`, `scikit-learn`, `matplotlib`, `seaborn`, `sqlite3`, etc.
3. Open `CA1_Case_Study/POC/CA1_POC.ipynb` and click **Run All Cells**.

### Option 2: Run via Jupyter Notebook CLI
```bash
# Navigate to the repository root
cd C:\Users\Akshaya\Desktop\dmbi_ca

# Launch Jupyter Notebook
jupyter notebook CA1_Case_Study/POC/CA1_POC.ipynb
```

### Option 3: Execute via Command Line Runner
You can also run the master automated script that drives the underlying logic:
```bash
python src/poc_pipeline.py
```

---

## 📊 Pipeline Checkpoints Validated in Notebook

1. **Data Ingestion**: Loads the 45,584 raw delivery dispatches from `data/raw/food_delivery_dataset.csv`.
2. **Quality Audit**: Profiles null counts, duplicated records, and detects 3,640 zero/corrupted GPS coordinates.
3. **ETL Cleansing**: Corrects negative coordinate signs, filters GPS anomalies, and imputes courier metrics, retaining **40,088 high-integrity dispatches (87.94% retention)**.
4. **Feature Engineering**: Calculates Haversine distances, kitchen preparation times, peak-hour flags, and study targets.
5. **Data Warehouse**: Instantiates the 3NF Star Schema in SQLite (`data/warehouse/deliverops.db`) with `fact_delivery` (40,088 rows) and 6 dimensions.
6. **OLAP Operations**: Demonstrates Roll-up, Drill-down, Slice, Dice, and Pivot SQL queries.
7. **Predictive Regression**: Compares Linear Regression, Decision Tree, and Random Forest (Champion: MAE 3.18 min, R² 0.816).
8. **Long-Duration Classification**: Detects orders ≥40 minutes with 96.61% recall and 0.9716 ROC-AUC using balanced Random Forest.
9. **Operational Clustering**: Validates k=4 via peak Silhouette Score (0.1481) and maps 4 operational delivery archetypes.
10. **Live Dispatch Scoring**: Predicts delivery minutes and delay risk probabilities for arbitrary input dispatches.


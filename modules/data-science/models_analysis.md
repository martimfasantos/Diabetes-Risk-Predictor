# ⚙️ Experimental Summary

This report presents the results of multiple machine learning preprocessing pipelines and model optimization workflows using the [Optuna](https://optuna.org/) framework. A total of 200 hyperparameter optimization trials were performed per pipeline to identify the best-performing model and configuration.

| **Outliers Handling** | **PCA** | **Normalization** | **Balancing**  | **Best Model** | **Best Hyperparameters** | **Best Accuracy** |
| --- | --- | --- | --- | --- | --- | --- |
| Truncate | Yes | Z-Score | None | XGBoost | `n_estimators`: 200, `max_depth`: 5, `learning_rate`: 0.0378 | 0.737 
| Truncate | Yes | MinMax | None | XGBoost | `n_estimators`: 250, `max_depth`: 5, `learning_rate`: 0.1073 | 0.712
| Truncate | No | Z-Score | None | HistGradientBoosting | `max_depth`: 21, `learning_rate`: 0.0905 | **0.755**
| Truncate | No | MinMax | None | HistGradientBoosting | `max_depth`: 6, `learning_rate`: 0.0630 | 0.754
| Drop | Yes | Z-Score | None | HistGradientBoosting | `max_depth`: 5, `learning_rate`: 0.0693 | 0.736
| Drop | Yes | MinMax | None | XGBoost | `n_estimators`: 300, `max_depth`: 5, `learning_rate`: 0.0703 | 0.709
| Drop | No | Z-Score | None | HistGradientBoosting | `max_depth`: 6, `learning_rate`: 0.0919 | 0.753
| Drop | No | MinMax | None | HistGradientBoosting | `max_depth`: 18, `learning_rate`: 0.0543 | 0.753


## 🏆 Chosen Approach:

Based on the highest validation accuracy across all settings:
- **Outlier Handling**: Truncate rows with missing values
- **PCA**: Not applied
- **Normalization**: Z-Score standardization
- **Model**: Histogram-based Gradient Boosting
- **Hyperparameters**: `max_depth`: 21, `learning_rate`: 0.0905
- **Best Accuracy Achieved**: 0.755

---

### Key Insights:

- **PCA** did not significantly improve the performance across various strategies, suggesting that **preserving original feature space** was more informative for learning.
- **MinMax scaling** and **Z-Score normalization** performed similarly certain scenarios but **Z-Score normalization** lead to the best performance.
- **Balancing** the dataset was not applied in this analysis, as the dataset was already balanced.

# 📁 Folder Overview
---

## 📄 Files

### Group1DatasetRaw.onehotted.csv
> This is our raw data set, with Income Groups and Regions one-hotted

### correlation_to_all_lister.ipynb
> Creates a list of correlation coefficients between all features, rather than a matrix. Useful for datasets with too many features for a matrix.

### correlation_to_target_lister.ipynb
> Creates a list of correlation coefficients between all features and a target, rather than a matrix. Useful for datasets with too many features for a matrix.

### feature_importance_bagging.crossval.ipynb
> Uses BaggingRegressor and cross-validation to model the data and create a list of features sorted by importance.

### feature_importance_bagging.crossval.2.ipynb
> Alt version of BaggingRegressor that uses groups of features (health, environment, socioeconomic) instead of all, to see if performance improves.

### feature_importance_lightgbm.crossval.ipynb
> Uses LightGBMRegressor and cross-validation to model the data and create a list of features sorted by importance.

### feature_importance_lightgbm.crossval.2.ipynb
> Alt version of LightGBMRegressor that uses groups of features (health, environment, socioeconomic) instead of all, to see if performance improves.

### onehot_the_raw_file.ipynb
> Simple code to one-hot the two object columns in our raw dataset

### vif_autoremover.ipynb
> Successively calculates vif for all features, remove the feature with the highest vif, recalculates vif, until a vif threshold is reached.

### vif_compare_cv_onepass.ipynb
> Calculates average vif during a cross-validation and also vif with a single-pass, then compares the results.

---
#### Last update: 04.14.25

	


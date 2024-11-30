file.exists("C:/Users/12152/Desktop/MLCC寿命预测模型/时间序列（特征提取法）/时间序列3.5/6_SHAP/nomal_current_feature.csv")
# Sample dataset and model preparation
df <- read.csv("C:/Users/12152/Desktop/MLCC寿命预测模型/时间序列（特征提取法）/时间序列3.5/6_SHAP/nomal_current_feature.csv")  # Replace with the path to your CSV file

# Fit a model (Random Forest, for example)
library(randomForest)
model <- randomForest(ttf ~ I1 + k + t1 + I2 + t2, data = df)

# Create a vivid plot to analyze feature relationships
vivid::vivid(model, data = df)

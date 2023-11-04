import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error, r2_score
import matplotlib.pyplot as plt
import seaborn as sns
import pickle

# Load the dataset
data = pd.read_csv('C:\\Users\\manik\\Desktop\\New folder\\al.csv')

# Correlation analysis
corrmat = data.corr()
top_corr_features = corrmat.index
plt.figure(figsize=(11, 11))
g = sns.heatmap(data[top_corr_features].corr(), annot=True, cmap="RdYlGn")
#plt.show()

threshold = 0.5

selected_features = corrmat.columns[corrmat.abs().mean() > threshold]
print("Selected features are:", selected_features)

# Define the features (X) and the target (y)
X = data[['free sulfur dioxide', 'total sulfur dioxide', 'density', 'pH', 'sulphates', 'alcohol']]  # Include relevant features
y = data['quality']

# Split the data into training and testing sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Create a linear regression model
model = LinearRegression()

# Train the model
model.fit(X_train, y_train)

# Make predictions on the test data
y_pred = model.predict(X_test)

# Evaluate the model
mse = mean_squared_error(y_test, y_pred)
r2 = r2_score(y_test, y_pred)

print("Mean Squared Error:", mse)
print("R-squared (R2) Score:", r2)

# Save the trained model to a pickle file
with open('linear_regression_model.pkl', 'wb') as file:
    pickle.dump(model, file)



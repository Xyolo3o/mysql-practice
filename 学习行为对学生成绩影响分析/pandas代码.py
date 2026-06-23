import pandas as pd

df = pd.read_excel("Maths.xlsx")

#print(df.head())

#print(df.info())

#print(df.describe())

#print(df['age'].value_counts())

#print(df.shape)

print(df.groupby("studytime")["G3"].mean())



df = pd.read_excel("Portuguese.csv")

df.to_csv("Portuguese_real.csv", index=False)
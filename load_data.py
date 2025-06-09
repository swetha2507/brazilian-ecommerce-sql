import pandas as pd
import sqlite3
import os

# Connect to SQLite DB
conn = sqlite3.connect("brazilian_ecommerce.db")

# Define your data folder and CSVs
data_folder = "Data"
csv_files = {
    "customers": "olist_customers_dataset.csv",
    "geolocation": "olist_geolocation_dataset.csv",
    "order_items": "olist_order_items_dataset.csv",
    "payments": "olist_order_payments_dataset.csv",
    "reviews": "olist_order_reviews_dataset.csv",
    "orders": "olist_orders_dataset.csv",
    "products": "olist_products_dataset.csv",
    "sellers": "olist_sellers_dataset.csv",
    "category_translation": "product_category_name_translation.csv"
}

# Load and write each CSV into SQLite
for table_name, filename in csv_files.items():
    path = os.path.join(data_folder, filename)
    print(f"Loading {table_name}...")
    df = pd.read_csv(path)
    df.to_sql(table_name, conn, if_exists="replace", index=False)
    print(f"✅ {table_name} loaded with {len(df)} rows.")

conn.close()
print("All tables loaded successfully.")

# Brazilian E-Commerce SQL Analysis Project

This project uses the Brazilian E-Commerce Public Dataset from Olist to perform data analysis using SQL and Python. The goal is to explore customer behavior, sales trends, and delivery performance using real-world e-commerce data.

## Project Structure

brazilian-ecommerce-sql/
├── Data/ # Contains the raw CSV files from the dataset
├── queries/ # Folder for SQL query files
├── load_data.py # Python script to load CSVs into a SQLite database
├── brazilian_ecommerce.db # SQLite database file created from the CSVs
└── README.md # Project documentation


## Tools Used

- Python (pandas, sqlite3)
- SQLite database
- SQL (for data analysis)
- VS Code (as the development environment)

## How to Use

1. Place all CSV files inside the `Data/` folder.
2. Run the `load_data.py` script to create and populate the SQLite database:
python load_data.py
3. Use the `.sql` files in the `queries/` folder to analyze the data. You can run them using the SQLite extension in VS Code or through Python.

## Sample Questions Answered

- Which product categories generate the most revenue?
- Which states have the most orders?
- What is the average delivery time by region?
- What payment methods are most commonly used?
- How do review scores vary across orders?
- Who are the most active sellers?
- How has revenue changed over time?

## Dataset Source

This project is based on the public dataset available on Kaggle:  
https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce



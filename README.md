# Sales-Trend-Analysis-Using-Aggregations-in-MySQL

📌 Project Objective

The goal of this analysis was to transform raw transactional data from the online_sales dataset into actionable time-series insights.By aggregating data at the monthly level, we can identify seasonal trends, peak sales periods, and overall business growth.

🛠️ Tech Stack

Language: My SQL

Database: online_salesKey

Table: orders (Columns: order_id, order_date, amount, product_id)

🔍 Implementation Details

The analysis was performed using a single optimized SQL script utilizing the following techniques:

Date Extraction: Used EXTRACT(MONTH FROM ...) and EXTRACT(YEAR FROM ...) to bucket transactions into specific calendar months.

Revenue Aggregation: Applied SUM(amount) to calculate the total gross income per period.

Volume Tracking: Utilized COUNT(DISTINCT order_id) to ensure each customer checkout was counted only once, even if it contained multiple products.

Chronological Sorting: Ordered the results by Year and Month (DESC) to prioritize the most recent data.

📊 Sample Output
sales_year,sales_month,total_revenue,order_volume
2025,12,"$1,375.00",4
2025,11,"$2,230.00",5
2025,10,$245.25,3

💡 Key Insights

Seasonality: The data reveals a significant spike in November, likely driven by "Black Friday" or holiday promotions.

Accuracy: By using DISTINCT on the Order ID, the volume reflects actual transactions rather than individual line items.

use meesho

CREATE TABLE orders_1 (
    order_id SERIAL PRIMARY KEY,
    order_date DATE NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    product_id INT NOT NULL
);

INSERT INTO orders_1 (order_date, amount, product_id) VALUES
-- September: Average sales
('2025-09-05', 120.00, 101), ('2025-09-12', 45.50, 102), ('2025-09-25', 300.00, 105),
-- October: Slight dip
('2025-10-02', 85.00, 101), ('2025-10-15', 110.00, 103), ('2025-10-28', 50.25, 104),
-- November: Black Friday / Holiday spike
('2025-11-10', 250.00, 102), ('2025-11-24', 500.00, 106), ('2025-11-28', 750.00, 107),
('2025-11-29', 420.00, 101), ('2025-11-30', 310.00, 105),
-- December: End of year peak
('2025-12-05', 150.00, 102), ('2025-12-12', 210.00, 103), ('2025-12-20', 890.00, 108),
('2025-12-24', 125.00, 104);

select * from orders_1

SELECT 
    EXTRACT(YEAR FROM order_date) AS sales_year,
    EXTRACT(MONTH FROM order_date) AS sales_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume,
    ROUND(SUM(amount) / COUNT(DISTINCT order_id), 2) AS average_order_value
FROM 
    orders_1
GROUP BY 
    sales_year, 
    sales_month
ORDER BY 
    sales_year DESC, 
    sales_month DESC
LIMIT 12;


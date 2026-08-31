use retaildb;
show tables;
SELECT * FROM categories_cleaned;
SELECT * FROM customers_cleaned ;
SELECT * FROM dim2_products_cleaned ;
SELECT * FROM dim_stores_cleaned ;
SELECT * FROM inventory_cleaned ;
SELECT * FROM inventory_movement_cleaned ;
SELECT * FROM sales_order_items_cleaned ;
SELECT * FROM sales_orders_cleaned ;
SELECT * FROM suppliers_cleaned ;

/* Categories Analysis*/
/*Total Categories*/
SELECT COUNT(*) AS total_categories
FROM categories_cleaned;

/* Duplicate categories*/
SELECT category_name, COUNT(*) AS duplicate_count
FROM categories_cleaned
GROUP BY category_name
HAVING COUNT(*) > 1;

/*Categories Alphabetically*/
SELECT category_id, category_name
FROM categories_cleaned
ORDER BY category_name;

/*Category ID Duplicate Check*/
SELECT category_id, COUNT(*) AS count_id
FROM categories_cleaned
GROUP BY category_id
HAVING COUNT(*) > 1;

/* Customer Analysis*/
/*Total Customers*/
SELECT COUNT(*) AS total_customers
FROM customers_cleaned;
 
/*Check Unknown*/
SELECT COUNT(*) AS Unknown_Customers
FROM customers_cleaned
WHERE LOWER(customer_name) = 'unknown';

/*Customers by Gender*/
SELECT gender, COUNT(*) AS customer_count
FROM customers_cleaned
GROUP BY gender
ORDER BY customer_count DESC;

/*Customers by City*/
SELECT city, COUNT(*) AS customer_count
FROM customers_cleaned
GROUP BY city
ORDER BY customer_count DESC;

/*Top 10 Cities*/
SELECT city, COUNT(*) AS customer_count
FROM customers_cleaned
GROUP BY city
ORDER BY customer_count DESC
LIMIT 10;

/*Stores Analysis*/
/*Total Stores*/
SELECT COUNT(*) AS total_stores
FROM dim_stores_cleaned;

/*Stores by State*/
SELECT state, COUNT(*) AS store_count
FROM dim_stores_cleaned
GROUP BY state
ORDER BY store_count DESC;

/*Stores by City*/
SELECT city, COUNT(*) AS store_count
FROM dim_stores_cleaned
GROUP BY city
ORDER BY store_count DESC;

/*Store Types*/
SELECT store_type, COUNT(*) AS store_count
FROM dim_stores_cleaned
GROUP BY store_type
ORDER BY store_count DESC;

/*Duplicate Store IDs*/
SELECT store_id, COUNT(*) AS duplicate_count
FROM dim_stores_cleaned
GROUP BY store_id
HAVING COUNT(*) > 1;

/*Products Analysis*/
SELECT COUNT(*) AS total_products
FROM dim2_products_cleaned;

/*Products by Category*/
SELECT
    category_id,
    COUNT(*) AS product_count
FROM dim2_products_cleaned
GROUP BY category_id
ORDER BY product_count DESC;

/*Average Product Price*/
SELECT
    ROUND(AVG(unit_price_inr), 2) AS average_price
FROM dim2_products_cleaned;

/*Maximum Product Price*/
SELECT
    MAX(unit_price_inr) AS highest_price
FROM dim2_products_cleaned;

/*Minimum Product Price*/
SELECT
    MIN(unit_price_inr) AS lowest_price
FROM dim2_products_cleaned;

/*Top 10 Most Expensive Products*/
SELECT
    product_id,
    product_name,
    unit_price_inr
FROM dim2_products_cleaned
ORDER BY unit_price_inr DESC
LIMIT 10;

/*Duplicate Product IDs*/
SELECT product_id, COUNT(*) AS duplicate_count
FROM dim2_products_cleaned
GROUP BY product_id
HAVING COUNT(*) > 1;

/*Inventory Analysis*/
/*Total Inventory Records*/
SELECT COUNT(*) AS total_inventory_records
FROM inventory_cleaned;

/*Total Quantity in Inventory*/
SELECT SUM(stock_quantity) AS total_inventory_quantity
FROM inventory_cleaned;

/*Inventory by Store*/
SELECT
    store_id,
    SUM(stock_quantity) AS total_quantity
FROM inventory_cleaned
GROUP BY store_id
ORDER BY total_quantity DESC;

/*Inventory by Product*/
SELECT
    product_id,
    SUM(stock_quantity) AS total_quantity
FROM inventory_cleaned
GROUP BY product_id
ORDER BY total_quantity DESC
LIMIT 10;

/*Low Stock Products*/
SELECT *
FROM inventory_cleaned
WHERE stock_quantity <= 10
ORDER BY stock_quantity ASC;

/*Out of Stock Products*/
SELECT COUNT(*) AS out_of_stock
FROM inventory_cleaned
WHERE stock_quantity = 0;

/*Inventory Movement Analysis*/
/*Total Movements*/
SELECT COUNT(*) AS total_movements
FROM inventory_movement_cleaned;

/*Movement Type*/
SELECT
    movement_type,
    COUNT(*) AS movement_count
FROM inventory_movement_cleaned
GROUP BY movement_type;


/*Quantity by Movement Type*/
SELECT
    movement_type,
    SUM(quantity) AS total_quantity
FROM inventory_movement_cleaned
GROUP BY movement_type;

/*Monthly Inventory Movement*/
SELECT
    DATE_FORMAT(movement_date, '%Y-%m') AS month,
    SUM(quantity) AS total_quantity
FROM inventory_movement_cleaned
GROUP BY month
ORDER BY month;

/*Store-wise Movement*/
SELECT
    store_id,
    movement_type,
    SUM(quantity) AS total_quantity
FROM inventory_movement_cleaned
GROUP BY store_id, movement_type
ORDER BY store_id;

/*Sales Orders Analysis*/
/*Total Orders*/
SELECT COUNT(*) AS total_orders
FROM sales_orders_cleaned;

/*Total Sales*/
SELECT
    ROUND(SUM(total_amount_inr), 2) AS total_sales
FROM sales_orders_cleaned;

/*Average Order Value*/
SELECT
    ROUND(AVG(total_amount_inr), 2) AS average_order_value
FROM sales_orders_cleaned;

/*Highest Order Value*/
SELECT
    MAX(total_amount_inr) AS highest_order
FROM sales_orders_cleaned;

/*Lowest Order Value*/
SELECT
    MIN(total_amount_inr) AS lowest_order
FROM sales_orders_cleaned;

/*Monthly Sales*/
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    COUNT(*) AS total_orders,
    ROUND(SUM(total_amount_inr), 2) AS total_sales
FROM sales_orders_cleaned
GROUP BY month
ORDER BY month;

/*Sales by Store*/
SELECT
    store_id,
    COUNT(*) AS total_orders,
    ROUND(SUM(total_amount_inr), 2) AS total_sales
FROM sales_orders_cleaned
GROUP BY store_id
ORDER BY total_sales DESC;

/*Top 10 Orders*/
SELECT
    order_id,
    customer_id,
    store_id,
    order_date,
    total_amount_inr
FROM sales_orders_cleaned
ORDER BY total_amount_inr DESC
LIMIT 10;

/*Sales Order Items Analysis*/
/*Total Order Items*/
SELECT COUNT(*) AS total_order_items
FROM sales_order_items_cleaned;

/*Total Quantity Sold*/
SELECT SUM(quantity) AS total_quantity_sold
FROM sales_order_items_cleaned;

/*Quantity Sold by Product*/
SELECT
    product_id,
    SUM(quantity) AS quantity_sold
FROM sales_order_items_cleaned
GROUP BY product_id
ORDER BY quantity_sold DESC
LIMIT 10;

/*Top 10 Products by Revenue*/
SELECT
    product_id,
    ROUND(SUM(quantity * unit_price_inr), 2) AS revenue
FROM sales_order_items_cleaned
GROUP BY product_id
ORDER BY revenue DESC
LIMIT 10;

/*Average Quantity per Order Item*/
SELECT
    ROUND(AVG(quantity), 2) AS avg_quantity
FROM sales_order_items_cleaned;

/*Suppliers Analysis*/
/*Total Suppliers*/
SELECT COUNT(*) AS total_suppliers
FROM suppliers_cleaned;

/*Duplicate Supplier IDs*/
SELECT
    supplier_id,
    COUNT(*) AS duplicate_count
FROM suppliers_cleaned
GROUP BY supplier_id
HAVING COUNT(*) > 1;

/*JOIN Analysis*/
/*Category-wise Sales*/

SELECT
    c.category_name,
    COUNT(DISTINCT oi.order_id) AS total_orders,
    SUM(oi.quantity) AS total_quantity_sold,
    ROUND(SUM(oi.line_total_inr), 2) AS total_sales
FROM sales_order_items_cleaned oi
JOIN dim2_products_cleaned p
    ON oi.product_id = p.product_id
JOIN categories_cleaned c
    ON p.category_id = c.category_id
GROUP BY c.category_name
ORDER BY total_sales DESC;

/*Product-wise Sales*/
SELECT
    p.product_id,
    p.product_name,
    c.category_name,
    SUM(oi.quantity) AS quantity_sold,
    ROUND(SUM(oi.line_total_inr), 2) AS total_sales
FROM sales_order_items_cleaned oi
JOIN dim2_products_cleaned p
    ON oi.product_id = p.product_id
JOIN categories_cleaned c
    ON p.category_id = c.category_id
GROUP BY
    p.product_id,
    p.product_name,
    c.category_name
ORDER BY total_sales DESC;

/*Customer-wise Sales*/
SELECT
    c.customer_id,
    c.customer_name,
    c.customer_segment,
    COUNT(DISTINCT so.order_id) AS total_orders,
    ROUND(SUM(so.total_amount_inr), 2) AS total_spent
FROM customers_cleaned c
JOIN sales_orders_cleaned so
    ON c.customer_id = so.customer_id
GROUP BY
    c.customer_id,
    c.customer_name,
    c.customer_segment
ORDER BY total_spent DESC;

/*Customer Segment Performance*/
SELECT
    c.customer_segment,
    COUNT(DISTINCT c.customer_id) AS customers,
    COUNT(DISTINCT so.order_id) AS total_orders,
    ROUND(SUM(so.total_amount_inr), 2) AS total_sales,
    ROUND(AVG(so.total_amount_inr), 2) AS avg_order_value
FROM customers_cleaned c
JOIN sales_orders_cleaned so
    ON c.customer_id = so.customer_id
GROUP BY c.customer_segment
ORDER BY total_sales DESC;

/*Store Performance*/
SELECT
    s.store_id,
    s.store_name,
    s.city,
    s.state,
    s.store_type,
    COUNT(DISTINCT so.order_id) AS total_orders,
    ROUND(SUM(so.total_amount_inr), 2) AS total_sales,
    ROUND(AVG(so.total_amount_inr), 2) AS avg_order_value
FROM dim_stores_cleaned s
JOIN sales_orders_cleaned so
    ON s.store_id = so.store_id
GROUP BY
    s.store_id,
    s.store_name,
    s.city,
    s.state,
    s.store_type
ORDER BY total_sales DESC;

/*State-wise Sales*/
SELECT
    s.state,
    COUNT(DISTINCT so.order_id) AS total_orders,
    ROUND(SUM(so.total_amount_inr), 2) AS total_sales,
    ROUND(AVG(so.total_amount_inr), 2) AS avg_order_value
FROM sales_orders_cleaned so
JOIN dim_stores_cleaned s
    ON so.store_id = s.store_id
GROUP BY s.state
ORDER BY total_sales DESC;

/*City-wise Sales*/
SELECT
    s.city,
    s.state,
    COUNT(DISTINCT so.order_id) AS total_orders,
    ROUND(SUM(so.total_amount_inr), 2) AS total_sales
FROM sales_orders_cleaned so
JOIN dim_stores_cleaned s
    ON so.store_id = s.store_id
GROUP BY s.city, s.state
ORDER BY total_sales DESC;

/*Category + Product Detailed Analysis*/
SELECT
    c.category_name,
    p.product_name,
    SUM(oi.quantity) AS quantity_sold,
    ROUND(SUM(oi.line_total_inr), 2) AS revenue
FROM sales_order_items_cleaned oi
JOIN dim2_products_cleaned p
    ON oi.product_id = p.product_id
JOIN categories_cleaned c
    ON p.category_id = c.category_id
GROUP BY
    c.category_name,
    p.product_name
ORDER BY revenue DESC;

/*Product Sales vs Current Stock*/
SELECT
    p.product_id,
    p.product_name,
    sales.quantity_sold,
    inv.current_stock
FROM dim2_products_cleaned p

JOIN (
    SELECT
        product_id,
        SUM(quantity) AS quantity_sold
    FROM sales_order_items_cleaned
    GROUP BY product_id
) sales
    ON p.product_id = sales.product_id

JOIN (
    SELECT
        product_id,
        SUM(stock_quantity) AS current_stock
    FROM inventory_cleaned
    GROUP BY product_id
) inv
    ON p.product_id = inv.product_id

ORDER BY sales.quantity_sold DESC;

/*Store Sales vs Stock*/
SELECT
    s.store_id,
    s.store_name,
    sales.total_sales,
    inv.total_stock
FROM dim_stores_cleaned s

JOIN (
    SELECT
        store_id,
        SUM(total_amount_inr) AS total_sales
    FROM sales_orders_cleaned
    GROUP BY store_id
) sales
    ON s.store_id = sales.store_id

JOIN (
    SELECT
        store_id,
        SUM(stock_quantity) AS total_stock
    FROM inventory_cleaned
    GROUP BY store_id
) inv
    ON s.store_id = inv.store_id

ORDER BY sales.total_sales DESC;

/*Store Movement Analysis*/
SELECT
    s.store_name,
    im.movement_type,
    SUM(im.quantity) AS total_quantity
FROM inventory_movement_cleaned im
JOIN dim_stores_cleaned s
    ON im.store_id = s.store_id
GROUP BY
    s.store_name,
    im.movement_type
ORDER BY s.store_name;

/*Customer + Product + Category Analysis*/
SELECT
    c.customer_name,
    c.customer_segment,
    p.product_name,
    cat.category_name,
    SUM(oi.quantity) AS quantity_purchased,
    ROUND(SUM(oi.line_total_inr), 2) AS total_spent
FROM customers_cleaned c
JOIN sales_orders_cleaned so
    ON c.customer_id = so.customer_id
JOIN sales_order_items_cleaned oi
    ON so.order_id = oi.order_id
JOIN dim2_products_cleaned p
    ON oi.product_id = p.product_id
JOIN categories_cleaned cat
    ON p.category_id = cat.category_id
GROUP BY
    c.customer_id,
    c.customer_name,
    c.customer_segment,
    p.product_id,
    p.product_name,
    cat.category_name
ORDER BY total_spent DESC;









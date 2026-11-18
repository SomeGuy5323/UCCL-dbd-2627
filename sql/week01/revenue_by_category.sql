-- Widget: "Revenue by category" card.
--
-- Write a query that returns total revenue (sum of order_items.price) per
-- product category, in English (product_category_name_translation has the
-- English names -- product_category_name on its own is Portuguese).
--
-- Expected columns: category, total_revenue
-- Expected order: total_revenue DESC
--
-- Hint: this needs a three-table join: order_items -> products ->
-- product_category_name_translation.





-- 
SELECT pc.product_category_name_english, SUM(o.price) as total_revenue FROM order_items o
JOIN products p ON p.product_id = o.product_id
JOIN product_category_name_translation pc ON pc.product_category_name = p.product_category_name
GROUP BY pc.product_category_name_english
ORDER BY total_revenue DESC;



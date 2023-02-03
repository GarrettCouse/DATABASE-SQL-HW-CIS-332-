
SELECT vendor_name, vendor_contact_last_name, vendor_contact_first_name
FROM vendors 
ORDER BY vendor_contact_last_name, vendor_contact_first_name;

SELECT vendor_contact_last_name, vendor_contact_first_name, 
	CONCAT(vendor_contact_last_name, ',', ' ', vendor_contact_first_name) AS 'full_name'
FROM vendors
ORDER BY vendor_contact_last_name
LIMIT 41;

SELECT invoice_due_date AS 'DUE DATE' , invoice_total AS 'INVOICE TOTAL', invoice_total / 10 AS '10%', invoice_total * 10 AS 'Plus 10%'
FROM invoices
WHERE invoice_total >= 500 AND invoice_total <=1000
ORDER BY invoice_due_date;

SELECT invoice_number, invoice_total, payment_total + credit_total AS payment_credit_total,
invoice_total - payment_total - credit_total AS balance_due
FROM invoices
WHERE invoice_total - payment_total - credit_total > 50
ORDER BY invoice_total - payment_total - credit_total
LIMIT 5;




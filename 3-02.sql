
SELECT vendor_name, vendor_contact_last_name, vendor_contact_first_name
FROM vendors 
ORDER BY vendor_contact_last_name, vendor_contact_first_name;

SELECT vendor_contact_last_name, vendor_contact_first_name, 
	CONCAT(vendor_contact_last_name, ',', ' ', vendor_contact_first_name) AS 'full_name'
FROM vendors
ORDER BY vendor_contact_last_name;



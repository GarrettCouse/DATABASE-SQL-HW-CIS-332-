SELECT invoice_number, vendor_name
FROM vendors INNER JOIN invoices
    ON vendors.vendor_id = invoices.vendor_id
ORDER BY invoice_number;

SELECT invoice_number, vendor_name, invoice_due_date, invoice_total - payment_total - credit_total AS balance_due
FROM vendors v JOIN invoices i
    ON v.vendor_id = i.vendor_id
WHERE invoice_total - payment_total - credit_total > 0
ORDER BY invoice_due_date DESC;

SELECT vendor_name, default_account_number, account_description
FROM vendors v JOIN general_ledger_accounts g
	ON v.default_account_number = g.account_number
ORDER BY account_number, vendor_name;

-- 1 - Liste des contacts français -- 
SELECT CompanyNAME, ContactName, ContactTitle, Phone
FROM customers;

-- 2 - Produits vendus par le fournisseur « Exotic Liquids » --
SELECT ProductName, UnitPrice
FROM products
INNER JOIN suppliers
ON products.SupplierID = suppliers.SupplierID
WHERE CompanyName = 'Exotic Liquids'

-- 3 - Nombre de produits vendus par les fournisseurs Français dans l’ordre décroissant --
SELECT suppliers.CompanyName, count(Products.supplierID) AS Nbr_product
FROM suppliers 
INNER JOIN products 
ON suppliers.SupplierID = products.supplierID
WHERE suppliers.country = 'france'
GROUP BY suppliers.CompanyName
HAVING COUNT(products.supplierID)
ORDER BY Nbr_product DESC

-- 4 - Liste des clients Français ayant plus de 10 commandes --
SELECT COUNT(orders.CustomerID), CompanyName -- compte dans la colonne orders par la clef étrangère customerID et de la colonne companyname --
FROM customers  -- depuis la table customers
INNER JOIN orders -- join la table orders --
ON customers.CustomerID = orders.CustomerID -- par les clefs étrangères des tables customers et orders --
WHERE country = 'France' -- jusqu'à que country = ' france ' --
GROUP BY Companyname  -- regroupe par CompanyName--
HAVING COUNT(orders.customerID) > 10 -- condition de recherche, compte les commandes par les identifiants de client > 10 --

-- 5 - Liste des clients ayant un chiffre d’affaires > 30.000 --



-- 6 – Liste des pays dont les clients ont passé commande de produits fournis par « Exotic Liquids » -- à refaire
SELECT distinct customers.Country  -- selectionne la colonne country --
FROM customers -- depuis la table customers --
INNER JOIN orders -- join la table suppliers --
ON customers.CustomerID = orders.customerID -- regroupe les clefs étrangères de la table customers et orders -- 
INNER JOIN orderdetails -- join la table orderdetails --
ON orderdetails.orderID = orders.OrderID -- 
INNER JOIN products -- join la table products --
ON products.productID = orderdetails.ProductID -- regroupe les clefs étrangères de la table products et orders --
INNER JOIN suppliers -- join la table suppliers --
ON suppliers.supplierID = products.supplierID -- regroupe les clefs étrangères de la table supplier et product --
WHERE suppliers.CompanyName = 'Exotic Liquids' -- jusqu'à trouver companyname --
ORDER BY customers.Country

-- 7 - 


-- 8 – Montant des ventes de 1997 mois par mois --



-- 9 – Depuis quelle date le client « Du monde entier » n’a plus commandé ? -- à refaire
SELECT ShippedDate
FROM orders
INNER JOIN customers
ON orders.OrderID = custommers.customerID
WHERE CompanyName = 'Du monde entier'
ORDER BY ShippedDate DESC

-- 10 – Quel est le délai moyen de livraison en jours ? --
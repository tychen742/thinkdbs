-- USE adventureworks;
-- SELECT 
--    CustomerID, SalesOrderID, SubTotal, TotalDue
-- FROM
--     adventureworks.salesorderheader; 
    

-- USE adventureworks;
-- SELECT 
--     *
-- FROM
--     salesorderheader
-- WHERE
--     OrderDate BETWEEN '2001-07-01' AND '2001-7-31'
-- ;

-- SELECT 
--     *
-- FROM
--     purchaseorderheader
-- WHERE
--     OrderDate BETWEEN '2003-0101' AND '2003-12-31'
--         AND VendorID = 104
-- ;



-- USE adventureworks;

-- SELECT 
--     SalesOrderID,
--     CustomerID,
--     TerritoryID,
--     SubTotal AS Sub_Total,
--     TaxAmt,
--     TotalDue
-- FROM
--     salesorderheader
-- WHERE
--     OrderDate BETWEEN '2001-07-01' AND '2001-07-31'
-- ;


-- USE adventureworks;

-- SELECT 
--     T.Name,
--     SalesOrderID,
--     CustomerID,
--     S.TerritoryID,
--     SubTotal,
--     TaxAmt,
--     TotalDue
-- FROM
--     salesorderheader AS S
--         INNER JOIN
--     salesterritory AS T ON T.TerritoryID = S.TerritoryID
-- WHERE
--     OrderDate BETWEEN '2004-07-01' AND '2004-07-31'
-- ;


-- SELECT 
--     T.Name,
--     S.SalesOrderID,
--     S.CustomerID,
--     S.TerritoryID,
--     S.SubTotal,
--     S.TaxAmt,
--     S.TotalDue
-- FROM
--     salesorderheader AS S
--         INNER JOIN
--     salesterritory AS T ON T.TerritoryID = S.TerritoryID
-- WHERE
--     OrderDate BETWEEN '2004-07-01' AND '2004-07-31'
-- ;


-- USE adventureworks;

-- SELECT 
--     T.Name, CustomerID, SalesOrderID, SubTotal, TaxAmt, TotalDue
-- FROM
--     salesorderheader AS S
--         INNER JOIN
--     salesterritory AS T ON T.TerritoryID = S.TerritoryID
-- WHERE
--     OrderDate BETWEEN '2003-1-1' AND '2003-3-31'
-- ORDER BY T.Name , CustomerID;


-- USE adventureworks;

-- SELECT 
--     COUNT(*)
-- FROM
--     salesorderheader
-- WHERE
--     DueDate BETWEEN '2003-01-01' AND '2003-01-31'    
-- ;


-- USE adventureworks;

-- SELECT DISTINCT
--     (TerritoryID)
-- FROM
--     salesorderheader
-- ORDER BY TerritoryID
-- ;


-- USE adventureworks;

-- SELECT 
--     t.Name,
--     SUM(s.SubTotal) AS Sub_Total,
--     SUM(TaxAmt) AS Total_Taxes,
--     SUM(TotalDue) AS Total_Sales
-- FROM
--     salesorderheader AS s
--         INNER JOIN
--     salesterritory AS t ON s.TerritoryID = t.TerritoryID
-- GROUP BY t.Name
-- ORDER BY t.Name
-- ;


-- USE adventureworks;

-- SELECT 
--     CustomerID, SUM(TotalDue) AS Totals
-- FROM
--     salesorderheader
-- GROUP BY CustomerID
-- ORDER BY Totals DESC
-- ;


-- USE adventureworks;

-- SELECT 
--     CustomerID, SUM(TaxAmt) AS Totals
-- FROM
--     salesorderheader
-- WHERE
--     OrderDate BETWEEN '2003-01-01' AND '2003-12-31'
-- GROUP BY CustomerID
-- ORDER BY Totals DESC
-- LIMIT 10
-- ;

-- USE adventureworks;

-- SELECT 
--     CustomerID,
--     SalesOrderID,
--     CAST(SUM(SubTotal) AS CHAR)
-- FROM
--     salesorderheader
-- GROUP BY ROLLUP (CustomerID, SalesOrderID);


-- USE adventureworks;

-- SELECT 
--     SalesOrderID,
--     COUNT(SalesOrderDetailID) AS Line_Items,
--     SUM(UnitPrice * OrderQty) AS Sales_Order_Total
-- FROM
--     salesorderdetail
-- GROUP BY SalesOrderID
-- ;

-- USE adventureworks;

-- SELECT 
--     p.Name AS ProductName,
--     (OrderQty * UnitPrice) AS NonDiscountSales,
--     ((OrderQty * UnitPrice) * UnitPriceDiscount) AS Discounts
-- FROM
--     product AS p
--         INNER JOIN
--     salesorderdetail AS sod ON p.ProductID = sod.ProductID
-- ORDER BY ProductName DESC;




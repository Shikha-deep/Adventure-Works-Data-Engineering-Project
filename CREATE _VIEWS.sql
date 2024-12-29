-- Schema and Views created on Synapse for Gold layer and final dashboard in Power BI


CREATE SCHEMA gold;

-- CREATE VIEW FOR CALENDAR
CREATE VIEW gold.Calendar AS
SELECT * FROM
OPENROWSET(
    BULK 'https://shikhsadlsstorage.dfs.core.windows.net/silver/Calendar/Calendar.parquet/',
    FORMAT = 'PARQUET'
) AS CALENDAR;
GO

-- CREATE VIEW FOR CUSTOMERS
CREATE VIEW gold.Customers AS
SELECT * FROM
OPENROWSET(
    BULK 'https://shikhsadlsstorage.dfs.core.windows.net/silver/Customer/Customer.parquet/',
    FORMAT = 'PARQUET'
) AS Customer;
GO

-- CREATE VIEW FOR PRODUCT
CREATE VIEW gold.Product AS
SELECT * FROM
OPENROWSET(
    BULK 'https://shikhsadlsstorage.dfs.core.windows.net/silver/Product/Product.parquet/',
    FORMAT = 'PARQUET'
) AS Product;
GO

-- CREATE VIEW FOR TERRITORIES
CREATE VIEW gold.Territories AS
SELECT * FROM
OPENROWSET(
    BULK 'https://shikhsadlsstorage.dfs.core.windows.net/silver/Territor/Territories.parquet/',
    FORMAT = 'PARQUET'
) AS Territories;
GO

-- CREATE VIEW FOR RETURN
CREATE VIEW gold.Returnn AS
SELECT * FROM
OPENROWSET(
    BULK 'https://shikhsadlsstorage.dfs.core.windows.net/silver/Return/Return.parquet/',
    FORMAT = 'PARQUET'
) AS ReturnTable;
GO

-- CREATE VIEW FOR SUBCATEGORY
CREATE VIEW gold.Subcategory AS
SELECT * FROM
OPENROWSET(
    BULK 'https://shikhsadlsstorage.dfs.core.windows.net/silver/Subcategory/Subcategory.parquet/',
    FORMAT = 'PARQUET'
) AS Subcat;
GO

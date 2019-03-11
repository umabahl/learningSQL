CREATE TABLE teaShop(id INTEGER, price INTEGER, tea_type TEXT, ounces INTEGER, quantity INTEGER);

INSERT INTO teaShop VALUES(1, 5, "english breakfast", 16, 2);
INSERT INTO teaShop VALUES(2, 3, "jasmine", 10, 3);
INSERT INTO teaShop VALUES(3, 4, "camomile", 20, 5);
INSERT INTO teaShop VALUES(4, 6, "oolong", 16, 10);
INSERT INTO teaShop VALUES(5, 2, "herbal", 8, 5);

--all the items 
SELECT * FROM teaShop;

--order the items based on weight
SELECT * FROM teaShop ORDER BY ounces;

--total money made in the day
SELECT SUM(price * quantity) FROM teaShop;

--if the price is lower than 4, cheap, otherwise expensive
SELECT tea_type, CASE
    WHEN price < 4 THEN "cheap"
    WHEN price >= 4 THEN "expensive"
    END "relative_price"
    FROM teaShop
    ORDER BY relative_price;
    

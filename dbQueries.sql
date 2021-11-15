-- Get all Bullets in Game 1 
.header on
SELECT *
FROM    BulletData;

-- Loot Only Bullets 2
SELECT *
FROM    BulletData
WHERE   b_vendorKey = "Loot Only";

-- Found in Raid or Crafted 3
SELECT *
FROM    BulletData
WHERE   b_vendorKey = "FiRoC";

-- Get queried data
-- Hoever this will hold static data for now. 4
SELECT  *
FROM    BulletData
WHERE   b_caliburKey = "7.62x25mm"
ORDER BY b_dmg DESC;

-- Get Tracer Rounds 5
SELECT *
FROM BulletData
WHERE   b_special LIKE "%Tracer%";

-- Get all Vendors Info 6
SELECT *
FROM    Vendors;

-- Get Bullets Vendors Sell 7
SELECT *
FROM Vendors, BulletData
WHERE   v_vendorKey = b_vendorKey;

-- SMG Caliburs 8
SELECT *
FROM BulletData, Caliburs
WHERE   c_caliburKey = b_caliburKey
AND     c_gunType LIKE "%SMGs%";

-- Pistol Caliburs 9
SELECT *
FROM BulletData, Caliburs
WHERE   c_caliburKey = b_caliburKey
AND     c_gunType LIKE "%Pistol%";

-- AR Caliburs 10
SELECT *
FROM BulletData, Caliburs
WHERE   c_caliburKey = b_caliburKey
AND     c_gunType LIKE "%AR%";

-- Assault Carbine Caliburs 11
SELECT *
FROM BulletData, Caliburs
WHERE   c_caliburKey = b_caliburKey
AND     c_gunType LIKE "%AC%";

-- Marksman Rifles Caliburs 12
SELECT *
FROM BulletData, Caliburs
WHERE   c_caliburKey = b_caliburKey
AND     c_gunType LIKE "%DMRs%";

-- Sniper Rifles Caliburs 13 
SELECT *
FROM BulletData, Caliburs
WHERE   c_caliburKey = b_caliburKey
AND     c_gunType LIKE "%Sniper Rifle%";

-- SG Shells - Buckshot 14
SELECT *
FROM BulletData, Caliburs
WHERE   c_caliburKey = b_caliburKey
AND     c_gunType LIKE "%SG%"
AND     b_name LIKE "%Buckshot%";

-- SG Shells - Slugs 15
SELECT *
FROM BulletData, Caliburs
WHERE   c_caliburKey = b_caliburKey
AND     c_gunType LIKE "%SG%"
AND     b_name LIKE "%Slug%";

----------- 16
SELECT DISTINCT  p_vendorKey ,b_name, b_dmg, p_price, p_currency
FROM    BulletData, Prices
WHERE   b_name = p_calName
AND     p_vendorKey = "Prapor"
GROUP BY b_name
ORDER BY p_price DESC;

-- 17
SELECT DISTINCT  p_vendorKey ,b_name, b_dmg, p_price, p_currency
FROM    BulletData, Prices
WHERE   b_name = p_calName
AND     p_vendorKey = "Prapor"
GROUP BY b_name
ORDER BY b_dmg DESC;

-- List Prices 18
SELECT  *
FROM    Prices;

------------- 19
SELECT  *
FROM    Prices
WHERE   p_vendorKey = "Prapor";

-- List all guns
Select *
FROM GunType;

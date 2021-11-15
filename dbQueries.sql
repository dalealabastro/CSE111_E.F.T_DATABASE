-- Get all Bullets in Game
.header on
SELECT *
FROM    BulletData;

-- Get queried data
-- Hoever this will hold static data for now. 1
SELECT  *
FROM    BulletData
WHERE   b_caliburKey = "7.62x25mm"
ORDER BY b_dmg DESC;

-- Get Tracer Rounds 2
SELECT *
FROM BulletData
WHERE   b_special LIKE "%Tracer%";

-- Get all Vendors Info 3
SELECT *
FROM    Vendors;

-- Get Bullets Vendors Sell 4
SELECT *
FROM Vendors, BulletData
WHERE   v_vendorKey = b_vendorKey

-- SMG Caliburs 5
SELECT *
FROM BulletData, Caliburs
WHERE   c_caliburKey = b_caliburKey
AND     c_gunType LIKE "%SMGs%";

-- Pistol Caliburs 6
SELECT *
FROM BulletData, Caliburs
WHERE   c_caliburKey = b_caliburKey
AND     c_gunType LIKE "%Pistol%";

-- AR Caliburs 7
SELECT *
FROM BulletData, Caliburs
WHERE   c_caliburKey = b_caliburKey
AND     c_gunType LIKE "%AR%";

-- Assault Carbine Caliburs 8
SELECT *
FROM BulletData, Caliburs
WHERE   c_caliburKey = b_caliburKey
AND     c_gunType LIKE "%AC%";

-- Marksman Rifles Caliburs 9
SELECT *
FROM BulletData, Caliburs
WHERE   c_caliburKey = b_caliburKey
AND     c_gunType LIKE "%DMRs%";

-- Sniper Rifles Caliburs 10
SELECT *
FROM BulletData, Caliburs
WHERE   c_caliburKey = b_caliburKey
AND     c_gunType LIKE "%Sniper Rifle%";

-- SG Shells - Buckshot 11
SELECT *
FROM BulletData, Caliburs
WHERE   c_caliburKey = b_caliburKey
AND     c_gunType LIKE "%SG%"
AND     b_name LIKE "%Buckshot%";

-- SG Shells - Slugs 12
SELECT *
FROM BulletData, Caliburs
WHERE   c_caliburKey = b_caliburKey
AND     c_gunType LIKE "%SG%"
AND     b_name LIKE "%Slug%";


-- Grenade throwable -- 13
SELECT *
FROM GrenadeData, Vendors, Prices
WHERE g_name = p_calName
AND  v_vendorKey = p_vendorKey

-- High dmg for cheapest price --

SELECT *

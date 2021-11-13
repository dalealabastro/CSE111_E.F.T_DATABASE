-- Get all Bullets in Game
.header on
SELECT *
FROM    BulletData;

-- Get queried data
-- Hoever this will hold static data for now.
SELECT  *
FROM    BulletData
WHERE   b_caliburKey = "7.62x25mm"
ORDER BY b_dmg DESC;

-- Get Tracer Rounds
SELECT *
FROM BulletData
WHERE   b_special LIKE "%Tracer%";

-- Get all Vendors Info
SELECT *
FROM    Vendors;

-- Get Bullets Vendors Sell
SELECT *
FROM Vendors, BulletData
WHERE   v_vendorKey = b_vendorKey

-- SMG Caliburs
SELECT *
FROM BulletData, Caliburs
WHERE   c_caliburKey = b_caliburKey
AND     c_gunType LIKE "%SMGs%";

-- Pistol Caliburs
SELECT *
FROM BulletData, Caliburs
WHERE   c_caliburKey = b_caliburKey
AND     c_gunType LIKE "%Pistol%";

-- AR Caliburs
SELECT *
FROM BulletData, Caliburs
WHERE   c_caliburKey = b_caliburKey
AND     c_gunType LIKE "%AR%";

-- Assault Carbine Caliburs
SELECT *
FROM BulletData, Caliburs
WHERE   c_caliburKey = b_caliburKey
AND     c_gunType LIKE "%AC%";

-- Marksman Rifles Caliburs
SELECT *
FROM BulletData, Caliburs
WHERE   c_caliburKey = b_caliburKey
AND     c_gunType LIKE "%DMRs%";

-- Sniper Rifles Caliburs
SELECT *
FROM BulletData, Caliburs
WHERE   c_caliburKey = b_caliburKey
AND     c_gunType LIKE "%Sniper Rifle%";

-- SG Shells - Buckshot
SELECT *
FROM BulletData, Caliburs
WHERE   c_caliburKey = b_caliburKey
AND     c_gunType LIKE "%SG%"
AND     b_name LIKE "%Buckshot%";

-- SG Shells - Slugs
SELECT *
FROM BulletData, Caliburs
WHERE   c_caliburKey = b_caliburKey
AND     c_gunType LIKE "%SG%"
AND     b_name LIKE "%Slug%";

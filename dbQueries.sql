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

-- Get all Vendors Info
SELECT *
FROM    Vendors;

-- Get Bullets Vendors Sell
SELECT *
FROM Vendors, BulletData
WHERE   v_vendorKey = b_vendorKey
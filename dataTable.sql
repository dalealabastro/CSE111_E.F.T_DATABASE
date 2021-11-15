-- Game Version: v0.12.11.6.15092

-- Creating Tables

CREATE TABLE GunType (
    t_gunCalibur VARCHAR(255),
    t_gunName VARCHAR(255),
    t_fireMode VARCHAR(255),
    t_RoF INTEGER,
    t_gunType VARCHAR(255)
);

CREATE TABLE Vendors (
    v_vendorKey VARCHAR(255),
    v_vendorName VARCHAR(255)
);

CREATE TABLE Caliburs (
    c_gunType VARCHAR(255),
    c_caliburKey VARCHAR (255),
    c_calName VARCHAR (255) 
);

CREATE TABLE BulletData(
    b_caliburKey VARCHAR(255),
    b_name VARCHAR(255),
    b_dmg VARCHAR(255),
    b_penPwr FLOAT,
    b_armorDmg FLOAT,
    b_accMod FLOAT,
    b_recMod FLOAT,
    b_fragChance FLOAT,
    b_riccChn FLOAT,
    b_lBld FLOAT,
    b_hBld FLOAT,
    b_velocity INTEGER,
    b_special VARCHAR(255),
    b_vendorKey VARCHAR(255)
);

CREATE TABLE Prices (
    p_priceKey VARCHAR(255),
    p_vendorKey VARCHAR(255),
    p_vendorLevel VARCHAR(225),
    p_calName VARCHAR(255),
    p_currency VARCHAR(255),
    p_price INTEGER(255)
);

CREATE TABLE GrenadeData (
    g_priceKey VARCHAR(255),
    g_typeKey VARCHAR(255),
    g_expDelay VARCHAR(255),
    g_fragCount INTEGER,
    g_fragDmg INTEGER,
    g_radius VARCHAR(255)
);

----------------------------------
-- .300 Blackout
INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES (".300mm", "MCX","Single Full-Auto", 800, "AR");

-------------------------------------------
-- 12.7x55mm
INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("12.7x55mm", "ASh-12","Single Full-Auto", 650, "AR");

--------------------------------------
-- 5.45x39
INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("5.45x39mm", "AK-105","Single Full-Auto", 600, "AR");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("5.45x39mm", "AK-74","Single Full-Auto", 650, "AR");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("5.45x39mm", "AK-74M","Single Full-Auto", 650, "AR");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("5.45x39mm", "AK-74N","Single Full-Auto", 650, "AR");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("5.45x39mm", "AKS-74","Single Full-Auto", 650, "AR");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("5.45x39mm", "AKS-74N","Single Full-Auto", 650, "AR");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("5.45x39mm", "AKS-74U","Single Full-Auto", 650, "AR");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("5.45x39mm", "AKS-74UB","Single Full-Auto", 650, "AR");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("5.45x39mm", "AKS-74UN","Single Full-Auto", 650, "AR");

---------------------------------------------
-- 5.56 Guns
INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("5.56x45mm", "ADAR 2-15","Single", 800, "AR");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("5.56x45mm", "AK-101","Single Full-Auto", 650, "AR");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("5.56x45mm", "AK-102","Single Full-Auto", 600, "AR");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("5.56x45mm", "DT MDR 5.56","Single Full-Auto", 650, "AR");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("5.56x45mm", "HK 416A5","Single Full-Auto", 850, "AR");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("5.56x45mm", "M4A1","Single Full-Auto", 800, "AR");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("5.56x45mm", "TX-15 DML","Single", 800, "AR");

---------------------------------------------------
-- 7.62x39mm

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("7.62x39mm", "AKM","Single Full-Auto", 600, "AR");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("7.62x39mm", "AKMN","Single Full-Auto", 600, "AR");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("7.62x39mm", "AKMS","Single Full-Auto", 600, "AR");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("7.62x39mm", "AKMSN","Single Full-Auto", 600, "AR");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("7.62x39mm", "Mk. 47","Single Full-Auto", 650, "AR");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("7.62x39mm", "Vepr KM / VPO-136","Single Full-Auto", 600, "AR");

-----------------------------------------------------------------------
-- 7.62x51mm
INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("7.62x51mm", "DT MDR .308","Single Full-Auto", 650, "AR");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("7.62x51mm", "SA-58","Single Full-Auto", 700, "AR");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("7.62x51mm", "Vepr AKM / VPO-209","Single", 600, "AR");

-----------------------------------------------------------------------
-- 9x39mm
INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("9x39mm", "AS Val","Single Full-Auto", 650, "AR");

------------------------------------------------------------------------
-- Assualt Carbines

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("7.62x39mm", "OP-SKS","Single", 40, "AC");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("7.62x39mm", "SKS","Single", 40, "AC");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("7.62x39mm", "Vepr Hunter / VPO-101","Single", 600, "AC");

-----------------------------------------------------------------------
-- LMG

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("5.45x39mm", "RPK","Single Full-Auto", 650, "LMG");

-----------------------------------------------------------------------
-- SMGs
INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("9x19mm", "MP5","Single 3-Round Burst Full-Auto", 800, "SMGs");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("9x19mm", "MP5K-N","Single 3-Round Burst Full-Auto", 900, "SMGs");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("4.6x30mm", "MP7A1","Single Full-Auto", 950, "SMGs");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("4.6x30mm", "MP7A2","Single Full-Auto", 950, "SMGs");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("9x19mm", "MP9","Single Full-Auto", 900, "SMGs");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("9x19mm", "MP9-N","Single Full-Auto", 1100, "SMGs");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("9x19mm", "MPX","Single Full-Auto", 850, "SMGs");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("5.7x28mm", "MP9","Single Full-Auto", 900, "SMGs");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("9x19mm", "PP-19-01 Vityaz-SN","Single Full-Auto", 700, "SMGs");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("9x19mm", "PP-9 'Klin'","Single Full-Auto", 1000, "SMGs");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("9x18mm", "PP-91 'Kedr'","Single Full-Auto", 900, "SMGs");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("9x18mm", "PP-91 'Kedr-B'","Single Full-Auto", 900, "SMGs");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("7.62x25mm", "PPSH-41","Single Full-Auto", 1000, "SMGs");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("9x19mm", "Saiga-9","Single", 650, "SMGs");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("9x19mm", "STM-9","Single", 800, "SMGs");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES (".45 ACP", "UMP 45","Single Full-Auto", 600, "SMGs");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES (".45 ACP", "Vector .45","Single 2-round Burst Full-Auto", 1100, "SMGs");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("9x19mm", "Vector 9x19","Single 2-round Burst Full-Auto", 950, "SMGs");

------------------------------------------------------------------------------
-- SG
INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("12/70mm", "590A1","Single (Pump action)", 30, "SG");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("12/70mm", "M879","Single (Pump action)", 30, "SG");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("12/70mm", "MP-133","Single (Pump action)", 30, "SG");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("12/70mm", "MP-153","Single", 40, "SG");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("12/70mm", "MP-155","Single", 40, "SG");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("12/70mm", "Saiga-12","Single", 40, "SG");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("20/70mm", "TOZ-106","Single", 30, "SG (Bolt action)");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("23/75mm", "KS23M","Single", 30, "SG (Pump action)");

-------------------------------------------------------------------------
-- DMR
INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("7.62x51mm", "M1A", "Single", 700, "DMR");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES (".338", "Mk-18", "Single", 30, "DMR");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("7.62x51mm", "RFB", "Single", 700, "DMR");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("7.62x51mm", "RSASS", "Single", 700, "DMR");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("7.62x51mm", "SR-25", "Single", 700, "DMR");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("7.62x54Rmm", "SVDS", "Single", 700, "DMR");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("9.39mm", "VSS", "Single Full-Auto", 900, "DMR");

------------------------------------------------------------------------------------
-- Sniper Rifle
INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("7.62x51mm", "DVL-10", "Single (Bolt action)", 30, "Sniper Rifle");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("7.62x51mm", "M700", "Single (Bolt action)", 30, "Sniper Rifle");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("7.62x54Rmm", "Mosin", "Single (Bolt action)", 30, "Sniper Rifle");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("7.62x54Rmm", "Mosin Inf.", "Single (Bolt action)", 30, "Sniper Rifle");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("7.62x54Rmm", "SV-98", "Single (Bolt action)", 30, "Sniper Rifle");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("7.62x51mm", "T-5000", "Single (Bolt action)", 30, "Sniper Rifle");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES (".366", "VPO-215", "Single (Bolt action)", 30, "Sniper Rifle");

-----------------------------------------------------------------------------------
-- Pistol
INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("9x18mm", "APB", "Single Full-Auto", 750, "Pistol");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("9x18mm", "APS", "Single Full-Auto", 750, "Pistol");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("5.7x28mm", "FN 5-7", "Single", 30, "Pistol");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("9x19mm", "GLOCK17", "Single", 30, "Pistol");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("9x19mm", "GLOCK18C", "Single Full-Auto", 1200, "Pistol");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES (".45 ACP", "M1911A1", "Single", 30, "Pistol");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES (".45 ACP", "M45A1", "Single", 30, "Pistol");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("9x19mm", "M9A3", "Single", 30, "Pistol");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("9x19mm", "MP-443 'Grach'", "Single", 30, "Pistol");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("9x19mm", "MP-443 'Grach'", "Single", 30, "Pistol");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("9x19mm", "P226R", "Single", 30, "Pistol");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("9x18mm", "PB pistol", "Single", 30, "Pistol");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("9x19mm", "PL-15", "Single", 30, "Pistol");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("9x18mm", "PM (t) pistol", "Single", 30, "Pistol");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("9x18mm", "PM pistol", "Single", 30, "Pistol");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("9x21mm", "SR-1MP Gyurza", "Single", 30, "Pistol");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("7.62x25mm", "TT pistol", "Single", 30, "Pistol");

INSERT INTO GunType (t_gunCalibur, t_gunName, t_fireMode, t_RoF, t_gunType)
VALUES ("7.62x25mm", "TT pistol (gold)", "Single", 30, "Pistol");


------------------------------------------------------
-- Populate the Vendors
INSERT INTO Vendors (v_vendorKey, v_vendorName)
VALUES ("Prapor", "Pavel Yegorovich Romanenko");

INSERT INTO Vendors (v_vendorKey, v_vendorName)
VALUES ("Therapist", "Elvira Khabibullina");

INSERT INTO Vendors (v_vendorKey, v_vendorName)
VALUES ("Fence", "Unknown");

INSERT INTO Vendors (v_vendorKey, v_vendorName)
VALUES ("Skier", "Alexander Fyodorovich Kiselyov");

INSERT INTO Vendors (v_vendorKey, v_vendorName)
VALUES ("Peacekeeper", "Tadeusz Pilsudski");

INSERT INTO Vendors (v_vendorKey, v_vendorName)
VALUES ("Mechanic", "Sergey Arsenyevich Samoylov");

INSERT INTO Vendors (v_vendorKey, v_vendorName)
VALUES ("Ragman", "Abramyan Sarkisivich Arshavir");

INSERT INTO Vendors (v_vendorKey, v_vendorName)
VALUES ("Jaeger", "Ivan Egorovich Kharitonov ");

-- Grenades 
INSERT INTO GrenadeData (g_priceKey, g_typeKey, g_expDelay, g_fragCount, g_fragDmg, g_radius)
VALUES ("F-1", "Frag Grenade", "3.5 seconds", 90, 80, "3 - 7 meters");

INSERT INTO GrenadeData (g_priceKey, g_typeKey, g_expDelay, g_fragCount, g_fragDmg, g_radius)
VALUES ("M67", "Frag Grenade", "5 seconds", 75, 110, "3 - 8 meters");

INSERT INTO GrenadeData (g_priceKey, g_typeKey, g_expDelay, g_fragCount, g_fragDmg, g_radius)
VALUES ("RGD-5", "Frag Grenade", "3.5 seconds", 70, 100, "3 - 7 meters");

INSERT INTO GrenadeData (g_priceKey, g_typeKey, g_expDelay, g_fragCount, g_fragDmg, g_radius)
VALUES ("VOG-17", "Frag Grenade", "3 seconds", 100, 120, "2 - 6 meters");

INSERT INTO GrenadeData (g_priceKey, g_typeKey, g_expDelay, g_fragCount, g_fragDmg, g_radius)
VALUES ("VOG-25", "Frag Grenade", "2 seconds", 35, 65, "2 - 7 meters");

INSERT INTO GrenadeData (g_priceKey, g_typeKey, g_expDelay, g_fragCount, g_fragDmg, g_radius)
VALUES ("RDG-2B", "Smoke Grenade", "3.5 seconds", 0, 0, "N/A");

INSERT INTO GrenadeData (g_priceKey, g_typeKey, g_expDelay, g_fragCount, g_fragDmg, g_radius)
VALUES ("Zarya", "Stun Grenade", "2 seconds", 0, 0, "N/A");

-------------------------------------------------------------------------------
-- Caliburs: Pistols / SMGs


-- Bullet: 7.62x25mm

INSERT INTO Caliburs (c_gunType, c_caliburKey, c_calName)
VALUES ("Pistol / SMGs", "7.62x25mm", "Tokarev");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("7.62x25mm", "TT AKBS", '58', 12, 0.32, 0.15, -0.15, 0.25, 0.065, 0, 0, 425, "", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("7.62x25mm", "TT FMJ43", '60', 11, 0.29, 0, 0, 0.25, 0.065, 0, 0, 427, "", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("7.62x25mm", "TT LRN", '64', 8, 0.28, 0.05, -0.05, 0.35, 0.15, 0.05, 0.10, 375, "", "Jaeger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("7.62x25mm", "TT LRNPC", '66', 7, 0.27, 0.10, -0.10, 0.35, 0.05, 0.15, 0.10, 385, "", "Jaeger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("7.62x25mm", "TT P gl", '58', 14, 0.32, 0, 0, 0.25, 0.065, 0, 0, 430, "", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("7.62x25mm", "TT Pst gzh", '50', 25, 0.36, 0, 0, 0.20, 0.10, 0, 0, 430, "", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("7.62x25mm", "TT PT gzh", '55', 16, 0.34, -10, 0, 0.166, 0.10, 0, 0, 415, "Tracer(red)", "Prapor");

-------------------
INSERT INTO Caliburs (c_gunType, c_caliburKey, c_calName)
VALUES ("Pistol / SMGs", "9x18mm", "Makarov");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("9x18mm", "PM BZhT gzh", '53', 18, 0.28, 0, 0, 0.17, 0.095, 0.15, 0, 325, "Subsonic", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("9x18mm", "PM P gzh", '50', 5, 0.16, 0, 0, 0.25, 0.065, 0.10, 0, 302, "Subsonic", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("9x18mm", "PM PBM gzh", '40', 28, 0.30, 0, 0.04, 0.16, 0.09, 0, 0, 519, "", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("9x18mm", "PMM PstM gzh", '58', 24, 0.33, 0, 0.05, 0.17, 0.075, 0, 0, 420, "Overpressure", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("9x18mm", "PM PPe gzh", '61', 7, 0.15, 0, 0, 0.35, 0.05, 0.15, 0, 297, "Subsonic", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("9x18mm", "PM PPT gzh", '59', 8, 0.22, -0.05, -0.07, 0.166, 0.10, 0.15, 0, 301, "Subsonic/Tracer(red)", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("9x18mm", "PM PRS gs", '58', 6, 0.16, 0, 0, 0.30, 0.005, 0.15, 0, 302, "Subsonic", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("9x18mm", "PM PS gs PPO", '55', 6, 0.16, 0, 0, 0.25, 0.03, 0.15, 0, 330, "Subsonic", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("9x18mm", "PM PSO gzh", '54', 5, 0.13, 0.10, 0, 0.35, 0.065, 0.15, 0, 315, "Subsonic", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("9x18mm", "PM Pst gzh", '50', 12, 0.26, 0, 0, 0.20, 0.10, 0, 0, 298, "Subsonic", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("9x18mm", "PM PSV", '69', 3, 0.05, 0, 0, 0.40, 0.01, 0.10, 0, 280, "Subsonic", "Jaeger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("9x18mm", "PM SP7 gzh", '77', 2, 0.05, 0, 0, 0.02, 0.05, 0.25, 0.10, 420, "", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("9x18mm", "PM SP8 gzh", '67', 1, 0.02, 0, 0, 0.60, 0.05, 0.15, 0.10, 250, "Subsonic", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("9x18mm", "PM RG028", '65', 13, 0.26, 0, 0, 0.02, 0.05, 0, 0, 330, "Subsonic", "Prapor");

-------------------
INSERT INTO Caliburs (c_gunType, c_caliburKey, c_calName)
VALUES ("Pistol / SMGs", "9x19mm", "Parabellum/Luger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("9x19mm", "PBP gzh", '52', 39, 0.53, 0.15, 0.15, 0.05, 0.20, 0, 0, 560, "", "FiRoC");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("9x19mm", "AP 6.3", '52', 30, 0.48, 0, 0, 0.05, 0.20, 0, 0, 392, "", "FiRoC");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("9x19mm", "T gzh", '58', 14, 0.33, -0.05, -0.06, 0.15, 0.05, 0, 0, 365, "Tracer(green)", "Mechanic");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("9x19mm", "Luger CCI", '70', 10, 0.38, 0, 0, 0.25, 0.065, 0.20, 0.20, 420, "", "Skier");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("9x19mm", "PSO gzh", '59', 10, 0.32, 0, 0, 0.25, 0.065, 0, 0, 340, "Subsonic", "Prapor/Jaeger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("9x19mm", "Pst gzh", '54', 20, 0.33, 0, 0, 0.15, 0.05, 0, 0, 457, "", "Prapor/Mechanic/Peacekeeper");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("9x19mm", "QuakeMaker", '85', 8, 0.22, 0.10, 0.10, 0.10, 0.10, 0.15, 0.22, 290, "Subsonic", "Peacekeeper");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("9x19mm", "RIP", '102', 2, 0.11, 0, 0.20, 1, 0.002, 0.30, 0.10, 381, "", "Skier/Jaeger");

-------------------
INSERT INTO Caliburs (c_gunType, c_caliburKey, c_calName)
VALUES ("Pistol", "9x21mm", "Gyurza");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("9x21mm", "PS gzh", '49', 35, 0.46, 0, 0, 0.20, 0.40, 0, 0, 410, "", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("9x21mm", "P gzh", '65', 18, 0.44, 0, 0, 0.30, 0.20, 0.15, 0.10, 413, "", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("9x21mm", "PE gzh", '80', 15, 0.63, 0, 0, 0.35, 0.20, 0.15, 0.10, 415, "", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("9x21mm", "BT gzh", '63', 39, 0.47, -0.04, -0.04, 0.20, 0.40, 0, 0, 397, "Tracer(red)", "Prapor");

-------------------
INSERT INTO Caliburs (c_gunType, c_caliburKey, c_calName)
VALUES ("Pistol / SMGs", ".45 ACP", "ACP");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES (".45 ACP", "ACP AP", '70', 38, 0.48, -0.05, 0.07, 0.01, 0.10, 0, 0, 299, "Subsonic", "Peacekeeper");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES (".45 ACP", "ACP Match FMJ", '77', 25, 0.36, 0, 0, 0.01, 0.065, 0, 0, 285, "Subsonic", "Peacekeeper");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES (".45 ACP", "ACP Hydra-Shok", '105', 13, 0.30, 0, 0, 0.50, 0.066, 0, 0.30, 274, "Subsonic", "Peacekeeper");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES (".45 ACP", "ACP Lasermatch FMJ", '80', 19, 0.37, 0.10, 0, 0.01, 0.065, 0, 0, 290, "Subsonic/Tracer(red)", "Peacekeeper");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES (".45 ACP", "ACP RIP", '137', 3, 0.12, -0.05, 0, 1, 0.002, 0.30, 0.20, 293, "Subsonic", "Mechanic");

-------------------
INSERT INTO Caliburs (c_gunType, c_caliburKey, c_calName)
VALUES ("SMGs", "4.6x30mm", "HK");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("4.6x30mm", "Action SX", '65', 18, 0.39, 0, 0, 0.50, 0.30, 0, 0, 690, "", "Mechanic/Peacekeeper");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("4.6x30mm", "AP SX", '35', 53, 0.46, 0, 0.10, 0.10, 0.60, 0, 0, 680, "", "FiRoC");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("4.6x30mm", "FMJ SX", '43', 40, 0.41, 0, 0, 0.20, 0.40, 0, 0, 620, "", "Peacekeeper");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("4.6x30mm", "Subsonic SX", '45', 36, 0.46, 0.10, -0.22, 0.20, 0.50, 0, 0, 290, "Subsonic", "Mechanic");

-------------------
INSERT INTO Caliburs (c_gunType, c_caliburKey, c_calName)
VALUES ("Pistol / SMGs", "5.7x28mm", "FN");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("5.7x28mm", "L191", '58', 33, 0.41, -0.04, 0, 0.20, 0.60, 0, 0, 716, "Tracer(red)", "Peacekeeper");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("5.7x28mm", "R37.F", '98', 8, 0.07, 0, 0, 1, 0.05, 0.15, 0.15, 729, "", "Mechanic");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("5.7x28mm", "R37.X", '81', 11, 0.14, 0, 0, 0.70, 0.10, 0.10, 0.20, 724, "", "Mechanic");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("5.7x28mm", "SB193", '54', 35, 0.37, 0, -0.20, 0.20, 0.30, 0, 0, 305, "Subsonic", "Peacekeeper");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("5.7x28mm", "SS190", '49', 37, 0.43, 0, 0, 0.20, 0.60, 0, 0, 716, "", "Peacekeeper");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("5.7x28mm", "SS197SR", '62', 20, 0.22, 0, 0, 0.50, 0.20, 0, 0, 594, "", "Peacekeeper");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("5.7x28mm", "SS198LF", '74', 10, 0.15, 0, 0, 0.80, 0.20, 0, 0, 792, "", "Peacekeeper");

------------------------------------------------------------
-- Caliburs: Rifles
INSERT INTO Caliburs (c_gunType, c_caliburKey, c_calName)
VALUES ("AR / LMGs", "5.45x39mm", "Russian");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("5.45x39mm", "PPBS gs 'Igolnik'", '37', 62, 0.60, 0, 0.15, 0.02, 0.38, 0, 0, 905, "", "FiRoC");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("5.45x39mm", "BP gs", '49', 36, 0.41, 0, 0, 0.16, 0.36, 0, 0, 830, "", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("5.45x39mm", "BS gs", '40', 51, 0.57, -0.03, 0.10, 0.17, 0.38, 0, 0, 830, "", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("5.45x39mm", "BT gs", '44', 37, 0.49, -0.02, 0.03, 0.16, 0.78, 0, 0, 880, "Tracer(red)", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("5.45x39mm", "FMJ", '56', 21, 0.30, 0, 0, 0.25, 0.26, 0, 0, 884, "", "Jaeger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("5.45x39mm", "HP", '74', 11, 0.20, 0, 0.05, 0.25, 0.26, 0.15, 0.15, 884, "", "Jaeger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("5.45x39mm", "PP gs", '48', 33, 0.32, 0, 0, 0.17, 0.38, 0, 0, 890, "", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("5.45x39mm", "PRS gs", '60', 14, 0.28, 0, -0.05, 0.30, 0.04, 0, 0, 890, "", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("5.45x39mm", "PS gs", '50', 27, 0.35, 0, 0, 0.40, 0.40, 0, 0, 890, "", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("5.45x39mm", "SP", '68', 11, 0.34, 0.10, -0.15, 0.45, 0.15, 0.10, 0.10, 873, "", "Jaeger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("5.45x39mm", "T gs", '57', 20, 0.38, -0.05, -0.05, 0.16, 0.40, 0, 0, 883, "Tracer(red)", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("5.45x39mm", "US gs", '65', 15, 0.34, 0, -0.25, 0.10, 0.40, 0, 0, 303, "Subsonic", "Prapor");

-------------------
INSERT INTO Caliburs (c_gunType, c_caliburKey, c_calName)
VALUES ("AR", "5.56x45mm", "NATO");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("5.56x45mm", "FMJ", '52', 24, 0.33, 0.10, -0.05, 0.50, 0.26, 0, 0, 957, "", "Skier");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("5.56x45mm", "HP", '75', 9, 0.22, 0, 0, 0.70, 0.20, 0.15, 0.15, 947, "", "Jaeger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("5.56x45mm", "M855", '50', 28, 0.37, -0.05, 0, 0.40, 0.40, 0, 0, 922, "", "Peacekeeper");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("5.56x45mm", "M855A1", '46', 45, 0.52, -0.10, 0.05, 0.34, 0.38, 0, 0, 945, "", "Peacekeeper/Skier");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("5.56x45mm", "M856", '55', 23, 0.54, -0.02, -0.02, 0.328, 0.38, 0, 0, 874, "Tracer(red)", "Peacekeeper");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("5.56x45mm", "M856A1", '51', 37, 0.52, -0.01, 0.04, 0.328, 0.38, 0, 0, 940, "Tracer(red)", "Peacekeeper");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("5.56x45mm", "M995", '40', 53, 0.58, 0, 0.08, 0.32, 0.36, 0, 0, 1013, "", "FiRoC");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("5.56x45mm", "MK 255 Mod 0 (RRLP)", '60', 17, 0.32, 0, 0, 0.03, 0.10, 0.10, 0.10, 902, "", "Peacekeeper");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("5.56x45mm", "MK 318 Mod 0 (SOST)", '67', 20, 0.35, 0.10, 0, 0.15, 0.10, 0.10, 0.10, 902, "", "Peacekeeper");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("5.56x45mm", "SSA AP", '36', 56, 0.64, -0.06, 0.06, 0.20, 0.48, 0, 0, 1050, "", "Loot Only");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("5.56x45mm", "Warmageddon", '85', 03, 0.14, 0.10, 0.10, 0.90, 0.05, 0.20, 0.20, 910, "", "Peacekeeper/Jaeger");


-------------------
INSERT INTO Caliburs (c_gunType, c_caliburKey, c_calName)
VALUES ("AR", ".300mm", "Blackout");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES (".300mm", "Blackout AP", '55', 45, 0.65, 0.05, 0.05, 0.30, 0.10, 0.15, 0.15, 720, "", "Peacekeeper");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES (".300mm", "AAC Blackout BCP FMJ", '60', 29, 0.36, 0, 0, 0.30, 0.30, 0, 0, 605, "", "Skier");


-------------------
INSERT INTO Caliburs (c_gunType, c_caliburKey, c_calName)
VALUES ("AC / AR", "7.62x39mm", "Russian");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("7.62x39mm", "BP gzh", '58', 47, 0.63, -0.03, 0.05, 0.12, 0.315, 0, 0, 730, "", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("7.62x39mm", "HP", '87', 15, 0.35, -0.05, 0, 0.263, 0.1755, 0.15, 0.15, 754, "", "Jaeger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("7.62x39mm", "MAI AP", '46', 58, 0.76, -0.05, 0.10, 0.05, 0.435, 0.10, 0.10, 875, "", "Loot Only");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("7.62x39mm", "PS gzh", '57', 32, 0.52, 0, 0, 0.25, 0.35, 0, 0, 700, "", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("7.62x39mm", "T-45M1 gzh", '62', 30, 0.46, -0.04, -0.06, 0.12, 0.35, 0, 0, 720, "Tracer(red)", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("7.62x39mm", "US gzh", '56', 29, 0.42, 0.05, -0.30, 0.075, 0.358, 0, 0, 300, "Subsonic", "Prapor");

-------------------
INSERT INTO Caliburs (c_gunType, c_caliburKey, c_calName)
VALUES ("AC / AR / DMRs / Sniper Rifle", "7.62x51mm", "NATO");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("7.62x51mm", "BCP FMJ", '88', 31, 0.33, 0, 0.03, 0.25, 0.20, 0.20, 0.20, 840, "", "Jaeger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("7.62x51mm", "M61", '70', 64, 0.83, 0.03, 0.10, 0.13, 0.30, 0, 0, 849, "", "Peacekeeper");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("7.62x51mm", "M62", '79', 44, 0.75, -0.06, -0.05, 0.14, 0.38, 0, 0, 816, "Tracer(green)", "Peacekeeper");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("7.62x51mm", "M80", '80', 41, 0.66, 0, 0, 0.17, 0.38, 0, 0, 833, "", "Peacekeeper");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("7.62x51mm", "M993", '67', 70, 0.85, 0.05, 0.08, 0.13, 0.28, 0, 0, 910, "", "Loot Only");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("7.62x51mm", "TCW SP", '60', 36, 0.40, -0.08, -0.05, 0.20, 0.50, 0, 0, 808, "", "Jaeger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("7.62x51mm", "Ultra Nosler", '107', 15, 0.20, 0.10, -0.05, 0.70, 0.20, 0, 0, 822, "", "Jaeger");


-------------------
INSERT INTO Caliburs (c_gunType, c_caliburKey, c_calName)
VALUES ("DMRs / Sniper Rifle", "7.62x54Rmm", "Russian");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("7.62x54Rmm", "BT gzh", '78', 59, 0.87, -0.02, -0.04, 0.081, 0.265, 0, 0, 820, "Tracer(red)", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("7.62x54Rmm", "PS", '86', 45, 0.84, 0.10, 0.08, 0.083, 0.285, 0, 0, 875, "", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("7.62x54Rmm", "BS", '72', 70, 0.88, 0, 0, 0.083, 0.34, 0, 0, 785, "", "Loot Only");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("7.62x54Rmm", "LPS gzh", '81', 42, 0.78, 0, 0, 0.18, 0.39, 0, 0, 865, "", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("7.62x54Rmm", "SNB", '75', 62, 0.87, 0, 0.10, 0.08, 0.285, 0, 0, 875, "", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("7.62x54Rmm", "T-46M", '82', 41, 0.83, -0.01, -0.05, 0.18, 0.30, 0, 0, 800, "Tracer(green)", "Prapor");

-------------------
INSERT INTO Caliburs (c_gunType, c_caliburKey, c_calName)
VALUES ("DMRs", ".338", "Lapua Magnum");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES (".338", "AP", '115', 79, 0.89, 0, 0.10, 0.13, 0.30, 0.20, 0.55, 849, "", "Loot Only");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES (".338", "FMJ", '122', 47, 0.83, 0, 0, 0.20, 0.40, 0.35, 0.50, 900, "", "Peacekeeper");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES (".338", "TAC-X", '196', 18, 0.55, 0.10, 0.05, 0.50, 0.40, 0.80, 0.50, 880, "", "Mechanic");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES (".338", "UPZ", '142', 32, 0.70, -0.05, 0, 0.60, 0.40, 0.50, 0.40, 849, "", "Jaeger");

-------------------
INSERT INTO Caliburs (c_gunType, c_caliburKey, c_calName)
VALUES ("AC / DMRs", "9x39mm", "Russian");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("9x39mm", "SPP gs", '64', 50, 0.56, 0.10, 0.20, 0.20, 0.40, 0, 0, 310, "Subsonic", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("9x39mm", "BP gs", '60', 55, 0.68, 0.10, 0.22, 0.10, 0.50, 0, 0, 295, "Subsonic", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("9x39mm", "SP5 gs", '68', 38, 0.52, 0, 0, 0.20, 0.40, 0, 0, 290, "Subsonic", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("9x39mm", "SP6 gs", '58', 46, 0.60, 0, 0.10, 0.10, 0.50, 0, 0, 305, "Subsonic", "Prapor");

-------------------
INSERT INTO Caliburs (c_gunType, c_caliburKey, c_calName)
VALUES ("AR / Sniper Rifle", ".366", "TKM");


INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES (".366", "AP-M", '90', 42, 0.60, -0.28, 0.35, 0.01, 0.065, 0, 0.10, 602, "", "Mechanic");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES (".366", "Eko", '73', 30, 0.40, -0.10, -0.15, 0.20, 0.10, 0, 0.20, 770, "", "Jaeger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES (".366", "FMJ", '98', 23, 0.48, 0, 0.10, 0.25, 0.065, 0.20, 0.25, 680, "", "Skier/Jaeger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES (".366", "Geksa", '110', 14, 0.38, 0, 0, 0.45, 0.005, 0.30, 0.10, 550, "", "Jaeger");

-------------------
INSERT INTO Caliburs (c_gunType, c_caliburKey, c_calName)
VALUES ("AR", "12.7x55mm", "STs-130");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("12.7x55mm", "PS12", '115', 28, 0.60, 0.10, 0, 0.30, 0.40, 0.30, 0.20, 285, "Subsonic", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("12.7x55mm", "PS12A", '165', 10, 0.22, -0.15, -0.12, 0.70, 0.20, 0.35, 0.30, 290, "Subsonic", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("12.7x55mm", "PS12B", '102', 46, 0.57, 0, 0.15, 0.30, 0.50, 0, 0.15, 300, "Subsonic", "Prapor");

-------------------------------------------------------------
-- Caliburs: Shotgun
INSERT INTO Caliburs (c_gunType, c_caliburKey, c_calName)
VALUES ("SG", "12/70mm", "12 Gauge");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("12/70mm", "'Poleva-3' Slug ", '140', 17, 0.40, 1.10, -0.15, 0.20, 0.10, 0, 0, 410, "", "Jaeger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("12/70mm", "'Poleva-6u' Slug ", '150', 20, 0.50, 1.15, -0.10, 0.15, 0.10, 0, 0.05, 430, "", "Jaeger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("12/70mm", "5.25mm Buckshot", '8x37', 1, 0.15, 0, 0, 0, 0, 0, 0, 330, "Subsonic", "Jaeger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("12/70mm", "8.5mm 'Magnum' Buckshot", '8x37', 2, 0.26, -0.15, 1.15, 0, 0, 0.20, 0.10, 385, "", "Jaeger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("12/70mm", "AP-20 Slug", '164', 37, 0.65, 1.25, 0.50, 0.03, 0.10, 0, 0.10, 510, "", "Jaeger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("12/70mm", "Dual Sabot Slug", '2x85', 17, 0.65, 1, 0.15, 0.10, 0.10, 0, 0.15, 415, "", "Jaeger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("12/70mm", "Flechette", '8x25', 31, 0.26, -0.10, 0, 0, 0, 0.25, 0.25, 320, "Subsonic", "Jaeger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("12/70mm", "FTX Custom Lite Slug", '183', 20, 0.50, 1.35, -0.25, 0.10, 0.10, 0, 0, 480, "", "Jaeger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("12/70mm", "Grizzly 40 Slug", '190', 12, 0.48, 0.80, 0.20, 0.12, 0.10, 0, 0.10, 390, "", "Jaeger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("12/70mm", "SuperFormance HP Slug", '220', 5, 0.12, 1.70, -0.15, 0.39, 0.10, 0.30, 0.40, 584, "", "Jaeger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("12/70mm", "Copper Sabot Premier HP Slug", '206', 14, 0.46, 1.50, 0.10, 0.38, 0.10, 0.35, 0.25, 442, "", "Jaeger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("12/70mm", "6.5mm Express Buckshot", '9x35', 3, 0.26, 0.15, 0, 0, 0, 0, 0, 430, "", "Jaeger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("12/70mm", "7mm Buckshot", '8x39', 3, 0.26, 0, 0, 0, 0, 0, 0, 415, "", "Jaeger/Prapor/Skier");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("12/70mm", "Lead Slug", '167', 15, 0.55, 1.20, 0, 0.20, 0.10, 0.10, 0.15, 370, "", "Skier/Prapor/Peacekeeper");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("12/70mm", "RIP", '265', 2, 0.11, 0.80, 0.35, 1, 0.01, 0.40, 0.25, 410, "", "Skier/Jaeger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("12/70mm", ".50 BMG Slug", '197', 26, 0.57, 0.90, 0.25, 0.05, 0.10, 0, 0.15, 410, "Tracer(red)", "Jaeger");

-------------------
INSERT INTO Caliburs (c_gunType, c_caliburKey, c_calName)
VALUES ("SG", "20x70mm", "20 Gauge");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("20x70mm", "5.6mm Buckshot", '8x26', 1, 0.12, -0.10, 0.10, 0, 0, 0, 0, 340, "Subsonic", "Jaeger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("20x70mm", "6.2mm Buckshot", '8x22', 2, 0.13, 0, 0, 0, 0, 0, 0, 410, "", "Jaeger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("20x70mm", "7.3mm Buckshot", '9x23', 3, 0.13, 0, 0.15, 0, 0, 0, 0, 475, "", "Jaeger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("20x70mm", "Devastator Slug", '198', 5, 0.13, 1.25, 0.30, 1, 0.10, 0.20, 0.3, 405, "", "Jaeger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("20x70mm", "'Poleva-3' Slug", '120', 14, 0.35, 1.10, -0.15, 0.20, 0.10, 0, 0, 425, "", "Jaeger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("20x70mm", "'Poleva-6u' Slug", '135', 17, 0.40, 1.10, -0.10, 0.15, 0.10, 0, 0.10, 445, "", "Jaeger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("20x70mm", "Star Slug", '154', 16, 0.42, 1.30, 0.05, 0.10, 0.10, 0, 0.30, 415, "", "Jaeger");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("20x70mm", "7.5mm Buckshot", '8x25', 3, 0.14, 0, 0, 0, 0, 0, 0, 430, "", "Skier/Jaeger");

-------------------
INSERT INTO Caliburs (c_gunType, c_caliburKey, c_calName)
VALUES ("SG", "23x75mm", "23 Gauge");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("23x75mm", "'Barrikada' Slug", '192', 39, 0.75, -0.05, 0.25, 0.20, 0.40, 0, 0, 420, "", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("23x75mm", "'Zvezda' Flashbang round", '0', 0, 0, 0.20, 0.30, 0.40, 0, 0, 0, 0, "Flashbang", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("23x75mm", "'Shrapnel-10' Buckshot", '8x87', 11, 0.20, 0, 0, 0, 0.20, 0, 0, 270, "", "Prapor");

INSERT INTO BulletData (b_caliburKey, b_name, b_dmg, b_penPwr, b_armorDmg, b_accMod, b_recMod, b_fragChance, b_riccChn, b_lBld, b_hBld, b_velocity, b_special, b_vendorKey)
VALUES ("23x75mm", "'Shrapnel-25' Buckshot", '8x78', 10, 0.20, 0.20, 0.10, 0, 0.20, 0, 0, 375, "", "Prapor");

-------------------

-- 

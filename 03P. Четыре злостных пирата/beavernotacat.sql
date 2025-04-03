-- Get row with 4 pritates name
WITH ships AS (
    SELECT start.pirate_name as n0, down1.pirate_name as n1, down2.pirate_name as n2, down3.pirate_name as n3
    from Sector as start
        JOIN Sector as down1 on down1.latitude=start.latitude+1 AND down1.longitude=start.longitude
        JOIN Sector as down2 on down2.latitude=start.latitude+2 AND down2.longitude=start.longitude
        JOIN Sector as down3 on down3.latitude=start.latitude+3 AND down3.longitude=start.longitude
    WHERE start.is_ship = 1 AND down1.is_ship = 1 AND down2.is_ship = 1 AND down3.is_ship = 1
    
    UNION
    
    SELECT start.pirate_name as n0, right1.pirate_name as n1, right2.pirate_name as n2, right3.pirate_name as n3
    from Sector as start
        LEFT JOIN Sector as right1 on right1.longitude=start.longitude-1 AND right1.latitude=start.latitude
        LEFT JOIN Sector as right2 on right2.longitude=start.longitude-2 AND right2.latitude=start.latitude
        LEFT JOIN Sector as right3 on right3.longitude=start.longitude-3 AND right3.latitude=start.latitude
    WHERE start.is_ship = 1 AND right1.is_ship = 1 AND right2.is_ship = 1 AND right3.is_ship = 1
),
-- make row a column
pirates as (
SELECT ships.n0 as name FROM ships
UNION
SELECT ships.n1 as name FROM ships
UNION
SELECT ships.n2 as name FROM ships
UNION
SELECT ships.n3 as name FROM ships
)
-- sort column and print result
SELECT pirates.name FROM pirates GROUP BY name ORDER BY name

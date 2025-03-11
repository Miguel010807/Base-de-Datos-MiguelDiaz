SELECT *from INHABITANT

SELECT *from INHABITANT WHERE state = "friendly"

SELECT * from INHABITANT WHERE state = "friendly" AND job = "weaponsmith"

SELECT * from INHABITANT WHERE state = "friendly" AND job LIKE '%smith'

SELECT personid from INHABITANT WHERE name = "Stranger"

SELECT gold from INHABITANT WHERE name = "Stranger"

SELECT * from ITEM WHERE owner IS NULL 
     
UPDATE item SET owner  = 20 WHERE owner IS NULL

SELECT * from ITEM WHERE owner = 20

SELECT * from INHABITANT WHERE state = "friendly" AND job ="dealer" OR job = "merchant"

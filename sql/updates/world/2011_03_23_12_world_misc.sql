 -- Editado por Gildor
 -- DB Startup errors
DELETE FROM `conditions` WHERE `SourceEntry`=43151 AND `SourceTypeOrReferenceId`=13; -- Delete uneed/wrong conditions. Assigned SAI will take care of targeting the right creature
 -- Delete wrong equip template and revert the one that shouldn't have been changed
UPDATE `creature_template` SET `equipment_id`=2431 WHERE `entry`=18697;
 -- Le quito uno duplicado que no se usa, y le a�ado los dos de TDB
DELETE FROM `creature_equip_template` WHERE `entry` IN (2148,1807,2431);
INSERT INTO `creature_equip_template` (`entry`,`equipentry1`,`equipentry2`,`equipentry3`) VALUES
(1807,50757,0,0),
(2431,31301,0,0);
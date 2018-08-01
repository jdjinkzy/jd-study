CREATE FUNCTION `queryDeptInfo`(`deptId` int) RETURNS varchar(4000) CHARSET utf8
BEGIN
DECLARE fid int(11) default 0; 
DECLARE fnm varchar(100) default '';
DECLARE str varchar(1000) default '';

WHILE deptId is not null  do   
    SET fid =(SELECT pid FROM dept WHERE id = deptId);
		SET fnm =(SELECT dept_name FROM dept WHERE id = deptId);   
    IF fid is not null THEN
				if fid > 0 and length(str)>0 then
        SET str = concat(fnm, '-', str);
				end if;
				if fid > 0 and length(str)=0 then
        SET str = concat(fnm, '-',str);
				end if;
        SET deptId = fid;   
    ELSE   
        SET deptId = fid;   
    END IF;
END WHILE;
SET str = concat('中京国际', '-',str); 
return LEFT(str,char_length(str)-1);
END;

CREATE FUNCTION `queryChildrenDeptInfo`(`deptId` bigint) RETURNS varchar(4000) CHARSET utf8
BEGIN
DECLARE sTemp VARCHAR(4000);
DECLARE sTempChd VARCHAR(4000);

SET sTemp = cast(deptId as char);
SET sTempChd = cast(deptId as char);

WHILE sTempChd is not NULL DO
if sTemp <> sTempChd then
SET sTemp = CONCAT(sTemp,',',sTempChd);
end if;
SELECT group_concat(id) INTO sTempChd FROM dept where FIND_IN_SET(pid,sTempChd)>0 and is_delete=0;
END WHILE;
return sTemp;
END;

CREATE FUNCTION `queryChildrenAreaInfo_phone`(`id` bigint) RETURNS varchar(4000) CHARSET utf8
BEGIN
DECLARE sTemp VARCHAR(4000);
DECLARE sTempChd VARCHAR(4000);

SET sTemp = '$';
SET sTempChd = cast(id as char);

WHILE sTempChd is not NULL DO
SET sTemp = CONCAT(sTemp,',',sTempChd);
SELECT group_concat(user_id) INTO sTempChd FROM admin_user where FIND_IN_SET(leader,sTempChd)>0 and is_delete=0 and phone>'' and role_id in (1,2,3,12,13,29,30,31,32,33,46,47);
END WHILE;
return sTemp;
END;

CREATE FUNCTION `queryChildrenAreaInfo_dept21_phone`(`id` bigint) RETURNS varchar(4000) CHARSET utf8
BEGIN
DECLARE sTemp VARCHAR(4000);
DECLARE sTempChd VARCHAR(4000);

SET sTemp = '$';
SET sTempChd = cast(id as char);

WHILE sTempChd is not NULL DO
SET sTemp = CONCAT(sTemp,',',sTempChd);
SELECT group_concat(user_id) INTO sTempChd FROM admin_user where FIND_IN_SET(leader,sTempChd)>0 and is_delete=0 and phone>'' and dept_id = 21;
END WHILE;
return sTemp;
END;

CREATE FUNCTION `queryChildrenAreaInfo_dept_phone`(`userId` bigint,`deptId` bigint) RETURNS varchar(4000) CHARSET utf8
BEGIN
DECLARE sTemp VARCHAR(4000);
DECLARE sTempChd VARCHAR(4000);

SET sTemp = '$';
SET sTempChd = cast(userId as char);

WHILE sTempChd is not NULL DO
SET sTemp = CONCAT(sTemp,',',sTempChd);
SELECT group_concat(user_id) INTO sTempChd FROM admin_user where FIND_IN_SET(leader,sTempChd)>0 and is_delete=0 and phone>'' and dept_id = deptId;
END WHILE;
return sTemp;
END;

CREATE FUNCTION `queryChildrenAreaInfo`(`id` bigint) RETURNS varchar(4000) CHARSET utf8
BEGIN
DECLARE sTemp VARCHAR(4000);
DECLARE sTempChd VARCHAR(4000);

SET sTemp = cast(id as char);
SET sTempChd = cast(id as char);

WHILE sTempChd is not NULL DO
if sTemp <> sTempChd then
SET sTemp = CONCAT(sTemp,',',sTempChd);
end if;
SELECT group_concat(user_id) INTO sTempChd FROM admin_user where FIND_IN_SET(leader,sTempChd)>0 and is_delete=0;
END WHILE;
return sTemp;
END;


CREATE FUNCTION `queryAllChildrenAreaInfo`(`id` bigint) RETURNS varchar(4000) CHARSET utf8
BEGIN
DECLARE sTemp VARCHAR(8000);
DECLARE sTempChd VARCHAR(8000);

SET sTemp = cast(id as char);
SET sTempChd = cast(id as char);

WHILE sTempChd is not NULL DO

if sTemp <> sTempChd then
	if right(sTempChd,1)=',' then
		SET sTemp = CONCAT(sTemp,',',left(sTempChd,length(sTempChd)-1));
	ELSE
		SET sTemp = CONCAT(sTemp,',',sTempChd);
	END IF;
	#SET sTemp = CONCAT(sTemp,',',sTempChd);
end if;
SELECT group_concat(distinct user_id) INTO sTempChd FROM admin_user where FIND_IN_SET(leader,sTempChd)>0;

END WHILE;
return sTemp;
END;


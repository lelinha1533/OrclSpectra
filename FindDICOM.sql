--select * from study where study_key='1998660';
--desc instanceloc;
--desc instance;

--select * from instanceloc where instance_key in (select instance_key from instance where study_key in (1998660));
select * from  instanceloc where pathname like '%E1998660';
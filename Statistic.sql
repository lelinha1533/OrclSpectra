SELECT  source_aetitle,
       count(0) study_count ,
       sum(instance_count) instance_count,
       round (sum      (study_size/1024/1024/1024),2) study_size
       from study
       where 1=1
       AND study_stat >= 200
       AND ( sts_stat != 'R' AND sts_stat != 'D' )      
       --AND (validate_dttm IS NOT NULL )
       AND source_aetitle NOT IN ('XC_DICOM_TB','HITACHI_CT','FCR-CSL-SCU'  )
      -- AND order_key is not null
      -- AND study_dttm >= TO_DATE('00:00 01/01/2013', 'HH24:MI ' || sp_profile.get_string('STATISTIC','DATE_FORMAT','MM/DD/YYYY'))
      -- AND study_dttm <= TO_DATE('23:59 12/31/2013', 'HH24:MI ' || sp_profile.get_string('STATISTIC','DATE_FORMAT','MM/DD/YYYY'))
 GROUP BY source_aetitle
 order by study_size desc;
 
select * from profile where entry like '%SERVER%';
select sp_user.decrypt_password(password) from users where userid like 'sonlh';
 
 
 /*
 HITACHI_CT PK HOAN MY SAI GON
XC_DICOM_TB KTV
FCR-CSL-SCU   PK HOAN MY SAI GON
 */
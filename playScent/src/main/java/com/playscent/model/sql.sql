select * from MEMBER_INFO;



select * from PERFUME_INFO WHERE PF_IDX in (137, 103, 119, 14, 152);


select * from PERFUME_INFO WHERE PF_GENDERS = 'woman';



select * from PERFUME_INFO WHERE PF_BRAND = 'Chanel'



select * from PERFUME_INFO WHERE PF_IDX in (316,317,318,319,320,321,322,323);

select * from PERFUME_INFO WHERE PF_GENDERS = 'woman';


select * from PERFUME_INFO WHERE PF_NAME LIKE '%' || '#{keyword}' ||'%';



select * from PERFUME_INFO WHERE PF_NAME LIKE '%' || 'Dior' ||'%'












SELECT   A.TABLE_NAME AS TABLE_NAME,
	       A.TAB_CMT AS 테이블설명,
         A.COLUMN_ID AS 컬럼순서,
         B.POS AS PK,
         A.NULLABLE AS NULL여부,
         A.COLUMN_NAME AS 컬럼명,
         A.COL_CMT AS 컬럼설명,
         A.DATA_TYPE AS 데이터유형,
         A.데이터길이,
         A.DATA_DEFAULT AS 기본값
FROM
(SELECT S1.TABLE_NAME,
   S3.COMMENTS AS TAB_CMT,
         S1.COLUMN_NAME,
         S2.COMMENTS AS COL_CMT,
         S1.DATA_TYPE,
         CASE WHEN S1.DATA_PRECISION IS NOT NULL THEN DATA_PRECISION||','||DATA_SCALE
         ELSE TO_CHAR(S1.DATA_LENGTH)
         END  AS 데이터길이,
         NULLABLE,
         COLUMN_ID,
         DATA_DEFAULT
FROM  USER_TAB_COLUMNS S1,
         USER_COL_COMMENTS S2,
         USER_TAB_COMMENTS S3
WHERE S1.TABLE_NAME = S2.TABLE_NAME
   AND S1.COLUMN_NAME = S2.COLUMN_NAME
   AND S2.TABLE_NAME = S3.TABLE_NAME ) A,        
(SELECT T1.TABLE_NAME, T2.COLUMN_NAME, 'PK' AS POS
   FROM (SELECT TABLE_NAME, CONSTRAINT_NAME  
              FROM USER_CONSTRAINTS
                  WHERE  CONSTRAINT_TYPE = 'P' )T1,
                  (SELECT TABLE_NAME, CONSTRAINT_NAME,  COLUMN_NAME, POSITION
                 FROM USER_CONS_COLUMNS ) T2
          WHERE T1.TABLE_NAME = T2.TABLE_NAME
             AND T1.CONSTRAINT_NAME = T2.CONSTRAINT_NAME  ) B
WHERE A.TABLE_NAME = B.TABLE_NAME(+)
   AND A.COLUMN_NAME = B.COLUMN_NAME(+)    
ORDER BY A.TABLE_NAME,  A.COLUMN_ID 





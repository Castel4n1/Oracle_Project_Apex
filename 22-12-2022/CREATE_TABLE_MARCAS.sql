CREATE TABLE  "MARCAS" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"MARCA" VARCHAR2(30) NOT NULL ENABLE, 
	 CONSTRAINT "MARCAS_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )
/

CREATE OR REPLACE EDITIONABLE TRIGGER  "BI_MARCAS" 
  before insert on "MARCAS"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "MARCAS_SEQ".nextval into :NEW."ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_MARCAS" ENABLE
/

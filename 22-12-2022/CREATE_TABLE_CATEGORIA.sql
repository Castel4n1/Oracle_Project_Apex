CREATE TABLE  "CATEGORIA" 
   (	
        "ID" NUMBER NOT NULL ENABLE, 
        "CATEGORIA" VARCHAR2(30) NOT NULL ENABLE, 
        CONSTRAINT "CATEGORIA_PK" PRIMARY KEY ("ID")
        USING INDEX  ENABLE
   )
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "BI_CATEGORIA" 
  before insert on "CATEGORIA"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "CATEGORIA_SEQ".nextval into :NEW."ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_CATEGORIA" ENABLE
/

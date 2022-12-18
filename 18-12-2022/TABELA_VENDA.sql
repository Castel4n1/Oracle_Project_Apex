CREATE TABLE  "VENDA" 
   (	
    "ID" NUMBER NOT NULL ENABLE, 
	"CLIENTE_ID" NUMBER NOT NULL ENABLE, 
	"DATA_VENDA" DATE NOT NULL ENABLE, 
	 CONSTRAINT "VENDA_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )
/

CREATE OR REPLACE EDITIONABLE TRIGGER  "BI_VENDA" 
  before insert on "VENDA"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "VENDA_SEQ".nextval into :NEW."ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_VENDA" ENABLE
/

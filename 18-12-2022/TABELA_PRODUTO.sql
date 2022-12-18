CREATE TABLE  "PRODUTO" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"DESCRICAO" VARCHAR2(100) NOT NULL ENABLE, 
	"PRECO" NUMBER, 
	"IMG" BLOB, 
	 CONSTRAINT "PRODUTO_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )
/

CREATE OR REPLACE EDITIONABLE TRIGGER  "BI_PRODUTO" 
  before insert on "PRODUTO"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "PRODUTO_SEQ".nextval into :NEW."ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_PRODUTO" ENABLE
/

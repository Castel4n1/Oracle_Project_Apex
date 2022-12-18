CREATE TABLE  "CLIENTES" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"NOME" VARCHAR2(60) NOT NULL ENABLE, 
	"CPF" VARCHAR2(14) NOT NULL ENABLE, 
	"IMG" BLOB, 
	 CONSTRAINT "CLIENTES_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )
/

CREATE OR REPLACE EDITIONABLE TRIGGER  "BI_CLIENTES" 
  before insert on "CLIENTES"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "CLIENTES_SEQ".nextval into :NEW."ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_CLIENTES" ENABLE
/

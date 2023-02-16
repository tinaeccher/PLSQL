-- Create table
create table TB_PRODUCT
(
  id_prod    varchar2(20),
  nm_product varchar2(150) not null,
  packing    varchar2(50) not null,
  size_prod       varchar2(50) not null,
  flavor     varchar2(50) not null,
  cost_prod      varchar2(4) not null
)
tablespace DADOS
  pctfree 40
  pctused 10
  initrans 1
  maxtrans 225
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to the columns 
comment on column TB_PRODUCT.id_prod
  is 'Product Id';
comment on column TB_PRODUCT.nm_product
  is 'Product name';
comment on column TB_PRODUCT.packing
  is 'Product packaging';
comment on column TB_PRODUCT.size
  is 'Product Size';
comment on column TB_PRODUCT.flavor
  is 'Product flavor';
comment on column TB_PRODUCT.cost
  is 'Product value';

create table tb_pedidos (
id_pedido integer(20),
observacao varchar(30),
id_item_tb_cardapio int(20),
valor_pedido float(20),
status_pedido varchar(30),
data_pedido datetime
)
engine= innodb
DEFAULT charset = utf8mb4;

create table tb_cardapio (
id_item integer (20),
desc_item varchar(40),
ing_item varchar(40),
valor float(20)
)
engine= innodb
DEFAULT charset = utf8mb4;


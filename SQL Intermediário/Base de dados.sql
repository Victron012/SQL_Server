 use dbLojaJailson;
  
  INSERT INTO dbLojaJailson.dbo.tb_Estados (sigla, nomeEstado ) VALUES
  ('AC', 'Acre'),
  ('AL', 'Alagoas'),
  ('AP', 'Amapá'),
  ('AM', 'Amazonas'),
  ('BA', 'Bahia'),
  ('CE', 'Ceará'),
  ('DF', 'Distrito Federal'),
  ('ES', 'Espírito Santo'),
  ('GO', 'Goiás'),
  ('MA', 'Maranhão'),
  ('MT', 'Mato Grosso'),
  ('MS', 'Mato Grosso do Sul'),
  ('MG', 'Minas Gerais'),
  ('PA', 'Pará'),
  ('PE', 'Pernambuco'),
  ('PI', 'Piauí'),
  ('RJ', 'Rio de Janeiro'),
  ('RN', 'Rio Grande do Norte'),
  ('RS', 'Rio Grande do Sul'),
  ('RO', 'Rondônia'),
  ('RR', 'Roraima'),
  ('SC', 'Santa Catarina'),
  ('SP', 'São Paulo'),
  ('SE', 'Sergipe'),
  ('TO', 'Tocantins');


  INSERT INTO tb_Produtos(nomeProduto, precoProduto) VALUES 
  ('Suco de Morango', 4.0), 
  ('Suco de Macho', 5.0),
  ('Suco de Tamarindo', 4.0),
  ('Coxinha', 3.5),
  ('X-Beico', 6.12),
  ('X-Gordo Safado', 11.9),
  ('Infartinho', 10),
  ('Ai, que delícia!', 9.90),
  ('X-Paulo Guina', 5.5),
  ('Porção de Peça que Você Queria', 15.0),
  ('Sorvete Sweet Dreams', 20.0),
  ('Refrigerante Lata', 4.5),
  ('Pãum de Batatah', 6.0),
  ('Refrigerante 2L', 8.0),
  ('Bala Juquinha', 0.5);


  INSERT INTO tb_Vendas (idCliente, dataVenda) VALUES (1, GETDATE());

-- Removendo dados duplicados
select * from tb_Estados
select * from tb_Cidades
update tb_Cidades set idEstado = 24 where idCidade = 1
delete from tb_Estados where idEstado = 1 and sigla = 'SP'

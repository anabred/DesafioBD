select count(*) from cliente;

select nome, cpf from cliente
	order by nome;
    
select * from ordemServico
	where statusOs = 'em andamento'
    having valorOs > 250.90
    order by valorOS desc;
    
select * from cliente c, ordemservico o where c.idCliente = o.idOS
	order by Nome;
    
select c.idCliente, c.Nome, count(*) as Numero_pedidos from cliente c inner join ordemServico o on c.idCliente = o.idOS
						inner join definicaoservico d on d.idDefServ = o.idOS
                        group by idCliente;
                        
select * from mecanico where especialidadeMec = 'mecanico'
		order by nomeMec;
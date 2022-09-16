-- insert datas

use oficina;

-- Nome, CPF, Endereço, telefone
insert into cliente (Nome, CPF, Endereço, Telefone) values
				('Ana Carolina Bredariol', 66547896532, null, 98765432),
                ('João Pedro Santos', 77659865894, 'Rua Nova Esperança, Boa vista', null),
				('Hugo Batista', 55123255662, 'Rua nove de julho, Marília', 64738769),
                ('Izilda Juventil', 45635965841, 'Rua nove de Junho, Sorocaba', 87635241),
                ('Mariana Campos', 96321478541, null, null),
                ('Pedro Henrique José', 45666325991, 'Rua José Antônio, Bauru', 76543287);
                

-- Modelo, Placa, Ano
insert into veiculo(idVeiculo,Modelo, Placa, Ano) values
				(01,'FIAT', 876543, 2017),
                (02,'HONDA', 987654, 2019),
                (03,'PEGEOUT', 877543, 2007),
                (05,'WOLKSWAGEM', 487543, 2009),
                (06,'LIFAN', 847321, 2010);
			
-- idOs, statusOs, numeroOS, emissaoOS, entregaOs,valorOs, pecasOs, autoCLiente bool
insert into ordemServico(idOS,statusOs, numeroOS, emissaoOS, entregaOs, valorOs, peçasOS, autoCliente) values
						(1,'Cancelado', 02, '2021-01-20', '2021-05-29', 587.89,'Freio de mão', null),
                        (3,'Em Andamento', 03, '2021-01-20', '2021-05-29', 587.89,'Suspensão', null),
                        (4,'Cancelado', 06, '2021-01-20', '2021-05-29', 587.89,'Embreagem', null);
                        
					
	select * from cliente;
-- nomePeca, fabricantePeca,valorPeca
insert into peca(idPeca,nomePeca, fabricantePeca, valorPeca) values
				(2,'amortecedor', null, 580.54),
                (7,'baterias', null, 897.87),
                (5,'lampada', null, 87.54),
                (9,'vidro', null, 450.30);
    
-- idMecanico,enderecoMec,especialidadeMec,codigoMec, nomeMec
insert into mecanico(idMecanico, enderecoMec, especialidadeMec, codigoMec, nomeMec) values
					(1, 'lisboa', 'mecanico', 847362,'Jose'),
                    (2, 'centro', 'vidraceiro', 847362,'Jorge'),
                    (3, 'Benfica', 'lanterneiro', 847362,'Joaquim'),
                    (4, 'Alcantara', 'mecanico', 847362,'Fabio'),
                    (5, 'Telheiras', 'mecanico', 847362,'Silva');
                    
-- idServico,tipoServico,valorServico
insert into servico(idServico, tipoServico, valorServico) values
					(54, 'JHDAHFA', 800.05),
                    (55, 'YEIGHDG', 789.25),
                    (57, 'ueyiuew', 958.25);
                    
-- idDefServ, ServOS, tempoServ
insert into definicaoServico (idDefServ, ServOS, tempoServ) values
						(54, 1, '2021-05-13');
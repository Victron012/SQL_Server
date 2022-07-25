 /*
	Criando base de dados (script)
*/

create database SQLAvancado on primary (
	name= N'SQLAvancado', filename = N'E:\Projetos\SQL_Server\SQL Avançado\DataBase\SQLAvancado.mdf'
), filegroup [PG] (
	name = N'PG', filename = N'E:\Projetos\SQL_Server\SQL Avançado\DataBase\PG.ndf'
), filegroup [JM] (
	name = N'JM', filename = N'E:\Projetos\SQL_Server\SQL Avançado\DataBase\JM.ndf'
), (
	name = N'QD', filename = N'E:\Projetos\SQL_Server\SQL Avançado\DataBase\QDC.ndf'
) log on (
	name = N'Jaja_Log', filename = N'E:\Projetos\SQL_Server\SQL Avançado\DataBase\Jaja_Log.ldf'
)


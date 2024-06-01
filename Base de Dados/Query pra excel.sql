

use SQLBI_OLTP
go

SELECT 
       ID
     , Matricula
     , NomeColaborador
     , Genero
     , DtNascimento = CONVERT(VARCHAR(50),CONVERT(DATE,DtNascimento),101)
     , DtAdmissao
     , DtDemissao
     , Departamento
     , CargoNivel = Cargo + ' - ' + CargoNivel
     , TipoDesligamento
     , Remuneracao = convert(varchar(50),FORMAT(Remuneracao, 'N2', 'EN-US'))
     , Estado
     , Situacao
     , MotivoDesligamento
     , RegimeTrabalho
     , MatriculaSuperiorHierarquico
	 , Email = REPLACE(NomeColaborador,' ','.') + '@SQLBI.COM.BR'
     , Cliente
 FROM TB_Colaborador_SQLBI
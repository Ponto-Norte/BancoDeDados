
CREATE DATABASE IF NOT EXISTS PontoNorte;
USE PontoNorte;

CREATE TABLE Trilheiro (
  idTrilheiro INT PRIMARY KEY AUTO_INCREMENT,
  nomeTrilheiro VARCHAR(100) NOT NULL,
  cpfTrilheiro VARCHAR(14) NOT NULL,
  fk_emailTrilheiro_emailTrilheiro_PK INT,
  fk_telefoneTrilheiro_telefoneTrilheiro_PK INT,
  apelidoTrilheiro VARCHAR(50),
  descricaoTrilheiro VARCHAR(500),
  generoTrilheiro VARCHAR(20),
  pronomeTrilheiro VARCHAR(20),
  informacoesMedicasTrilheiro VARCHAR(500),
  fk_enderecoTrilheiro_enderecoTrilheiro_PK INT,
  fk_dadosBancariosTrilheiro_dadosBancariosTrilheiro_PK INT,
  dataNascimentoTrilheiro DATE
);

CREATE TABLE Guia (
  idGuia INT PRIMARY KEY AUTO_INCREMENT,
  nomeGuia VARCHAR(100) NOT NULL,
  cpfGuia VARCHAR(14) NOT NULL,
  emailGuia VARCHAR(100),
  telefoneGuia VARCHAR(15),
  pronomeGuia VARCHAR(20),
  regiaoGuia VARCHAR(100),
  experienciaPontoNorteGuia VARCHAR(500),
  descricaoGuia VARCHAR(500),
  numeroRegistroGuia INT,
  principaisTrilhasGuia VARCHAR(300),
  nivelContaGuia INT,
  fk_dadosBancariosGuia_dadosBancariosGuia_PK INT,
  fk_enderecoGuia_enderecoGuia_PK INT
);

CREATE TABLE ProximaTrilhaTrilheiro (
  idProximoTrilhaTrilheiro INT PRIMARY KEY AUTO_INCREMENT,
  contatoGuiaProximaTrilhaTrilheiro VARCHAR(15),
  dataProximaTrilhaTrilheiro DATE,
  horaProximaTrilhaTrilheiro TIME,
  pontoReferenciaProximaTrilhaTrilheiro VARCHAR(200)
);

CREATE TABLE PagamentoPlano (
  idPagamentoPlano INT PRIMARY KEY AUTO_INCREMENT,
  formaPagamentoPlano VARCHAR(50),
  comprovantePagamentoPlano BLOB,
  tipoPlanoSelecionado VARCHAR(50),
  valorPagamentoPlano DECIMAL(10,2),
  dataPagamentoPlano DATE,
  horaPagamentoPlano TIME,
  fk_enderecoPagamentoPlano_enderecoPagamentoPlano_PK INT,
  fk_infoPessoaisPagamentoPlano_infoPessoaisPagamentoPlano_PK INT
);

CREATE TABLE HistoricoTrilhaFeitaTrilheiro (
  idHistoricoTrilhaFeita INT PRIMARY KEY AUTO_INCREMENT,
  guiaHistoricoTrilhaTrilheiro VARCHAR(100),
  dataHistoricoTrilhaTrilheiro DATE
);

CREATE TABLE ScoreTrilheiro (
  idScoreTrilheiro INT PRIMARY KEY AUTO_INCREMENT,
  pontuacaoScoreTrilheiro INT
);

CREATE TABLE AvaliacaoTrilheiroParaGuia (
  idAvaliacaoTrilheiro INT PRIMARY KEY AUTO_INCREMENT,
  comentarioAvaliacaoTrilheiro VARCHAR(500),
  indiceAvaliacaoTrilheiro TINYINT
);

CREATE TABLE Plano (
  idPlano INT PRIMARY KEY AUTO_INCREMENT,
  nomePlano VARCHAR(50),
  descricaoPlano VARCHAR(200)
);

CREATE TABLE PagamentoGuia (
  idPagamentoGuia INT PRIMARY KEY AUTO_INCREMENT,
  formaPagamentoGuia VARCHAR(50),
  horaPagamentoGuia TIME,
  dataPagamentoGuia DATE,
  comprovantePagamentoGuia BLOB,
  tipoPagamentoGuia VARCHAR(50),
  valor DECIMAL(10,2)
);

CREATE TABLE Trilha (
  idTrilha INT PRIMARY KEY AUTO_INCREMENT,
  nomeTrilha VARCHAR(100),
  imagensTrilha BLOB,
  comentarioTrilha VARCHAR(500),
  trajetoTrilha BLOB,
  descricaoTrilha VARCHAR(1000),
  fk_infoTecnicaTrilha_infoTecnicaTrilha_PK INT,
  fk_equipamentoRecomendado_equipamentoRecomendado_PK INT
);

CREATE TABLE AgendaGuia (
  idAgendaGuia INT PRIMARY KEY AUTO_INCREMENT,
  quantidadePessoasAgendaGuia INT,
  valorAgendaGuia DECIMAL(10,2),
  horaPartidaAgendaGuia TIME,
  dataAgendaGuia DATE,
  horaRetornoAgendaGuia TIME,
  localEncontroAgendaGuia VARCHAR(200),
  fk_convidadoAgendaGuia_convidadoAgendaGuia_PK INT,
  fk_responsavelMenorAgenda_responsavelMenorAgenda_PK INT
);

CREATE TABLE UltimaTrilhaFeitaGuia (
  idUltimaTrilhaFeitaGuia INT PRIMARY KEY AUTO_INCREMENT,
  horaUltimaTrilhaGuia TIME,
  dataUltimaTrilhaGuia DATE,
  localUltimaTrilhaGuia VARCHAR(200)
);

CREATE TABLE AvalliacaoGuiaParaTrilheiro (
  idAvaliacaoGuia INT PRIMARY KEY AUTO_INCREMENT,
  descricaoAvaliacaoGuia VARCHAR(500),
  indiceAvaliacaoGuia TINYINT
);

-- Tabelas auxiliares
CREATE TABLE emailTrilheiro (
  emailTrilheiro_PK INT PRIMARY KEY AUTO_INCREMENT,
  emailTrilheiro VARCHAR(100)
);

CREATE TABLE telefoneTrilheiro (
  telefoneTrilheiro_PK INT PRIMARY KEY AUTO_INCREMENT,
  telefoneTrilheiro VARCHAR(15)
);

CREATE TABLE enderecoTrilheiro (
  enderecoTrilheiro_PK INT PRIMARY KEY AUTO_INCREMENT,
  ruaEnderecoTrilheiro VARCHAR(100),
  numeroEnderecoTrilheiro INT,
  bairroEnderecoTrilheiro VARCHAR(100),
  cidadeEnderecoTrilheiro VARCHAR(100),
  estadoEnderecoTrilheiro VARCHAR(50),
  cepEnderecoTrilheiro VARCHAR(10)
);

CREATE TABLE dadosBancariosTrilheiro (
  dadosBancariosTrilheiro_PK INT PRIMARY KEY AUTO_INCREMENT,
  instituicaoBancaria VARCHAR(100),
  numeroConta VARCHAR(20),
  agenciaBancaria VARCHAR(10),
  codigoBanco VARCHAR(10)
);

CREATE TABLE dadosBancariosGuia (
  dadosBancariosGuia_PK INT PRIMARY KEY AUTO_INCREMENT,
  instituicaoBancaria VARCHAR(100),
  numeroContaGuia VARCHAR(20),
  agenciaBancariaGuia VARCHAR(10),
  codigoBancoGuia VARCHAR(10)
);

CREATE TABLE enderecoGuia (
  enderecoGuia_PK INT PRIMARY KEY AUTO_INCREMENT,
  ruaEnderecoGuia VARCHAR(100),
  numeroEnderecoGuia INT,
  bairroEnderecoGuia VARCHAR(100),
  cidadeEnderecoGuia VARCHAR(100),
  estadoEnderecoGuia VARCHAR(50),
  cepEnderecoGuia VARCHAR(10),
  complementoEnderecoGuia VARCHAR(100)
);

CREATE TABLE enderecoPagamentoPlano (
  enderecoPagamentoPlano_PK INT PRIMARY KEY AUTO_INCREMENT,
  ruaEnderecoPagamentoPlano VARCHAR(100),
  numeroEnderecoPagamentoPlano INT,
  bairroEnderecoPagamentoPlano VARCHAR(100),
  estadoEnderecoPagamentoPlano VARCHAR(50),
  cidadeEnderecoPagamentoPlano VARCHAR(100)
);

CREATE TABLE infoPessoaisPagamentoPlano (
  infoPessoaisPagamentoPlano_PK INT PRIMARY KEY AUTO_INCREMENT,
  nomeInfoPessoaisTrilheiro VARCHAR(100),
  cpfInfoPessoaisTrilheiro VARCHAR(14),
  emailInfoPessoaisTrilheiro VARCHAR(100)
);

CREATE TABLE infoTecnicaTrilha (
  infoTecnicaTrilha_PK INT PRIMARY KEY AUTO_INCREMENT,
  distanciaInfoTecnicaTrilha INT,
  elevacaoMaximaInfoTecnicaTrilha INT
);

CREATE TABLE equipamentoRecomendado (
  equipamentoRecomendado_PK INT PRIMARY KEY AUTO_INCREMENT,
  tipoEquipamentoRecomendado VARCHAR(100),
  descricaoEquipamentoRecomendado VARCHAR(500)
);

CREATE TABLE convidadoAgendaGuia (
  convidadoAgendaGuia_PK INT PRIMARY KEY AUTO_INCREMENT,
  cpfConvidadoAgendaGuia VARCHAR(14),
  nomeConvidadoAgendaGuia VARCHAR(100),
  dataNascimentoConvidadoAgendaGuia DATE
);

CREATE TABLE ResponsavelMenorAgenda (
  responsavelMenorAgenda_PK INT PRIMARY KEY AUTO_INCREMENT,
  nomeResponsavelMenorAgenda VARCHAR(100),
  cpfResponsavelMenorAgenda VARCHAR(14),
  dataNascimentoResponsavelMenorAgenda DATE,
  telefoneResponsavelMenorAgenda VARCHAR(15)
);

CREATE TABLE Aderir (
  idAderir INT PRIMARY KEY AUTO_INCREMENT,
  fk_HistoricoTrilhaFeitaTrilheiro_idHistoricoTrilhaFeita INT,
  fk_ScoreTrilheiro_idScoreTrilheiro INT
);

CREATE TABLE Definir (
  idDefinir INT PRIMARY KEY AUTO_INCREMENT,
  fk_Trilheiro_idTrilheiro INT,
  fk_ProximaTrilhaTrilheiro_idProximoTrilhaTrilheiro INT
);

CREATE TABLE Efetuar (
  idEfetuar INT PRIMARY KEY AUTO_INCREMENT,
  fk_PagamentoPlano_idPagamentoPlano INT,
  fk_Trilheiro_idTrilheiro INT,
  CONSTRAINT FK_Efetuar_1 FOREIGN KEY (fk_PagamentoPlano_idPagamentoPlano)
    REFERENCES PagamentoPlano(idPagamentoPlano),
  CONSTRAINT FK_Efetuar_2 FOREIGN KEY (fk_Trilheiro_idTrilheiro)
    REFERENCES Trilheiro(idTrilheiro)
);

CREATE TABLE Adquirir (
  idAdquirir INT PRIMARY KEY AUTO_INCREMENT,
  fk_Trilheiro_idTrilheiro INT,
  fk_Plano_idPlano INT
);


ALTER TABLE Trilheiro
  ADD CONSTRAINT FK_Trilheiro_2 FOREIGN KEY (fk_emailTrilheiro_emailTrilheiro_PK)
  REFERENCES emailTrilheiro(emailTrilheiro_PK),
  ADD CONSTRAINT FK_Trilheiro_3 FOREIGN KEY (fk_telefoneTrilheiro_telefoneTrilheiro_PK)
  REFERENCES telefoneTrilheiro(telefoneTrilheiro_PK),
  ADD CONSTRAINT FK_Trilheiro_4 FOREIGN KEY (fk_enderecoTrilheiro_enderecoTrilheiro_PK)
  REFERENCES enderecoTrilheiro(enderecoTrilheiro_PK) ON DELETE SET NULL,
  ADD CONSTRAINT FK_Trilheiro_5 FOREIGN KEY (fk_dadosBancariosTrilheiro_dadosBancariosTrilheiro_PK)
  REFERENCES dadosBancariosTrilheiro(dadosBancariosTrilheiro_PK) ON DELETE SET NULL;

ALTER TABLE Guia
  ADD CONSTRAINT FK_Guia_2 FOREIGN KEY (fk_dadosBancariosGuia_dadosBancariosGuia_PK)
  REFERENCES dadosBancariosGuia(dadosBancariosGuia_PK) ON DELETE SET NULL,
  ADD CONSTRAINT FK_Guia_3 FOREIGN KEY (fk_enderecoGuia_enderecoGuia_PK)
  REFERENCES enderecoGuia(enderecoGuia_PK) ON DELETE SET NULL;

ALTER TABLE PagamentoPlano
  ADD CONSTRAINT FK_PagamentoPlano_2 FOREIGN KEY (fk_enderecoPagamentoPlano_enderecoPagamentoPlano_PK)
  REFERENCES enderecoPagamentoPlano(enderecoPagamentoPlano_PK) ON DELETE SET NULL,
  ADD CONSTRAINT FK_PagamentoPlano_3 FOREIGN KEY (fk_infoPessoaisPagamentoPlano_infoPessoaisPagamentoPlano_PK)
  REFERENCES infoPessoaisPagamentoPlano(infoPessoaisPagamentoPlano_PK) ON DELETE SET NULL;

ALTER TABLE Trilha
  ADD CONSTRAINT FK_Trilha_2 FOREIGN KEY (fk_infoTecnicaTrilha_infoTecnicaTrilha_PK)
  REFERENCES infoTecnicaTrilha(infoTecnicaTrilha_PK) ON DELETE SET NULL,
  ADD CONSTRAINT FK_Trilha_3 FOREIGN KEY (fk_equipamentoRecomendado_equipamentoRecomendado_PK)
  REFERENCES equipamentoRecomendado(equipamentoRecomendado_PK) ON DELETE SET NULL;

ALTER TABLE AgendaGuia
  ADD CONSTRAINT fk_convidadoAgenda FOREIGN KEY (fk_convidadoAgendaGuia_convidadoAgendaGuia_PK)
    REFERENCES convidadoAgendaGuia(convidadoAgendaGuia_PK)
    ON DELETE SET NULL,
  ADD CONSTRAINT fk_responsavelMenorAgenda FOREIGN KEY (fk_ResponsavelMenorAgenda_ResponsavelMenorAgenda_PK)
    REFERENCES ResponsavelMenorAgenda(ResponsavelMenorAgenda_PK)
    ON DELETE SET NULL;


ALTER TABLE Definir
  ADD CONSTRAINT FK_Definir_1 FOREIGN KEY (fk_Trilheiro_idTrilheiro)
    REFERENCES Trilheiro(idTrilheiro),
  ADD CONSTRAINT FK_Definir_2 FOREIGN KEY (fk_ProximaTrilhaTrilheiro_idProximoTrilhaTrilheiro)
    REFERENCES ProximaTrilhaTrilheiro(idProximoTrilhaTrilheiro);
/*
ALTER TABLE Efetuar
  ADD CONSTRAINT FK_Efetuar_1 FOREIGN KEY (fk_PagamentoPlano_idPagamentoPlano)
  REFERENCES PagamentoPlano(idPagamentoPlano),
  ADD CONSTRAINT FK_Efetuar_2 FOREIGN KEY (fk_Trilheiro_idTrilheiro)
  REFERENCES Trilheiro(idTrilheiro);
*/

ALTER TABLE Aderir
  ADD CONSTRAINT FK_Aderir_1 FOREIGN KEY (fk_HistoricoTrilhaFeitaTrilheiro_idHistoricoTrilhaFeita)
  REFERENCES HistoricoTrilhaFeitaTrilheiro(idHistoricoTrilhaFeita),
  ADD CONSTRAINT FK_Aderir_2 FOREIGN KEY (fk_ScoreTrilheiro_idScoreTrilheiro)
  REFERENCES ScoreTrilheiro(idScoreTrilheiro);

ALTER TABLE Adquirir
  ADD CONSTRAINT FK_Adquirir_1 FOREIGN KEY (fk_Trilheiro_idTrilheiro)
  REFERENCES Trilheiro(idTrilheiro),
  ADD CONSTRAINT FK_Adquirir_2 FOREIGN KEY (fk_Plano_idPlano)
  REFERENCES Plano(idPlano);


-- Testes rápidos
SELECT * FROM Trilheiro;
INSERT INTO Trilheiro(nomeTrilheiro, cpfTrilheiro, generoTrilheiro)
VALUES ('Enzo', '12345678900', 'Masculino'),
       ('Jailson', '12342278900', 'Masculino');

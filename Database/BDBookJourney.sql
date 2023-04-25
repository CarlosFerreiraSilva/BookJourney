use BDBookJourney
go
Create table Livro(
LIVID int identity(1,1) not null primary key,
LIVNOME varchar(100)
)
go
Create table Capitulo(
CAPID int identity(1,1) not null primary key,
CAPDESCRICAO varchar(100) not null,
LIVID int not null foreign key references Livro(LIVID)
)
go
Create table ListaCard(
LISID int identity(1,1) not null primary key,
LISNOME varchar(100) not null,
LISOVERVIEW varchar(max) null,
)
go
Create table CardTexto(
CARID int identity(1,1) not null primary key,
CARTEXTO varchar(max) not null,
)
go
Create table ClassificacaoPalavra(
CLAID int identity(1,1) not null primary key,
CLADESCRICAO varchar(100) not null,
)
go
Create Table Palavra(
PALID int identity(1,1) not null primary key,
PALPALAVRA varchar(100) not null,
PALRELEVANTE int not null default 0,
)
go
Create table PalavraCard(
PACID int identity(1,1) not null primary key,
PALID int not null foreign key references Palavra(PALID),
CARID int not null foreign key references CardTexto(CARID),
CLAID int null foreign key references ClassificacaoPalavra(CLAID),
)
go
Alter table Livro
add LIVAUTOR varchar(100) null
go
Alter Table ListaCard
add CAPID int not null
go
ALTER TABLE ListaCard
ADD FOREIGN KEY (CAPID) REFERENCES Capitulo(CAPID)
go
ALTER TABLE CARDTEXTO
add  LISID INT NOT NULL
GO
ALTER TABLE CARDTEXTO
ADD FOREIGN KEY (LISID) REFERENCES LISTACARD(LISID)
GO
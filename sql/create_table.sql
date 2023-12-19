DROP TABLE HOS_HOSPITAL, HOS_ENFERMARIA, FCO_FUNCIONARIO, FCO_CARGO, PAC_PACIENTE, PAC_ESTADO_CIVIL, PAC_ACOMPANHANTE;

CREATE TABLE HOS_HOSPITAL (
	IDHOS 		INT 		AUTO_INCREMENT NOT NULL,
	CDHOS 		CHAR(3) 	NOT NULL,
	DCHOS 		VARCHAR(60) NOT NULL,
	NRLOGHOS 	VARCHAR(5) 	NULL,
	DCLOGHOS 	VARCHAR(55) NOT NULL,
	NRCEPHOS 	CHAR(8) 	NOT NULL,
	DCBAIHOS 	VARCHAR(30) NOT NULL,
	DCCIDHOS 	VARCHAR(40) NOT NULL,
	SGUFSHOS 	CHAR(2) 	NOT NULL,
	CDPSIHOS 	CHAR(2) 	NULL,
	NRTELHOS 	VARCHAR(20) NULL,
	AUUSUULTALT VARCHAR(100)NOT NULL,
	AUDATULTALT DATETIME 	NOT NULL,
    PRIMARY KEY(IDHOS)
);

CREATE TABLE HOS_ENFERMARIA (
    IDENF 		INT 		AUTO_INCREMENT NOT NULL,
    CDENF 		CHAR(4) 	NOT NULL,
	IDHOS 		INT  		NOT NULL,
    CDHOS		CHAR(3)		NOT NULL,
    DCBLO 		CHAR(1) 	NOT NULL,
    AUUSUULTALT VARCHAR(100)NOT NULL,
	AUDATULTALT DATETIME 	NOT NULL,
    PRIMARY KEY(IDENF)
);

CREATE TABLE FCO_FUNCIONARIO (
	IDFCO       INT 		AUTO_INCREMENT NOT NULL,
    IDHOS 		INT  		NOT NULL,
	CDHOS		CHAR(3)		NOT NULL,
	NRISC		CHAR(9) 	NOT NULL,
	NMFCO       VARCHAR(75) NOT NULL,
	DTNSCFCO    DATETIME 	NOT NULL,
	TPSEXFCO	CHAR(1)		NOT NULL,
	NRCPFFCO    CHAR(14)	NOT NULL,
    DTISCFCO	DATETIME	NOT NULL,
	DCLOGFCO    VARCHAR(60)	NOT NULL,
	NRLOGFCO	VARCHAR(6)	NOT NULL,
	DCBAIFCO	VARCHAR(60)	NOT NULL,
	DCCIDFCO	VARCHAR(40)	NOT NULL,
	CDPSIFCO	CHAR(2)		NOT NULL,
	NRCEPFCO	VARCHAR(8)	NOT NULL,
	SGUFSFCO	CHAR(2)		NOT NULL,
	NRTELRSDFCO VARCHAR(20)	NOT NULL,
	DCEMLFCO    VARCHAR(45)	NOT NULL,
	NRCGO		CHAR(8)		NOT NULL,
	AUUSUULTALT VARCHAR(100)NOT NULL,
	AUDATULTALT DATETIME	NOT NULL,
	PRIMARY KEY(IDFCO)
);


CREATE TABLE FCO_CARGO (
	IDCGO 		INT 		AUTO_INCREMENT ,
	NRCGO 		CHAR(8) 	,
	DCCGO 		VARCHAR(70) ,
	AUUSUULTALT VARCHAR(100),
	AUDATULTALT DATETIME 	,
	PRIMARY KEY(IDCGO)
);

CREATE TABLE PAC_PACIENTE (
	IDPAC       INT 		AUTO_INCREMENT NOT NULL,
    IDHOS 		INT  		NOT NULL,
	CDHOS		CHAR(3)		NOT NULL,
    IDENF 		INT  		NOT NULL,
    CDENF 		CHAR(4) 	NOT NULL,
	NRMATPAC	CHAR(10) 	NOT NULL,
	NMPAC       VARCHAR(75) NOT NULL,
	DTNSCPAC    DATETIME 	NOT NULL,
	TPSEXPAC	CHAR(1)		NOT NULL,
	NRCPFPAC    CHAR(14)	NOT NULL,
    DTISCPAC	DATETIME	NOT NULL,
	NMPAI       VARCHAR(75)	NULL,
	NMMAE       VARCHAR(75)	NULL,
	DTFALPAC    DATETIME 	NULL,
	DCLOGPAC    VARCHAR(60)	NOT NULL,
	NRLOGPAC	VARCHAR(6)	NOT NULL,
	DCBAIPAC	VARCHAR(60)	NOT NULL,
	DCCIDPAC	VARCHAR(40)	NOT NULL,
	CDPSIPAC	CHAR(2)		NOT NULL,
	NRCEPPAC	VARCHAR(8)	NOT NULL,
	SGUFSPAC	CHAR(2)		NOT NULL,
	NRTELRSDPAC VARCHAR(20)	NOT NULL,
	NRTELCOMPAC VARCHAR(20)	NOT NULL,
	DCEMLPAC    VARCHAR(45)	NOT NULL,
	AUUSUULTALT VARCHAR(100)NOT NULL,
	AUDATULTALT DATETIME	NOT NULL,
	PRIMARY KEY(IDPAC)
);

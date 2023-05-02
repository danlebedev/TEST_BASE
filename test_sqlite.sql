DROP TABLE elements;
CREATE TABLE elements(
    elem_id         TEXT    NOT NULL,
    elem_symbol     TEXT    NOT NULL,
    atomic_number   INTEGER NOT NULL,
    elem_name_lat   TEXT    NOT NULL,
    elem_name_en    TEXT    NOT NULL,
    elem_name_ru    TEXT    NOT NULL,
    pubdate         NUMERIC NOT NULL,
    CONSTRAINT pk_elements PRIMARY KEY (elem_id)
);
INSERT INTO elements VALUES('E01','H',1,'Hydrogenium','Hydrogen','Водород','2023-01-10');
INSERT INTO elements VALUES('E02','He',2,'Helium','Helium','Гелий','2023-01-10');
INSERT INTO elements VALUES('E03','Li',3,'Lithium','Lithium','Литий','2023-01-10');
INSERT INTO elements VALUES('E04','Be',4,'Beryllium','Beryllium','Бериллий','2023-02-25');
INSERT INTO elements VALUES('E05','B',5,'Borum','Boron','Бор','2023-02-25');
INSERT INTO elements VALUES('E06','C',6,'Carboneum','Carbon','Углерод','2023-02-25');
INSERT INTO elements VALUES('E07','N',7,'Nitrogenium','Nitrogen','Азот','2023-03-28');
INSERT INTO elements VALUES('E08','O',8,'Oxygenium','Oxygen','Кислород','2023-03-28');
INSERT INTO elements VALUES('E09','F',9,'Fluorum','Fluorine','Фтор','2023-03-28');
INSERT into elements VALUES('E10','Ne',10,'Neon','Neon','Неон','2023-03-28');


DROP TABLE elements_properties;
CREATE TABLE elements_properties(
    elem_id         TEXT        NOT NULL,
    elem_period     INTEGER     NOT NULL,
    elem_group      INTEGER     NOT NULL,
    bond            TEXT                ,
    state           TEXT                ,
    atomic_weight   REAL                ,
    dencity         REAL                ,
    CONSTRAINT pk_elements_properties PRIMARY KEY (elem_id)
);
INSERT INTO elements_properties VALUES('E01',1,1,'molecular covalent','gas',1.008,0.00008988);
INSERT INTO elements_properties VALUES('E02',1,18,'single atoms','gas',4.0026,0.0001785);
INSERT INTO elements_properties VALUES('E03',2,1,'metallic','solid',6.94,0.534);
INSERT INTO elements_properties VALUES('E04',2,2,'metallic','solid',9.0122,1.85);
INSERT INTO elements_properties VALUES('E05',2,13,'network covalent','solid',10.81,2.34);
INSERT INTO elements_properties VALUES('E06',2,14,'network covalent','solid',12.011,2.265);
INSERT INTO elements_properties VALUES('E07',2,15,'molecular covalent','gas',14.007,0.0012506);
INSERT INTO elements_properties VALUES('E08',2,16,'molecular covalent','gas',15.999,0.001429);
INSERT INTO elements_properties VALUES('E09',2,17,'molecular covalent','gas',18.998,0.001693);
INSERT INTO elements_properties VALUES('E10',2,18,'single atoms','gas',20.180,0.00090035);


DROP TABLE chemical_compounds;
CREATE TABLE chemical_compounds(
    comp_id         TEXT    NOT NULL,
    chem_formula    TEXT            ,
    comp_name       TEXT            ,
    solubility_h2o  REAL            ,
    dencity         REAL            ,
    pubdate         NUMERIC NOT NULL,
    st_id           TEXT    NOT NULL,
    CONSTRAINT pk_chemical_compounds PRIMARY KEY (comp_id)
);
INSERT INTO chemical_compounds VALUES('C01','H2O','water',NULL,0.9982,'2023-04-15','S02');
INSERT INTO chemical_compounds VALUES('C02','CH4','methane',0.0022,0.0007168,'2023-04-15','S01');
INSERT INTO chemical_compounds VALUES('C03','H3BO3','boric acid',5.74,1.435,'2023-04-15','S03');
INSERT INTO chemical_compounds VALUES('C04','Be(OH)2','beryllium hydroxide',0.0063,1.92,'2023-05-12','S03');
INSERT INTO chemical_compounds VALUES('C05','NH3','ammonia',46.2,0.00077,'2023-05-12','S01');
INSERT INTO chemical_compounds VALUES('CO6','LiH','lithium hydride',NULL,0.78,'2023-06-07','S03');
INSERT INTO chemical_compounds VALUES('C07','LiF','lithium fluoride',0.13,2.635,'2023-06-07','S03');


DROP TABLE elements_in_compound;
CREATE TABLE elements_in_compound(
    comp_id         TEXT        NOT NULL,
    elem_id         TEXT        NOT NULL,
    num_of_atoms    INTEGER     NOT NULL,
    CONSTRAINT pk_elements_in_compound PRIMARY KEY (comp_id, elem_id)
);
INSERT INTO elements_in_compound VALUES('C01','E01',2);
INSERT INTO elements_in_compound VALUES('C01','E08',1);
INSERT INTO elements_in_compound VALUES('C02','E06',1);
INSERT INTO elements_in_compound VALUES('C02','E01',4);
INSERT INTO elements_in_compound VALUES('C03','E01',3);
INSERT INTO elements_in_compound VALUES('C03','E05',1);
INSERT INTO elements_in_compound VALUES('C03','E08',3);
INSERT INTO elements_in_compound VALUES('C04','E04',1);
INSERT INTO elements_in_compound VALUES('C04','E08',2);
INSERT INTO elements_in_compound VALUES('C04','E01',2);
INSERT INTO elements_in_compound VALUES('C05','E07',1);
INSERT INTO elements_in_compound VALUES('C05','E01',3);
INSERT INTO elements_in_compound VALUES('C06','E03',1);
INSERT INTO elements_in_compound VALUES('CO6','E01',1);
INSERT INTO elements_in_compound VALUES('C07','E03',1);
INSERT INTO elements_in_compound VALUES('C07','E09',1);


DROP TABLE state_of_compound;
CREATE TABLE state_of_compound(
    st_id           TEXT    NOT NULL,
    st_compound     TEXT    NOT NULL,
    CONSTRAINT pk_state_of_compound PRIMARY KEY (st_id)
);
INSERT INTO state_of_compound VALUES('S01','gas');
INSERT INTO state_of_compound VALUES('S02','liquid');
INSERT INTO state_of_compound VALUES('S03','solid');

DROP TABLE elements;
CREATE TABLE elements(
    elem_id         TEXT    NOT NULL,
    elem_symbol     TEXT    NOT NULL,
    atomic_number   INTEGER NOT NULL,
    elem_name_lat   TEXT    NOT NULL,
    elem_name_en    TEXT    NOT NULL,
    elem_name_ru    TEXT    NOT NULL,
    CONSTRAINT pk_elements PRIMARY KEY (elem_id)
);
INSERT INTO elements VALUES('E01','H',1,'Hydrogenium','Hydrogen','Водород');
INSERT INTO elements VALUES('E02','He',2,'Helium','Helium','Гелий');
INSERT INTO elements VALUES('E03','Li',3,'Lithium','Lithium','Литий');
INSERT INTO elements VALUES('E04','Be',4,'Beryllium','Beryllium','Бериллий');
INSERT INTO elements VALUES('E05','B',5,'Borum','Boron','Бор');
INSERT INTO elements VALUES('E06','C',6,'Carboneum','Carbon','Углерод');
INSERT INTO elements VALUES('E07','N',7,'Nitrogenium','Nitrogen','Азот');
INSERT INTO elements VALUES('E08','O',8,'Oxygenium','Oxygen','Кислород');
INSERT INTO elements VALUES('E09','F',9,'Fluorum','Fluorine','Фтор');
INSERT into elements VALUES('E10','Ne',10,'Neon','Neon','Неон');


DROP TABLE elements_properties;
CREATE TABLE elements_properties(
    elem_id         TEXT        NOT NULL,
    bond            TEXT                ,
    state           TEXT                ,
    atomic_weight   REAL                ,
    CONSTRAINT pk_elements_properties PRIMARY KEY (elem_id)
);
INSERT INTO elements_properties VALUES('E01','molecular covalent','gas',1.008);
INSERT INTO elements_properties VALUES('E02','single atoms','gas',4.0026);
INSERT INTO elements_properties VALUES('E03','metallic','solid',6.94);
INSERT INTO elements_properties VALUES('E04','metallic','solid',9.0122);
INSERT INTO elements_properties VALUES('E05','network covalent','solid',10.81);
INSERT INTO elements_properties VALUES('E06','network covalent','solid',12.011);
INSERT INTO elements_properties VALUES('E07','molecular covalent','gas',14.007);
INSERT INTO elements_properties VALUES('E08','molecular covalent','gas',15.999);
INSERT INTO elements_properties VALUES('E09','molecular covalent','gas',18.998);
INSERT INTO elements_properties VALUES('E10','single atoms','gas',20.180);


DROP TABLE chemical_compounds;
CREATE TABLE chemical_compounds(
    comp_id         TEXT    NOT NULL,
    chem_formula    TEXT            ,
    comp_name       TEXT            ,
    st_id           TEXT    NOT NULL,
    CONSTRAINT pk_chemical_compounds PRIMARY KEY (comp_id)
);
INSERT INTO chemical_compounds VALUES('C01','H2O','water','S02');
INSERT INTO chemical_compounds VALUES('C02','CH4','methane','S01');
INSERT INTO chemical_compounds VALUES('C03','H3BO3','boric acid','S03');
INSERT INTO chemical_compounds VALUES('C04','Be(OH)2','beryllium hydroxide','S03');
INSERT INTO chemical_compounds VALUES('C05','NH3','ammonia','S01');
INSERT INTO chemical_compounds VALUES('C06','LiF','lithium fluoride','S03');


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
INSERT INTO elements_in_compound VALUES('C06','E09',1);


DROP TABLE state_of_compound;
CREATE TABLE state_of_compound(
    st_id           TEXT    NOT NULL,
    st_compound     TEXT    NOT NULL,
    CONSTRAINT pk_state_of_compound PRIMARY KEY (st_id)
);
INSERT INTO state_of_compound VALUES('S01','gas');
INSERT INTO state_of_compound VALUES('S02','liquid');
INSERT INTO state_of_compound VALUES('S03','solid');
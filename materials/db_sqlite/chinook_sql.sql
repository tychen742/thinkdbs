CREATE TABLE IF NOT EXISTS SunBelt (
    ID    INTEGER PRIMARY KEY,
    State TEXT    NOT NULL
                  UNIQUE
);

INSERT INTO SunBelt(State) VALUES ("Alabama");
INSERT INTO SunBelt(State) VALUES ("Arkansas");
INSERT INTO SunBelt(State) VALUES ("Arizona");
INSERT INTO SunBelt(State) VALUES ("California");
INSERT INTO SunBelt(State) VALUES ("Colorado");
INSERT INTO SunBelt(State) VALUES ("Florida");
INSERT INTO SunBelt(State) VALUES ("Georgia");
INSERT INTO SunBelt(State) VALUES ("Kansas");
INSERT INTO SunBelt(State) VALUES ("Louisiana");
INSERT INTO SunBelt(State) VALUES ("Mississippi");
INSERT INTO SunBelt(State) VALUES ("North Carolina");
INSERT INTO SunBelt(State) VALUES ("New Mexico");
INSERT INTO SunBelt(State) VALUES ("Nevada");
INSERT INTO SunBelt(State) VALUES ("Oklahoma");
INSERT INTO SunBelt(State) VALUES ("South Carolina");
INSERT INTO SunBelt(State) VALUES ("Tennessee");
INSERT INTO SunBelt(State) VALUES ("Texas");
INSERT INTO SunBelt(State) VALUES ("Utah");


UPDATE SunBelt
   SET ABBR = 'AL'
 WHERE State = 'Alabama';

UPDATE SunBelt
   SET ABBR = 'AR'
 WHERE State = "Arkansas";

UPDATE SunBelt
   SET ABBR = 'AZ'
 WHERE State = "Arizona";

UPDATE SunBelt
   SET ABBR = 'CA'
 WHERE State = ("California");

UPDATE SunBelt
   SET ABBR = 'CO'
 WHERE State = ("Colorado");

UPDATE SunBelt
   SET ABBR = 'FL'
 WHERE State = "Florida";

UPDATE SunBelt
   SET ABBR = 'GA'
 WHERE State = ("Georgia");

UPDATE SunBelt
   SET ABBR = 'KS'
 WHERE State = ("Kansas");

UPDATE SunBelt
   SET ABBR = 'LO'
 WHERE State = "Louisiana";

UPDATE SunBelt
   SET ABBR = 'MI'
 WHERE State = ("Mississippi");

UPDATE SunBelt
   SET ABBR = 'NC'
 WHERE State = ("North Carolina");

UPDATE SunBelt
   SET ABBR = 'NM'
 WHERE State = ("New Mexico");

UPDATE SunBelt
   SET ABBR = 'NV'
 WHERE State = ("Nevada");

UPDATE SunBelt
   SET ABBR = 'OK'
 WHERE State = "Oklahoma";

UPDATE SunBelt
   SET ABBR = 'SC'
 WHERE State = ("South Carolina");

UPDATE SunBelt
   SET ABBR = 'TN'
 WHERE State = "Tennessee";

UPDATE SunBelt
   SET ABBR = 'TX'
 WHERE State = "Texas";

UPDATE SunBelt
   SET ABBR = 'UT'
 WHERE State = "Utah";
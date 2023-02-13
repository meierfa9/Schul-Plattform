INSERT INTO PERSONTABLE (STATUS, USER_NAME, HUMANTYPE, NAME, SURNAME, KLASSE) VALUES ('Student', 'leonardo.daSilva','Student','da Silva',  'Leonardo', '3a');
INSERT INTO PERSONTABLE (STATUS, USER_NAME, HUMANTYPE, NAME, SURNAME, KLASSE) VALUES ('Student', 'nico.widmer','Student','Widmer',  'Nico', '3b');
INSERT INTO PERSONTABLE (STATUS, USER_NAME, HUMANTYPE, NAME, SURNAME, KLASSE) VALUES ('Student', 'luan.berisha','Student','Berisha',  'Luan', '4a');
INSERT INTO PERSONTABLE (STATUS, USER_NAME, HUMANTYPE, NAME, SURNAME, KLASSE) VALUES ('Student', 'mia.hunziker','Student','Hunziker',  'Mia', '5b');
INSERT INTO PERSONTABLE (STATUS, USER_NAME, HUMANTYPE, NAME, SURNAME, KLASSE) VALUES ('Student', 'sophie.sommer','Student','Sommer',  'Sophie', '6a');

INSERT INTO PERSONTABLE (STATUS, USER_NAME, HUMANTYPE, NAME, SURNAME, EMAIL) VALUES ('Teacher', 'g.steiner','Teacher','Steiner',  'Gianna', 'gianna.steiner@schule.ch');
INSERT INTO PERSONTABLE (STATUS, USER_NAME, HUMANTYPE, NAME, SURNAME, EMAIL) VALUES ('Teacher', 'e.zollinger','Teacher','Zollinger', 'Elena', 'elena.zollinger@schule.ch');
INSERT INTO PERSONTABLE (STATUS, USER_NAME, HUMANTYPE, NAME, SURNAME, EMAIL) VALUES ('Teacher', 'l.gashi','Teacher','Gashi', 'Leart', 'leart.gashi@schule.ch');

INSERT INTO SCHULFACH (TITLE, TEACHER_USER_NAME) VALUES ('Mathematik', 'g.steiner');
INSERT INTO SCHULFACH (TITLE, TEACHER_USER_NAME) VALUES ('Deutsch', 'l.gashi');
INSERT INTO SCHULFACH (TITLE, TEACHER_USER_NAME) VALUES ('Englisch', 'l.gashi');
INSERT INTO SCHULFACH (TITLE, TEACHER_USER_NAME) VALUES ('Franzoesisch', 'e.zollinger');
INSERT INTO SCHULFACH (TITLE, TEACHER_USER_NAME) VALUES ('Natur Mensch Gesellschaft', 'g.steiner');
INSERT INTO SCHULFACH (TITLE, TEACHER_USER_NAME) VALUES ('Medien und Informatik', 'g.steiner');
INSERT INTO SCHULFACH (TITLE, TEACHER_USER_NAME) VALUES ('Gestalten', 'e.zollinger');
INSERT INTO SCHULFACH (TITLE, TEACHER_USER_NAME) VALUES ('Sport', 'l.gashi');
INSERT INTO SCHULFACH (TITLE, TEACHER_USER_NAME) VALUES ('Musik', 'e.zollinger');


INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Zahlen 1-100','Loese die Aufgaben 1-10', false, 'Mathematik');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Freddy Muellers Text','Finde die Fallfehler', false , 'Deutsch' );
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Grosses Einmaleins','Uebe 30 Minuten das grosse Einmaleins', false,'Mathematik');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Kleines Einmaleins','Uebe 20 Minuten das kleine Einmaleins ', false,'Mathematik');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Multiplikation','Loese Aufgaben 1-10 im Kapitel "Multiplikation"', false,'Mathematik');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Division','Loese Aufgaben 1-10 im Kapitel "Division"', false,'Mathematik');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Reading','Read the text on page 17 and answer the questions', false,'Englisch');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Listening','Listen track 8 and answer the questions on page 25', false,'Englisch');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Writing','Write half a page about your weekend', false,'Englisch');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Vocabulary','Learn the vocabulary of Unit 5', false,'Englisch');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Leseverstaendnis','Lese den Text zum Thema Wolf', false,'Deutsch');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Aufsatz','Schreibe einen Aufsatz zum Thema Wetter', false,'Deutsch');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Rechtschreibung','Loese die Arbeitsblatt zu den Wortarten', false,'Deutsch');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Zeitformen','Loese das Arbeitsblatt zu den Zeitformen', false,'Deutsch');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Conjuger les verbes','Resous la fiche de travail sur les verbes irreguliers.', false,'Franzoesisch');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Vocabulaire','Apprends le vocabulaire de lunite 5.', false,'Franzoesisch');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Vocabulaire','Apprends le vocabulaire de lunite 12.', false,'Franzoesisch');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Passe Compose','Resous la fiche de travail sur le Passe Compose.', false,'Franzoesisch');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Dinosaurier','Loese das Raetsel zu den Dinosauriern.', false,'Natur Mensch Gesellschaft');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Mittelalter','Lies den Text zum Mittelalter.', false,'Natur Mensch Gesellschaft');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Klimawandel','Lerne die im Arbeitsblatt erwaehnten Begriffe zum Klimawandel.', false,'Natur Mensch Gesellschaft');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Schweizer Kantone','Loese das Arbeitsblatt zu den Kantonen.', false,'Natur Mensch Gesellschaft');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Programmieren','Loese die Programmieraufgabe auf dem Arbeitsblatt.', false,'Medien und Informatik');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Sicherheit','Lies den Text zu Passwoerten', false,'Medien und Informatik');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Tastaturschreiben','Uebe 20 Minuten mit dem Tastaturschreibprogramm', false,'Medien und Informatik');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Baeume','Stelle die Zeichnung eines Baums fertig', false,'Gestalten');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Stricken','Strick 20 Minuten an deinem Schal weiter', false,'Gestalten');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Ausdauer','Geh 20 Minuten joggen.', false,'Sport');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Kraft','Mach 10 Liegestutzen.', false,'Sport');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Notenlesen','Loese das Arbeitsblatt zum Notenlesen.', false,'Musik');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Singen','Uebe 15 Minuten das Lied Wind of Change', false,'Musik');

INSERT INTO SCHULFACH_STUDENT (SCHULFACH_TITLE, STUDENT_USER_NAME) VALUES ('Mathematik','mia.hunziker');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_TITLE, STUDENT_USER_NAME) VALUES ('Deutsch','mia.hunziker');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_TITLE, STUDENT_USER_NAME) VALUES ('Englisch','mia.hunziker');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_TITLE, STUDENT_USER_NAME) VALUES ('Franzoesisch','mia.hunziker');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_TITLE, STUDENT_USER_NAME) VALUES ('Natur Mensch Gesellschaft','nico.widmer');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_TITLE, STUDENT_USER_NAME) VALUES ('Mathematik','nico.widmer');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_TITLE, STUDENT_USER_NAME) VALUES ('Deutsch','nico.widmer');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_TITLE, STUDENT_USER_NAME) VALUES ('Sport','luan.berisha');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_TITLE, STUDENT_USER_NAME) VALUES ('Gestalten','luan.berisha');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_TITLE, STUDENT_USER_NAME) VALUES ('Medien und Informatik','luan.berisha');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_TITLE, STUDENT_USER_NAME) VALUES ('Musik','luan.berisha');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_TITLE, STUDENT_USER_NAME) VALUES ('Sport','nico.widmer');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_TITLE, STUDENT_USER_NAME) VALUES ('Mathematik','mia.hunziker');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_TITLE, STUDENT_USER_NAME) VALUES ('Deutsch','mia.hunziker');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_TITLE, STUDENT_USER_NAME) VALUES ('Englisch','mia.hunziker');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_TITLE, STUDENT_USER_NAME) VALUES ('Mathematik','sophie.sommer');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_TITLE, STUDENT_USER_NAME) VALUES ('Deutsch','sophie.sommer');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_TITLE, STUDENT_USER_NAME) VALUES ('Englisch','sophie.sommer');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_TITLE, STUDENT_USER_NAME) VALUES ('Franzoesisch','sophie.sommer');






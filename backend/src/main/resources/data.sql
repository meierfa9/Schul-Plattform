INSERT INTO PERSONTABLE (STATUS, USER_NAME, HUMANTYPE, NAME,  SURNAME, KLASSE) VALUES ('Student', 'meierfa9','Student','Meier',  'Fabio', 'TZA');
INSERT INTO PERSONTABLE (STATUS, USER_NAME, HUMANTYPE, NAME,  SURNAME, KLASSE) VALUES ('Student', 'mettlanj','Student','Mettler',  'Anja', 'TZA');
INSERT INTO PERSONTABLE (STATUS, USER_NAME, HUMANTYPE, NAME, SURNAME, KLASSE) VALUES ('Student', 'beckema2','Student','Becker',  'Marcel', 'TZB');


INSERT INTO PERSONTABLE (STATUS, USER_NAME, HUMANTYPE, NAME,  SURNAME, EMAIL) VALUES ('Teacher', 'meix','Teacher','Meisterhans',  'Max', 'meix@zhaw.ch');
INSERT INTO PERSONTABLE (STATUS, USER_NAME, HUMANTYPE, NAME, SURNAME, EMAIL) VALUES ('Teacher', 'heip','Teacher','Heinrich', 'Peter', 'heip@zhaw.ch');

INSERT INTO SCHULFACH (TITLE, TEACHER_USER_NAME) VALUES ('Mathematik', 'heip');
INSERT INTO SCHULFACH (TITLE, TEACHER_USER_NAME) VALUES ('Deutsch', 'heip');
INSERT INTO SCHULFACH (TITLE, TEACHER_USER_NAME) VALUES ('Englisch', 'heip');
INSERT INTO SCHULFACH (TITLE, TEACHER_USER_NAME) VALUES ('Franzoesisch', 'meix');
INSERT INTO SCHULFACH (TITLE, TEACHER_USER_NAME) VALUES ('Natur Mensch Gesellschaft', 'heip');
INSERT INTO SCHULFACH (TITLE, TEACHER_USER_NAME) VALUES ('Medien und Informatik', 'meix');
INSERT INTO SCHULFACH (TITLE, TEACHER_USER_NAME) VALUES ('Gestalten', 'heip');
INSERT INTO SCHULFACH (TITLE, TEACHER_USER_NAME) VALUES ('Sport', 'meix');
INSERT INTO SCHULFACH (TITLE, TEACHER_USER_NAME) VALUES ('Musik', 'meix');

INSERT INTO SCHULFACH_STUDENT (SCHULFACH_ID, STUDENT_USER_NAME) VALUES (1,'meierfa9');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_ID, STUDENT_USER_NAME) VALUES (2,'meierfa9');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_ID, STUDENT_USER_NAME) VALUES (3,'meierfa9');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_ID, STUDENT_USER_NAME) VALUES (4,'meierfa9');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_ID, STUDENT_USER_NAME) VALUES (5,'meierfa9');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_ID, STUDENT_USER_NAME) VALUES (1,'beckema2');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_ID, STUDENT_USER_NAME) VALUES (2,'beckema2');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_ID, STUDENT_USER_NAME) VALUES (8,'beckema2');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_ID, STUDENT_USER_NAME) VALUES (7,'mettlanj');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_ID, STUDENT_USER_NAME) VALUES (6,'mettlanj');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_ID, STUDENT_USER_NAME) VALUES (9,'mettlanj');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_ID, STUDENT_USER_NAME) VALUES (8,'mettlanj');

INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Zahlen 1-100','Löse die Aufgaben 1-10', false, 1);
INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Freddy Müllers Text','Finde die Fallfehler', false , 2 );
INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Grosses Einmaleins','Übe 30 Minuten das grosse Einmaleins', false,1);
INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Kleines Einmaleins','Übe 20 Minuten das kleine Einmaleins ', false,1);
INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Multiplikation','Löse Aufgaben 1-10 im Kapitel "Multiplikation"', false,1);
INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Division','Löse Aufgaben 1-10 im Kapitel "Division"', false,1);
INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Reading','Read the text on page 17 and answer the questions', false,3);
INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Listening','Listen track 8 and answer the questions on page 25', false,3);
INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Writing','Write half a page about your weekend', false,3);
INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Vocabulary','Learn the vocabulary of Unit 5', false,3);
INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Leseverständnis','Lese den Text zum Thema Wolf', false,2);
INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Aufsatz','Schreibe einen Aufsatz zum Thema Wetter', false,2);
INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Rechtschreibung','Löse die Arbeitsblatt zu den Wortarten', false,2);
INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Zeitformen','Löse das Arbeitsblatt zu den Zeitformen', false,2);
INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Conjuger les verbes','Résous la fiche de travail sur les verbes irréguliers.', false,4);
INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Vocabulaire','Apprends le vocabulaire de lunité 5.', false,4);
INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Vocabulaire','Apprends le vocabulaire de lunité 12.', false,4);
INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Passé Composé','Résous la fiche de travail sur le Passé Composé.', false,4);
INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Dinosaurier','Löse das Rätsel zu den Dinosauriern.', false,5);
INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Mittelalter','Lies den Text zum Mittelalter.', false,5);
INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Klimawandel','Lerne die im Arbeitsblatt erwähnten Begriffe zum Klimawandel.', false,5);
INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Schweizer Kantone','Löse das Arbeitsblatt zu den Kantonen.', false,5);
INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Programmieren','Löse die Programmieraufgabe auf dem Arbeitsblatt.', false,6);
INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Sicherheit','Lies den Text zu Passwörten', false,6);
INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Tastaturschreiben','Übe 20 Minuten mit dem Tastaturschreibprogramm', false,6);
INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Bäume','Stelle die Zeichnung eines Baums fertig', false,7);
INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Stricken','Strick 20 Minuten an deinem Schal weiter', false,7);
INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Ausdauer','Geh 20 Minuten joggen.', false,8);
INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Kraft','Mach 10 Liegestützen.', false,8);
INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Notenlesen','Löse das Arbeitsblatt zum Notenlesen.', false,9);
INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Singen','Übe 15 Minuten das Lied Wind of Change', false,9);
INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Bla','blabla', true,9);
INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Test','testtesttest', true,1);
INSERT INTO TASK (name,description, done, SCHULFACH_ID) VALUES ('Beispiel','beispielbeispielbeispiel', true,5);







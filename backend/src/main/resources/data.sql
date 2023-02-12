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


INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Zahlen 1-100','Löse die Aufgaben 1-10', false, 'Mathematik');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Freddy Müllers Text','Finde die Fallfehler', false , 'Deutsch' );
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Grosses Einmaleins','Übe 30 Minuten das grosse Einmaleins', false,'Mathematik');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Kleines Einmaleins','Übe 20 Minuten das kleine Einmaleins ', false,'Mathematik');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Multiplikation','Löse Aufgaben 1-10 im Kapitel "Multiplikation"', false,'Mathematik');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Division','Löse Aufgaben 1-10 im Kapitel "Division"', false,'Mathematik');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Reading','Read the text on page 17 and answer the questions', false,'Englisch');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Listening','Listen track 8 and answer the questions on page 25', false,'Englisch');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Writing','Write half a page about your weekend', false,'Englisch');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Vocabulary','Learn the vocabulary of Unit 5', false,'Englisch');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Leseverständnis','Lese den Text zum Thema Wolf', false,'Deutsch');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Aufsatz','Schreibe einen Aufsatz zum Thema Wetter', false,'Deutsch');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Rechtschreibung','Löse die Arbeitsblatt zu den Wortarten', false,'Deutsch');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Zeitformen','Löse das Arbeitsblatt zu den Zeitformen', false,'Deutsch');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Conjuger les verbes','Résous la fiche de travail sur les verbes irréguliers.', false,'Franzoesisch');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Vocabulaire','Apprends le vocabulaire de lunité 5.', false,'Franzoesisch');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Vocabulaire','Apprends le vocabulaire de lunité 12.', false,'Franzoesisch');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Passé Composé','Résous la fiche de travail sur le Passé Composé.', false,'Franzoesisch');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Dinosaurier','Löse das Rätsel zu den Dinosauriern.', false,'Natur Mensch Gesellschaft');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Mittelalter','Lies den Text zum Mittelalter.', false,'Natur Mensch Gesellschaft');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Klimawandel','Lerne die im Arbeitsblatt erwähnten Begriffe zum Klimawandel.', false,'Natur Mensch Gesellschaft');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Schweizer Kantone','Löse das Arbeitsblatt zu den Kantonen.', false,'Natur Mensch Gesellschaft');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Programmieren','Löse die Programmieraufgabe auf dem Arbeitsblatt.', false,'Medien und Informatik');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Sicherheit','Lies den Text zu Passwörten', false,'Medien und Informatik');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Tastaturschreiben','Übe 20 Minuten mit dem Tastaturschreibprogramm', false,'Medien und Informatik');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Bäume','Stelle die Zeichnung eines Baums fertig', false,'Gestalten');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Stricken','Strick 20 Minuten an deinem Schal weiter', false,'Gestalten');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Ausdauer','Geh 20 Minuten joggen.', false,'Sport');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Kraft','Mach 10 Liegestützen.', false,'Sport');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Notenlesen','Löse das Arbeitsblatt zum Notenlesen.', false,'Musik');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Singen','Übe 15 Minuten das Lied Wind of Change', false,'Musik');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Bla','blabla', true,'Musik');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Test','testtesttest', true,'Mathematik');
INSERT INTO TASK (name,description, done, SCHULFACH_TITLE) VALUES ('Beispiel','beispielbeispielbeispiel', true,'Natur Mensch Gesellschaft');

INSERT INTO SCHULFACH_STUDENT (SCHULFACH_TITLE, STUDENT_USER_NAME) VALUES ('Mathematik','meierfa9');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_TITLE, STUDENT_USER_NAME) VALUES ('Deutsch','meierfa9');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_TITLE, STUDENT_USER_NAME) VALUES ('Englisch','meierfa9');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_TITLE, STUDENT_USER_NAME) VALUES ('Franzoesisch','meierfa9');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_TITLE, STUDENT_USER_NAME) VALUES ('Natur Mensch Gesellschaft','meierfa9');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_TITLE, STUDENT_USER_NAME) VALUES ('Mathematik','beckema2');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_TITLE, STUDENT_USER_NAME) VALUES ('Deutsch','beckema2');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_TITLE, STUDENT_USER_NAME) VALUES ('Sport','beckema2');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_TITLE, STUDENT_USER_NAME) VALUES ('Gestalten','mettlanj');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_TITLE, STUDENT_USER_NAME) VALUES ('Medien und Informatik','mettlanj');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_TITLE, STUDENT_USER_NAME) VALUES ('Musik','mettlanj');
INSERT INTO SCHULFACH_STUDENT (SCHULFACH_TITLE, STUDENT_USER_NAME) VALUES ('Sport','mettlanj');







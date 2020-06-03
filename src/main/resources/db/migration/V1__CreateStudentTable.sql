CREATE TABLE IF NOT EXISTS student (
    student_id UUID PRIMARY KEY NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    gender VARCHAR(6) NOT NULL
        CHECK (
            gender = 'MALE'   OR
            gender = 'male'   OR
            gender = 'FEMALE' OR
            gender = 'female'
        )
);

insert into student (student_id, first_name, last_name, email, gender) values ('49c3f09c-8f5a-4ef8-9f35-c0c2becb4866', 'Stavros', 'Antrum', 'santrum0@reuters.com', 'MALE');
insert into student (student_id, first_name, last_name, email, gender) values ('582a23c4-86fb-4416-be51-36630935948d', 'Jacquelyn', 'Milliken', 'jmilliken1@e-recht24.de', 'FEMALE');
insert into student (student_id, first_name, last_name, email, gender) values ('c4010507-060f-4cc3-9ecc-2b3c7f533d78', 'Davide', 'Crolla', 'dcrolla2@smugmug.com', 'MALE');
insert into student (student_id, first_name, last_name, email, gender) values ('6d73a689-e67b-4acd-9cf9-e02085087f08', 'Reider', 'Le Fevre', 'rlefevre3@sitemeter.com', 'MALE');
insert into student (student_id, first_name, last_name, email, gender) values ('5b206c45-1022-422c-ae02-00d7463a77cf', 'Waneta', 'Manuely', 'wmanuely4@xinhuanet.com', 'FEMALE');
insert into student (student_id, first_name, last_name, email, gender) values ('8427e515-9b90-4163-97cf-ef60c76e1523', 'Guendolen', 'Fernanando', 'gfernanando5@networksolutions.com', 'FEMALE');
insert into student (student_id, first_name, last_name, email, gender) values ('4f1d914b-f600-410b-a0b2-8c98623b630f', 'Corina', 'McKay', 'cmckay6@wired.com', 'FEMALE');
insert into student (student_id, first_name, last_name, email, gender) values ('ddaf0422-01dd-4f91-b1f4-5095a99a9d50', 'Clarance', 'Lidierth', 'clidierth7@so-net.ne.jp', 'MALE');
insert into student (student_id, first_name, last_name, email, gender) values ('a29507ef-fdd9-4d78-b2cd-218c6c2d7176', 'Brody', 'Hedger', 'bhedger8@sohu.com', 'MALE');
insert into student (student_id, first_name, last_name, email, gender) values ('c6057d4d-d407-49a9-9c71-815f525bdaab', 'Butch', 'Oakman', 'boakman9@mayoclinic.com', 'MALE');
insert into student (student_id, first_name, last_name, email, gender) values ('76251677-43af-4d04-845c-8a6248b44400', 'Stephan', 'Szabo', 'sszaboa@pen.io', 'MALE');
insert into student (student_id, first_name, last_name, email, gender) values ('69d8c1de-9170-43a1-8253-63c8aff57bae', 'Aleta', 'Scutts', 'ascuttsb@dyndns.org', 'FEMALE');
insert into student (student_id, first_name, last_name, email, gender) values ('df496421-6dca-4e94-a038-037c97c5732a', 'Raimundo', 'Reape', 'rreapec@mtv.com', 'MALE');
insert into student (student_id, first_name, last_name, email, gender) values ('0aab9da4-8b1f-4f81-8047-80d89bbf4254', 'Linoel', 'Cardenoso', 'lcardenosod@japanpost.jp', 'MALE');
insert into student (student_id, first_name, last_name, email, gender) values ('0a666c86-2e79-4875-948f-4bebd9e37d45', 'George', 'Jerosch', 'gjerosche@huffingtonpost.com', 'MALE');
insert into student (student_id, first_name, last_name, email, gender) values ('39ce407c-dadb-4e68-9da5-4fb642545752', 'Saul', 'Handrok', 'shandrokf@sakura.ne.jp', 'MALE');
insert into student (student_id, first_name, last_name, email, gender) values ('95d90bf4-0bb2-4c3c-a125-7accab408358', 'Sacha', 'Clausius', 'sclausiusg@is.gd', 'FEMALE');
insert into student (student_id, first_name, last_name, email, gender) values ('4012ec65-5f73-4f04-8208-ca118dbf5c0e', 'Emogene', 'Heeron', 'eheeronh@irs.gov', 'FEMALE');
insert into student (student_id, first_name, last_name, email, gender) values ('e2575fe8-09ee-48ff-9e7a-0cec64f9acf3', 'Ber', 'Maclaine', 'bmaclainei@sun.com', 'MALE');
insert into student (student_id, first_name, last_name, email, gender) values ('a539beb7-53d9-4b61-90c3-235abf885904', 'Alis', 'McGaughay', 'amcgaughayj@google.fr', 'FEMALE');


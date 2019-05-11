INSERT into topics(name) values('פירסט');
INSERT into topics(name) values('טכני');
INSERT into topics(name) values('תחרות');
INSERT into topics(name) values('אחר');

INSERT into topics(name, parent_id) select 'פורום כללי', id from topics where name = 'פירסט';
INSERT into topics(name, parent_id) select 'פינת השמועות', id from topics where name = 'פירסט';
INSERT into topics(name, parent_id) select 'חשיפת הרובוטים', id from topics where name = 'פירסט';
INSERT into topics(name, parent_id) select 'מכניקה', id from topics where name = 'טכני';
INSERT into topics(name, parent_id) select 'ציוד', id from topics where name = 'טכני';
INSERT into topics(name, parent_id) select 'חשמל', id from topics where name = 'טכני';
INSERT into topics(name, parent_id) select 'מנועים', id from topics where name = 'טכני';
INSERT into topics(name, parent_id) select 'תכנות', id from topics where name = 'טכני';
INSERT into topics(name, parent_id) select 'חיישנים', id from topics where name = 'טכני';
INSERT into topics(name, parent_id) select 'פנאומטיקה', id from topics where name = 'טכני';
INSERT into topics(name, parent_id) select 'שרטוט', id from topics where name = 'טכני';
INSERT into topics(name, parent_id) select 'מדיה', id from topics where name = 'טכני';
INSERT into topics(name, parent_id) select 'פרסים', id from topics where name = 'תחרות';
INSERT into topics(name, parent_id) select 'כללים ואסטרטגיה', id from topics where name = 'תחרות';
INSERT into topics(name, parent_id) select 'לוגיסטיקה', id from topics where name = 'תחרות';
INSERT into topics(name, parent_id) select 'תחריות עולמיות', id from topics where name = 'תחרות';
INSERT into topics(name, parent_id) select 'תחרויות ארציות', id from topics where name = 'תחרות';
INSERT into topics(name, parent_id) select 'תחרויות דיסטריקט', id from topics where name = 'תחרות';
INSERT into topics(name, parent_id) select 'משחק הFRC החדש', id from topics where name = 'תחרות';
INSERT into topics(name, parent_id) select 'FTC', id from topics where name = 'אחר';
INSERT into topics(name, parent_id) select 'FLL', id from topics where name = 'אחר';
INSERT into topics(name, parent_id) select 'רובוט בשלושה ימים', id from topics where name = 'אחר';
INSERT into topics(name, parent_id) select 'מה שעולה לכם בראש', id from topics where name = 'אחר';

INSERT INTO poll_questions(name, ans_1, ans_2, ans_3, ans_4) values('מיהי הקבוצה הקנדית האהובה עליך?', '1114', '2056', '1241', '3683');
INSERT INTO poll_questions(name, ans_1, ans_2, ans_3, ans_4) values('האם אתה חושב ש254 היא קבוצת הFRCֹ הטובה בכל הזמנים?', 'ברור שכן', 'ברור שלא', '1323 שולטים', 'אין על 1114');
INSERT INTO poll_questions(name, ans_1, ans_2, ans_3, ans_4) values('האם את מרוצה השנה מהצוות החדש של פירסט ישראל?', 'עשו עבודה מעולה', 'טעון שיפור', 'לא אהבתי', 'נוראי, צריכים צוות חדש');
INSERT INTO poll_questions(name, ans_1, ans_2, ans_3, ans_4) values('איך לדעתך ההגנה השפיעה על המשחק ב2019?', 'שיפרה את המשחק, הפכה אותו ליותר מעניין', 'לא היה שינוי', 'השפיעה קצת', 'הרסה את המשחק');
INSERT INTO poll_questions(name, ans_1, ans_2, ans_3, ans_4) values('מה לדעתך היה בארבעת השנים האחרונות השנה המשחק הטוב ביותר של פירסט', 'Deep Space - 2019', 'Power Up - 2018', 'SteamWorks - 2017', 'StrongHold - 2016');
INSERT INTO poll_questions(name, ans_1, ans_2, ans_3, ans_4) values('מאיזה תוכנית של פירסט הכי נהינת?', 'FLL Jr.', 'FLL', 'FTC', 'FRC');
INSERT INTO poll_questions(name, ans_1, ans_2, ans_3, ans_4) values('באיזה תוכנית של פירסט אתה נמצא עכשיו?', 'FLL Jr.', 'FLL', 'FTC', 'FRC');
INSERT INTO poll_questions(name, ans_1, ans_2, ans_3, ans_4) values('כמה פעמים הגעת לתחרות העולמית?', 'כל שנה', 'פעם פעמיים', 'שלוש ארבע פעמים', 'אף פעם');
INSERT INTO poll_questions(name, ans_1, ans_2, ans_3, ans_4) values('האם אתה חושב שאסטרטגיה טובה יכולה לנצח משחק?', 'כן', 'תלוי בצוות', 'לא ממש', 'לא');


INSERT INTO quiz_questions(name, ans_1, ans_2, ans_3, ans_4) values('question', 'ans1', 'ans2', 'ans3', 'ans4');
INSERT INTO quiz_questions(name, ans_1, ans_2, ans_3, ans_4) values();
INSERT INTO quiz_questions(name, ans_1, ans_2, ans_3, ans_4) values();
INSERT INTO quiz_questions(name, ans_1, ans_2, ans_3, ans_4) values();
INSERT INTO quiz_questions(name, ans_1, ans_2, ans_3, ans_4) values();
INSERT INTO quiz_questions(name, ans_1, ans_2, ans_3, ans_4) values();
INSERT INTO quiz_questions(name, ans_1, ans_2, ans_3, ans_4) values();
INSERT INTO quiz_questions(name, ans_1, ans_2, ans_3, ans_4) values();
INSERT INTO quiz_questions(name, ans_1, ans_2, ans_3, ans_4) values();

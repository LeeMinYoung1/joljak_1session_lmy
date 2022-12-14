--------------------------------------------------------
--  颇老捞 积己凳 - 格夸老-6岿-23-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MEALKIT
--------------------------------------------------------

  CREATE TABLE "MEALKIT" 
   (	"MEALKIT_NUM" VARCHAR2(20 BYTE), 
	"POST_CODE" VARCHAR2(20 BYTE), 
	"MEALKIT_TITLE" VARCHAR2(1000 BYTE), 
	"MEALKIT_COUNT" NUMBER, 
	"MEALKIT_PRICE" NUMBER, 
	"MEALKIT_CONTENT" VARCHAR2(1000 BYTE), 
	"MEALKIT_SELL_PERIOD" DATE, 
	"MAIN_INGREDIENT" VARCHAR2(50 BYTE), 
	"ADDITION_INGREDIENT" VARCHAR2(50 BYTE), 
	"VIEW_COUNT" NUMBER(*,0), 
	"MEALKIT_SORT" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MEALKIT_REL_CON
--------------------------------------------------------

  CREATE TABLE "MEALKIT_REL_CON" 
   (	"CONTRACT_CODE" VARCHAR2(1000 BYTE), 
	"ID" VARCHAR2(20 BYTE), 
	"MEALKIT_TITLE" VARCHAR2(1000 BYTE), 
	"CONTRACT_DAY" DATE, 
	"CONTRACT_FACTS" VARCHAR2(1000 BYTE), 
	"MILKIT_REGISTRATION_AMOUNT" NUMBER, 
	"CONTRACT_AMOUNT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "MEMBER" 
   (	"ID" VARCHAR2(20 BYTE), 
	"PWD" VARCHAR2(20 BYTE), 
	"NAME" VARCHAR2(20 BYTE), 
	"PHONE_NUM" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(20 BYTE), 
	"PROFILE" VARCHAR2(1000 BYTE), 
	"NICNAME" VARCHAR2(20 BYTE), 
	"GENDER" CHAR(1 BYTE), 
	"BIRTHDAY" VARCHAR2(20 BYTE), 
	"MEMBER_SORT" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MILKITO_POST
--------------------------------------------------------

  CREATE TABLE "MILKITO_POST" 
   (	"POST_CODE" VARCHAR2(20 BYTE), 
	"ID" VARCHAR2(20 BYTE), 
	"POST_LINK_CODE" VARCHAR2(20 BYTE), 
	"SMALL_CODE" VARCHAR2(20 BYTE), 
	"POST_TITLE" VARCHAR2(1000 BYTE), 
	"POST_WRITE_DATE" DATE, 
	"POST_CONTENT" VARCHAR2(1000 BYTE), 
	"POST_COMMENT_CUT" NUMBER, 
	"POST_LIKE_COUNT" NUMBER, 
	"POST_VIEW_COUNT" NUMBER, 
	"KIT_PRODUCTION_MARK" CHAR(1 BYTE), 
	"POST_IMG" BLOB, 
	"POST_HASHTAG" VARCHAR2(30 BYTE), 
	"POST_INGREDIENT" VARCHAR2(1000 BYTE), 
	"MEMBER_SORT" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("POST_IMG") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table ORDER_INFORM
--------------------------------------------------------

  CREATE TABLE "ORDER_INFORM" 
   (	"ORDER_CODE" VARCHAR2(20 BYTE), 
	"CART_CODE" VARCHAR2(20 BYTE), 
	"ORDER_DATE" DATE, 
	"DELIVERY_LOCATION" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ORDER_LIST
--------------------------------------------------------

  CREATE TABLE "ORDER_LIST" 
   (	"ORDER_LISTNUM" VARCHAR2(20 BYTE), 
	"ORDER_CODE" VARCHAR2(20 BYTE), 
	"MEALKIT_TITLE" VARCHAR2(50 BYTE), 
	"MEALKIT_COUNT" NUMBER, 
	"MEALKIT_PRICE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table POST_COMMENT
--------------------------------------------------------

  CREATE TABLE "POST_COMMENT" 
   (	"POST_COMMENT" VARCHAR2(20 BYTE), 
	"POST_TITLE" VARCHAR2(1000 BYTE), 
	"POST_COMMENT_WRITER" VARCHAR2(20 BYTE), 
	"POST_COMMENT_WIRTE_DATE" DATE, 
	"POST_COMMENT_CONTENT" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SHOPPING_CART
--------------------------------------------------------

  CREATE TABLE "SHOPPING_CART" 
   (	"CART_CODE" VARCHAR2(20 BYTE), 
	"ID" VARCHAR2(20 BYTE), 
	"MEALKIT_NUM" VARCHAR2(20 BYTE), 
	"MEALKIT_TITLE" VARCHAR2(1000 BYTE), 
	"MEALKIT_COUNT" NUMBER, 
	"MEALKIT_PRICE" NUMBER, 
	"MEM_SORT" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into MEALKIT
SET DEFINE OFF;
Insert into MEALKIT (MEALKIT_NUM,POST_CODE,MEALKIT_TITLE,MEALKIT_COUNT,MEALKIT_PRICE,MEALKIT_CONTENT,MEALKIT_SELL_PERIOD,MAIN_INGREDIENT,ADDITION_INGREDIENT,VIEW_COUNT,MEALKIT_SORT) values ('1','1','baguette',10,10000,'Put salt and yeast in 250g of flour and mix well
Add lukewarm water (140g) and knead until the gluten reaches about 80%
Spray the dough in a bowl, cover it with plastic, and ferment it for 1 hour in a warm place
Remove the gas, cut it into two equal parts, cover it with plastic wrap, and let it ferment at room temperature for 20 minutes
After mid-fermentation, press the dough with your palm to remove the gas, push it flat in an oval shape, and fold it up and down
Put it back together, pinch it and seal it
Push it with your palms
Put the sealed part on the mini baguette frame down, ferment it for about an hour in a warm place, make a diagonal cut, and spray water with a sprayer.
Bake in preheated 200 degree oven for 15 to 20 minutes until golden.',to_date('22/06/17','RR/MM/DD'),'flour','test',0,'western_food');
Insert into MEALKIT (MEALKIT_NUM,POST_CODE,MEALKIT_TITLE,MEALKIT_COUNT,MEALKIT_PRICE,MEALKIT_CONTENT,MEALKIT_SELL_PERIOD,MAIN_INGREDIENT,ADDITION_INGREDIENT,VIEW_COUNT,MEALKIT_SORT) values ('2','2','bulgogi',12,12000,'Add the blood drained beef and make the sauce. 
Put the prepared seasoning into the meat and mix it. 
Mix all the cut vegetables into the meat.',to_date('22/06/24','RR/MM/DD'),'soup','testadd',0,'korean_food');
Insert into MEALKIT (MEALKIT_NUM,POST_CODE,MEALKIT_TITLE,MEALKIT_COUNT,MEALKIT_PRICE,MEALKIT_CONTENT,MEALKIT_SELL_PERIOD,MAIN_INGREDIENT,ADDITION_INGREDIENT,VIEW_COUNT,MEALKIT_SORT) values ('1','1','spaghetti',20,14000,'make spaghetti
Prepare 250g of spaghetti noodles.
Boil the noodles for about 8 minutes, and remove only the water by sieving the pasta after 8 minutes without rinsing it in cold water.
Cut broccoli, cherry tomatoes, whole garlic, mushrooms, ham, bacon, onions, etc. into bite-size pieces and cook them.
Complete the spaghetti.',to_date('22/06/21','RR/MM/DD'),'tomato','None',0,'western_food');
Insert into MEALKIT (MEALKIT_NUM,POST_CODE,MEALKIT_TITLE,MEALKIT_COUNT,MEALKIT_PRICE,MEALKIT_CONTENT,MEALKIT_SELL_PERIOD,MAIN_INGREDIENT,ADDITION_INGREDIENT,VIEW_COUNT,MEALKIT_SORT) values ('1','1','Ogoakbap',2,8000,'Prepare the grains.
After washing the red beans clean, add 400ml of water and boil it over medium low heat for 10 minutes.
While boiling the red beans, put the rest of the grains at once and wash them clean.
Put the boiled red beans and water separately, add salt to the water, and dissolve it well.
Put drained grains and boiled red beans in a pot and put 3 cups (paper cups) with the red bean water that was stored separately. You can cook it for 45 minutes after sitting in the rice cooker.
Like this, the delicious five-grain rice has been completed.',to_date('22/06/22','RR/MM/DD'),'rice, beans','None',0,'korean_food');
Insert into MEALKIT (MEALKIT_NUM,POST_CODE,MEALKIT_TITLE,MEALKIT_COUNT,MEALKIT_PRICE,MEALKIT_CONTENT,MEALKIT_SELL_PERIOD,MAIN_INGREDIENT,ADDITION_INGREDIENT,VIEW_COUNT,MEALKIT_SORT) values ('1','1','pasta',23,15000,'Please prepare 250g of spaghetti noodles.
First, put 1/2 teaspoon salt and 1 teaspoon olive oil in boiling water and boil spaghetti noodles for about 8 minutes
If the spaghetti is 8 minutes old, don''t rinse it in cold water, sift it out and remove the water.
Prepare cherry tomatoes, whole garlic, mushrooms, ham, bacon, and onions in bite-sized pieces.
In a large pan, add 1 tablespoon olive oil and stir-fry garlic and onion until onion is transparent.
When the onion becomes transparent, add bacon and ham and stir-fry.
If bacon feels like it''s shrinking, add commercial sauce, tomatoes, mushrooms, and broccoli and mix.
If you put the boiled spaghetti noodles in here and mix them well
Tomato spaghetti is done!',to_date('22/06/21','RR/MM/DD'),'tomato','None',0,'western_food');
Insert into MEALKIT (MEALKIT_NUM,POST_CODE,MEALKIT_TITLE,MEALKIT_COUNT,MEALKIT_PRICE,MEALKIT_CONTENT,MEALKIT_SELL_PERIOD,MAIN_INGREDIENT,ADDITION_INGREDIENT,VIEW_COUNT,MEALKIT_SORT) values ('1','1','pizza',321,13000,'Put all ingredients except olive oil in a mixing bowl.
Add olive oil and knead at medium speed (second tier) to 1 minute -> high speed (3-4 tier) until final step.
Cover the dough with vinyl and ferment it first for 40 minutes to 1 hour in a warm and humid place.
After the first fermentation, hold the dough with both hands and make a circle.
Cover with plastic again and ferment at room temperature for 15 minutes.
Roll the pizza dough thinly using a rolling pin.
Carefully transfer the dough to the pizza pan and use a fork to make a random hole in the front of the bottom.
Make a hole by randomly poking lightly.
Place pizza topping on top of dough.
Bake in a 180 degree preheated oven for about 20 minutes.',to_date('22/06/21','RR/MM/DD'),'tomato','None',0,'western_food');
Insert into MEALKIT (MEALKIT_NUM,POST_CODE,MEALKIT_TITLE,MEALKIT_COUNT,MEALKIT_PRICE,MEALKIT_CONTENT,MEALKIT_SELL_PERIOD,MAIN_INGREDIENT,ADDITION_INGREDIENT,VIEW_COUNT,MEALKIT_SORT) values ('1','1','墨饭',3,8000,'捞 剐虐飘甫 烹秦 墨饭甫 埃祈窍霸 父甸绢辑 冈阑 荐 乐嚼聪促.',to_date('22/06/23','RR/MM/DD'),'逛, 具盲, 家胶, 墨饭啊风','None',0,'etc');
Insert into MEALKIT (MEALKIT_NUM,POST_CODE,MEALKIT_TITLE,MEALKIT_COUNT,MEALKIT_PRICE,MEALKIT_CONTENT,MEALKIT_SELL_PERIOD,MAIN_INGREDIENT,ADDITION_INGREDIENT,VIEW_COUNT,MEALKIT_SORT) values ('1','1','扼膏',100,7000,'积碍篮 促廉敌促.	
措颇绰 盲戒绢辑 蛮拱俊 淬啊滴绊, 率颇老 版快 滦滦 戒绢辑 霖厚秦霖促.	
槛林绰 灸绢辑 拱扁甫 哗初绰促.	
拌鄂篮 馆栏肺 肋扼 初绰促.	
埔俊 坷老阑 混娄父 滴福绊 蹬瘤绊扁 埃 巴苞 积碍阑 林捌栏肺 哎扼啊哥 绊浇绊浇窍霸 汉绰促.	
呈公 官漂窍霸 炼府瘤 富绊 绢蠢沥档 盟盟且 锭 阂俊辑 郴妨具 绊扁啊 付福瘤 臼绰促.
晨厚俊 曼扁抚阑 滴福绊 付疵·积碍阑 持绊 汉绰促.	
肋 汉酒瘤搁 拱 400ml, 摹挪 何捞侩 1t, 固家 1T档 肋 钱绢持绰促.	
扼膏阑 淬酒尘 弊俯俊 固府 柄甫 哎酒初绰促.	
搁篮 菩虐瘤俊 3盒 活栏扼绊 沁绰单 2盒父 活疽促.	
搁篮 拱扁甫 判绊 弊俯俊 惫拱阑 持绢霖 第 搁阑 持绢霖促.	
槛林客 苛荐荐, 措颇, 拌鄂 配俏秦霖促.	
绊扁档 棵妨林绊, 槛林绰 眠啊秦啊搁辑 冈绰促.',to_date('22/06/23','RR/MM/DD'),'搁, 胶橇','None',0,'japanese_food');
Insert into MEALKIT (MEALKIT_NUM,POST_CODE,MEALKIT_TITLE,MEALKIT_COUNT,MEALKIT_PRICE,MEALKIT_CONTENT,MEALKIT_SELL_PERIOD,MAIN_INGREDIENT,ADDITION_INGREDIENT,VIEW_COUNT,MEALKIT_SORT) values ('1','1','鉴滴何骂俺',50,10000,'措颇客 没剧绊眠绰 滦滦, 剧颇客 付疵篮 促瘤绊 滚几 殿篮 肋霸 迈绢初绰促.	
崔迸柳 晨厚俊 扁抚阑 滴福绊 措颇客 蹬瘤绊扁 促咙腊阑 汉促啊	
促柳剧颇客 促柳付疵阑 持绊 汉酒霖促.	
咯扁俊 绊眠啊风 1胶乾 馆苞	
汲帕苞 家陛阑 炼陛 持绊,	
埃厘 茄胶乾,	
曼扁抚 茄胶乾阑 持绊	
崔崔 汉酒霖促.	
咯扁俊 拱 距 200ml 甫 持绊 拱捞 产栏搁 鉴滴何甫 兑兑 肋扼 持绰促.	
磊臂磊臂 产栏搁 唱赣瘤 具盲甫 持绊	
付瘤阜俊 拌鄂 窍唱甫 佩 鳖辑 持绊 磊臂磊臂 产捞搁 归辆盔 鉴滴何骂俺 肯己~~~',to_date('22/06/23','RR/MM/DD'),'蹬瘤绊扁, 鉴滴何, 绊缅啊风','None',0,'korean_food');
REM INSERTING into MEALKIT_REL_CON
SET DEFINE OFF;
Insert into MEALKIT_REL_CON (CONTRACT_CODE,ID,MEALKIT_TITLE,CONTRACT_DAY,CONTRACT_FACTS,MILKIT_REGISTRATION_AMOUNT,CONTRACT_AMOUNT) values ('test','test','test',to_date('22/06/16','RR/MM/DD'),'test',10000,100000);
Insert into MEALKIT_REL_CON (CONTRACT_CODE,ID,MEALKIT_TITLE,CONTRACT_DAY,CONTRACT_FACTS,MILKIT_REGISTRATION_AMOUNT,CONTRACT_AMOUNT) values ('testti1','id','testttestt22',to_date('22/06/21','RR/MM/DD'),'testtetes',10000,200000);
Insert into MEALKIT_REL_CON (CONTRACT_CODE,ID,MEALKIT_TITLE,CONTRACT_DAY,CONTRACT_FACTS,MILKIT_REGISTRATION_AMOUNT,CONTRACT_AMOUNT) values ('testti2','id','mealkit',to_date('22/06/21','RR/MM/DD'),'┆?',12000,100000);
Insert into MEALKIT_REL_CON (CONTRACT_CODE,ID,MEALKIT_TITLE,CONTRACT_DAY,CONTRACT_FACTS,MILKIT_REGISTRATION_AMOUNT,CONTRACT_AMOUNT) values ('testti2','id','testtesttest',to_date('22/06/21','RR/MM/DD'),'tse',14000,140000);
Insert into MEALKIT_REL_CON (CONTRACT_CODE,ID,MEALKIT_TITLE,CONTRACT_DAY,CONTRACT_FACTS,MILKIT_REGISTRATION_AMOUNT,CONTRACT_AMOUNT) values ('Ogokbap','id','Ogoakbap',to_date('22/06/22','RR/MM/DD'),'á?∑ā㈢? ∑????ⅴ?ⅴ?.',8000,100000);
Insert into MEALKIT_REL_CON (CONTRACT_CODE,ID,MEALKIT_TITLE,CONTRACT_DAY,CONTRACT_FACTS,MILKIT_REGISTRATION_AMOUNT,CONTRACT_AMOUNT) values ('墨饭','id','墨饭',to_date('22/06/23','RR/MM/DD'),'夯 拌距篮 2斥 饶 父丰邓聪促.',8000,500000);
Insert into MEALKIT_REL_CON (CONTRACT_CODE,ID,MEALKIT_TITLE,CONTRACT_DAY,CONTRACT_FACTS,MILKIT_REGISTRATION_AMOUNT,CONTRACT_AMOUNT) values ('曼摹辫摹汉澜逛 父甸扁','id','けぉかいぉ',to_date('22/06/23','RR/MM/DD'),'けぉかぉい',121213,123312);
REM INSERTING into MEMBER
SET DEFINE OFF;
Insert into MEMBER (ID,PWD,NAME,PHONE_NUM,EMAIL,PROFILE,NICNAME,GENDER,BIRTHDAY,MEMBER_SORT) values ('id123','pwd123','testname',null,null,null,null,null,null,null);
Insert into MEMBER (ID,PWD,NAME,PHONE_NUM,EMAIL,PROFILE,NICNAME,GENDER,BIRTHDAY,MEMBER_SORT) values ('test','test','test',null,null,null,null,null,null,null);
Insert into MEMBER (ID,PWD,NAME,PHONE_NUM,EMAIL,PROFILE,NICNAME,GENDER,BIRTHDAY,MEMBER_SORT) values ('bu','bu','?⒁??????','010-1234-5678','null@null',null,null,null,null,null);
Insert into MEMBER (ID,PWD,NAME,PHONE_NUM,EMAIL,PROFILE,NICNAME,GENDER,BIRTHDAY,MEMBER_SORT) values ('bu','bu','?⒁??????','010-1234-5678','null@null',null,null,null,null,null);
Insert into MEMBER (ID,PWD,NAME,PHONE_NUM,EMAIL,PROFILE,NICNAME,GENDER,BIRTHDAY,MEMBER_SORT) values ('弥瘤楷','chlwldus','弥瘤楷','010-1234-5678','null@null',null,null,null,null,null);
REM INSERTING into MILKITO_POST
SET DEFINE OFF;
Insert into MILKITO_POST (POST_CODE,ID,POST_LINK_CODE,SMALL_CODE,POST_TITLE,POST_WRITE_DATE,POST_CONTENT,POST_COMMENT_CUT,POST_LIKE_COUNT,POST_VIEW_COUNT,KIT_PRODUCTION_MARK,POST_HASHTAG,POST_INGREDIENT,MEMBER_SORT) values ('1','abc','12','western_food','gimbap',to_date('22/04/15','RR/MM/DD'),'make kimbap
The fillings are cucumber, carrot, burdock, fish cake, two ham, egg garnish, pickled radish, etc.
Put it on top of the seaweed in the order above.
After making it, put some sesame oil on the kimbap. Put some sesame oil on the knife and cut it like you''re sawing it. It''s done!',1,2,3,null,'#','rice',null);
Insert into MILKITO_POST (POST_CODE,ID,POST_LINK_CODE,SMALL_CODE,POST_TITLE,POST_WRITE_DATE,POST_CONTENT,POST_COMMENT_CUT,POST_LIKE_COUNT,POST_VIEW_COUNT,KIT_PRODUCTION_MARK,POST_HASHTAG,POST_INGREDIENT,MEMBER_SORT) values (null,null,null,'western_food','spaghetti',to_date('22/06/22','RR/MM/DD'),'make spaghetti
Prepare 250g of spaghetti noodles.
Boil the noodles for about 8 minutes, and remove only the water by sieving the pasta after 8 minutes without rinsing it in cold water.
Cut broccoli, cherry tomatoes, whole garlic, mushrooms, ham, bacon, onions, etc. into bite-size pieces and cook them.
Complete the spaghetti.',null,null,null,null,null,'noodle, vegetable',null);
Insert into MILKITO_POST (POST_CODE,ID,POST_LINK_CODE,SMALL_CODE,POST_TITLE,POST_WRITE_DATE,POST_CONTENT,POST_COMMENT_CUT,POST_LIKE_COUNT,POST_VIEW_COUNT,KIT_PRODUCTION_MARK,POST_HASHTAG,POST_INGREDIENT,MEMBER_SORT) values (null,null,null,'korean_food','Ogokbap',to_date('22/06/22','RR/MM/DD'),'cook rice with rice and beans
Put drained grains and boiled red beans in a pot and put 3 cups (paper cups) with the red bean water that was stored separately. At this time, you can add water as much as you need more red bean water.
Cook for 45 minutes after sitting in an electric pressure rice cooker to complete the five-grain rice!',null,null,null,null,null,'rice, bean',null);
Insert into MILKITO_POST (POST_CODE,ID,POST_LINK_CODE,SMALL_CODE,POST_TITLE,POST_WRITE_DATE,POST_CONTENT,POST_COMMENT_CUT,POST_LIKE_COUNT,POST_VIEW_COUNT,KIT_PRODUCTION_MARK,POST_HASHTAG,POST_INGREDIENT,MEMBER_SORT) values ('2','def','11','chinese_food','eggroll',to_date('22/05/01','RR/MM/DD'),'Making egg rolls!
Mix 4 eggs and 50cc of water well.
Cut the green onion into small pieces, put a little oil first, stir-fry it, and make green onion oil.
Add egg mixture to 1/3 or 1/4 if green onion flavored.
Roll the eggs.
The egg roll is complete!',1,2,1,null,'##','egg',null);
Insert into MILKITO_POST (POST_CODE,ID,POST_LINK_CODE,SMALL_CODE,POST_TITLE,POST_WRITE_DATE,POST_CONTENT,POST_COMMENT_CUT,POST_LIKE_COUNT,POST_VIEW_COUNT,KIT_PRODUCTION_MARK,POST_HASHTAG,POST_INGREDIENT,MEMBER_SORT) values ('3','ghi','10','korean_food','bibimbap',to_date('22/05/16','RR/MM/DD'),'mix rice with bibimbap
Prepare onions, carrots, and zucchini by shredding them.
Prepare the sauce for the bibimbap.
First, add a pinch of salt to the carrot and zucchini and stir-fry them in a colorful way.
Add 1T of soy sauce and stir-fry onion over medium heat.
Stir-fry sliced pork seasoned with salt and pepper.
Stir-fry the pork with the sauce.
Put the stir-fried vegetables on the warm rice and set it up with a large 1T scoop of half-boiled egg and sauce.',1,1,2,null,'###','rice, egg',null);
Insert into MILKITO_POST (POST_CODE,ID,POST_LINK_CODE,SMALL_CODE,POST_TITLE,POST_WRITE_DATE,POST_CONTENT,POST_COMMENT_CUT,POST_LIKE_COUNT,POST_VIEW_COUNT,KIT_PRODUCTION_MARK,POST_HASHTAG,POST_INGREDIENT,MEMBER_SORT) values (null,null,null,'dessert','salad',to_date('22/06/22','RR/MM/DD'),'Making a salad
Wash the lettuce in running water and rip it off with your hands.
Wash young leaf vegetables in running water.
Slice onions and carrots thinly.
Cut cherry tomatoes in half.
Soak the prepared vegetables in ice water.
If you soak the trimmed vegetables in ice water and cook them just before you eat them, you can enjoy a crispier taste.
Add 2 spoons of dark soy sauce, 2 spoons of apple vinegar, 2 spoons of lemon juice, 1 spoon of chopped onion, 2 spoons of olive oil, etc. and mix them evenly to make a lettuce salad sauce.',null,null,null,null,null,'vegetable',null);
Insert into MILKITO_POST (POST_CODE,ID,POST_LINK_CODE,SMALL_CODE,POST_TITLE,POST_WRITE_DATE,POST_CONTENT,POST_COMMENT_CUT,POST_LIKE_COUNT,POST_VIEW_COUNT,KIT_PRODUCTION_MARK,POST_HASHTAG,POST_INGREDIENT,MEMBER_SORT) values (null,null,null,'etc','墨饭',to_date('22/06/23','RR/MM/DD'),'拱捞 焊臂焊臂 产扁 矫累窍搁 快蜡客 货价捞滚几阑 持绊 墨饭啊风甫 持绢凛聪促.
啊风啊 苟摹瘤 臼霸 炼陛究 持绢辑 面盒洒 钱搁辑 产咯霖第 付瘤阜俊 饶眠佩佩 3锅秦林搁 墨饭 肯己捞抗夸.	
弊俯俊 逛茄傍扁 欺辑 淬绊, 糠俊 抗悔霸 墨饭甫 淬酒郴搁~	
茄弊俯 饭矫乔牢 墨饭父甸扁 肯己涝聪促!!!',null,null,null,null,null,'逛, 具盲, 家胶, 墨饭啊风',null);
Insert into MILKITO_POST (POST_CODE,ID,POST_LINK_CODE,SMALL_CODE,POST_TITLE,POST_WRITE_DATE,POST_CONTENT,POST_COMMENT_CUT,POST_LIKE_COUNT,POST_VIEW_COUNT,KIT_PRODUCTION_MARK,POST_HASHTAG,POST_INGREDIENT,MEMBER_SORT) values (null,null,null,'korean_food','曼摹辫摹汉澜逛 父甸扁',to_date('22/06/23','RR/MM/DD'),'橇扼捞奇 困俊 辫摹甫 汉绰促.
汉绊 抄 饶 曼摹客 逛阑 持绊 拌加 汉绰促.
肯己',null,null,null,null,null,'曼摹牡, 辫摹, 逛',null);
Insert into MILKITO_POST (POST_CODE,ID,POST_LINK_CODE,SMALL_CODE,POST_TITLE,POST_WRITE_DATE,POST_CONTENT,POST_COMMENT_CUT,POST_LIKE_COUNT,POST_VIEW_COUNT,KIT_PRODUCTION_MARK,POST_HASHTAG,POST_INGREDIENT,MEMBER_SORT) values (null,null,null,'korean_food','蹬瘤绊扁 辫摹骂俺 父甸扁',to_date('22/06/23','RR/MM/DD'),'蹬瘤绊扁绰 峭拱阑 哗林技夸	
肋劳篮 辫摹 茄器扁甫 波郴辑 肋扼林技夸
模沥决付钎 辫摹扼 呈公 咐乐翠聪促	
晨厚俊 甸扁抚 利寸洒 滴福绊	
辫摹甫 持绊 汉酒林技夸	
促柳付疵 茄胶乾, 汲帕 茄胶乾 持绢林技夸	
辆捞呐栏肺 拱 8呐 何绢辑 季阂俊 产咯林技夸
盔贰绰 揭夺拱阑 持绢具登绰单 绝绢辑 菩胶沁嚼聪促ぞぞ	
峭拱 猾 蹬瘤绊扁甫 持绢林技夸
归辆盔 辫摹骂俺俊绰 等厘捞 甸绢啊夸
绊扁棱郴 力芭俊 迭捞扼绊 钦聪促^^
等厘 馆胶乾 持绢林技夸	
剧颇 馆俺, 没剧绊眠 茄俺甫 戒绢辑 持绢林技夸	
埃厘 滴胶乾馆	
货快粒 滴胶乾	
绊缅啊风 滴胶乾馆 持绢林技夸	
蹬瘤绊扁 辫摹骂俺绰 坷贰 产咯具 歹 咐乐嚼聪促
吝阂肺 临咯辑 坷贰 产咯林技夸~!!	
付瘤阜俊 颇 仅仅 戒绢辑 付公府窍搁 蹬夸^^',null,null,null,null,null,'蹬瘤绊扁, 辫摹骂俺',null);
REM INSERTING into ORDER_INFORM
SET DEFINE OFF;
Insert into ORDER_INFORM (ORDER_CODE,CART_CODE,ORDER_DATE,DELIVERY_LOCATION) values ('test','test',to_date('22/06/17','RR/MM/DD'),'testtest');
REM INSERTING into ORDER_LIST
SET DEFINE OFF;
Insert into ORDER_LIST (ORDER_LISTNUM,ORDER_CODE,MEALKIT_TITLE,MEALKIT_COUNT,MEALKIT_PRICE) values ('test','test','test',1,10000);
REM INSERTING into POST_COMMENT
SET DEFINE OFF;
Insert into POST_COMMENT (POST_COMMENT,POST_TITLE,POST_COMMENT_WRITER,POST_COMMENT_WIRTE_DATE,POST_COMMENT_CONTENT) values ('1','曼摹辫摹汉澜逛 父甸扁','辫摹 亮酒',to_date('22/06/23','RR/MM/DD'),'沥富 咐乐绢 焊捞匙夸!');
Insert into POST_COMMENT (POST_COMMENT,POST_TITLE,POST_COMMENT_WRITER,POST_COMMENT_WIRTE_DATE,POST_COMMENT_CONTENT) values ('1','墨饭','何玫措',to_date('22/06/23','RR/MM/DD'),'饭矫乔甫 捞侩秦 夸府甫 秦杭霸夸!');
REM INSERTING into SHOPPING_CART
SET DEFINE OFF;
Insert into SHOPPING_CART (CART_CODE,ID,MEALKIT_NUM,MEALKIT_TITLE,MEALKIT_COUNT,MEALKIT_PRICE,MEM_SORT) values ('bu','bu','1','墨饭',1,8000,'俺牢');
Insert into SHOPPING_CART (CART_CODE,ID,MEALKIT_NUM,MEALKIT_TITLE,MEALKIT_COUNT,MEALKIT_PRICE,MEM_SORT) values ('test','test','1','spaghetti',1,14000,'俺牢');
Insert into SHOPPING_CART (CART_CODE,ID,MEALKIT_NUM,MEALKIT_TITLE,MEALKIT_COUNT,MEALKIT_PRICE,MEM_SORT) values ('tetst','testtst','testste','tsetstst',2,3,'testt');
Insert into SHOPPING_CART (CART_CODE,ID,MEALKIT_NUM,MEALKIT_TITLE,MEALKIT_COUNT,MEALKIT_PRICE,MEM_SORT) values ('test','test','1','spaghetti',1,14000,'俺牢');
Insert into SHOPPING_CART (CART_CODE,ID,MEALKIT_NUM,MEALKIT_TITLE,MEALKIT_COUNT,MEALKIT_PRICE,MEM_SORT) values ('bu','bu','1','pasta',1,15000,'俺牢');
--------------------------------------------------------
--  Constraints for Table MEALKIT
--------------------------------------------------------

  ALTER TABLE "MEALKIT" MODIFY ("MEALKIT_NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MEMBER" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SHOPPING_CART
--------------------------------------------------------

  ALTER TABLE "SHOPPING_CART" MODIFY ("CART_CODE" NOT NULL ENABLE);

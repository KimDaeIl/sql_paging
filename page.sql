CREATE TABLE MEMBERS__(
	MEMBER_ID VARCHAR2(30)  NOT NULL ,
	MEMBER_PW VARCHAR2(20) NOT NULL,
	MEMBER_NAME VARCHAR2(20) ,
	MOBILE VARCHAR2(20) ,
	EMAIL VARCHAR2(30) ,
	ENTRY_DATE VARCHAR2(10) DEFAULT TO_CHAR(SYSDATE,'YYYY/MM/DD'),
	GRADE CHAR(1),
	MILEAGE NUMBER(6),
	MANAGER VARCHAR2(20)
);
ALTER TABLE MEMBERS__ ADD
 (CONSTRAINT PK_MEMBERID PRIMARY KEY(MEMBER_ID));


@DUMMY_INSERT.sql

 CREATE TABLE TEST
  AS SELECT *
		   FROM MEMBERS__
		   WHERE MILEAGE <= 300;

DROP TABLE MEMBERS__;

SELECT COUNT(*) FROM TEST;

-- CHECK DATA
SELECT ROWNUM, MEMBER_ID, MEMBER_PW, MEMBER_NAME, MOBILE, MILEAGE
	FROM TEST;
/*

SQL> SELECT ROWNUM, MEMBER_ID, MEMBER_PW, MEMBER_NAME, MOBILE, MILEAGE FROM TEST;

    ROWNUM MEMBER_ID			  MEMBER_PW	       MEMBER_NAME	    MOBILE		    MILEAGE
---------- ------------------------------ -------------------- -------------------- -------------------- ----------
	 1 user1			  password001				    86-(704)357-5946		250
	 2 user5			  password001				    63-(127)184-7405		181
	 3 user6			  password001	       kim		    235-(371)521-3750		265
	 4 user7			  password001	       kim		    55-(927)192-2158		140
	 5 user8			  password001				    84-(444)184-1994		142
	 6 user10			  password001	       kim		    86-(797)662-9517		184
	 7 user14			  password001	       kim		    86-(166)737-0636		208
	 8 user21			  password001				    420-(865)886-2153		189
	 9 user22			  password001				    970-(765)295-8796		277
	10 user28			  password001				    420-(852)174-4546		241
	11 user33			  password001				    86-(249)366-6490		 22
	12 user35			  password001				    57-(280)181-8537		221
	13 user39			  password001	       kim		    62-(969)279-8674		 54
	14 user40			  password001	       kim		    27-(756)403-0818		 25
	15 user41			  password001	       kim		    86-(647)670-7903		150
	16 user42			  password001				    86-(420)198-4240		 88
	17 user45			  password001				    380-(535)438-9076		277
	18 user48			  password001	       kim		    55-(232)540-9299		183
	19 user54			  password001				    57-(924)882-8497		229
	20 user59			  password001				    1-(727)476-0842		 42
	21 user63			  password001	       kim		    966-(143)250-5892		214
	22 user74			  password001				    48-(341)288-5562		264
	23 user75			  password001	       kim		    86-(767)240-9121		262
	24 user80			  password001				    30-(389)905-6912		238
	25 user90			  password001	       kim		    62-(143)881-9241		112
	26 user103			  password001				    505-(409)255-4119		 36
	27 user104			  password001				    86-(372)631-0591		 82
	28 user105			  password001	       kim		    48-(728)895-2558		226
	29 user107			  password001				    66-(695)773-1738		176
	30 user109			  password001				    62-(529)308-2005		296
	31 user113			  password001	       kim		    46-(497)680-0465		211
	32 user115			  password001	       kim		    1-(205)799-6677		 36
	33 user116			  password001	       kim		    48-(138)633-4596		166
	34 user120			  password001				    1-(318)795-1708		158
	35 user123			  password001				    63-(983)193-5519		289
	36 user124			  password001				    54-(454)744-8222		266
	37 user125			  password001	       kim		    234-(985)435-1750		 45
	38 user129			  password001	       kim		    62-(599)151-4878		255
	39 user131			  password001	       kim		    63-(875)317-8291		155
	40 user134			  password001				    46-(417)611-0210		212
	41 user139			  password001	       kim		    86-(913)642-4329		 17
	42 user142			  password001				    380-(576)563-6009		 51
	43 user146			  password001	       kim		    1-(731)955-3802		298
	44 user147			  password001				    86-(539)700-2969		 79
	45 user150			  password001				    62-(944)560-9940		  6
	46 user152			  password001	       kim		    46-(302)800-0265		  9
	47 user154			  password001	       kim		    506-(440)877-5221		263
	48 user159			  password001	       kim		    55-(491)568-4776		 46
	49 user160			  password001	       kim		    55-(298)588-9313		212
	50 user166			  password001				    62-(778)267-6382		241
	51 user171			  password001	       kim		    974-(371)199-7112		243
	52 user179			  password001	       kim		    380-(694)138-9116		108
	53 user180			  password001	       kim		    86-(612)421-1699		 87
	54 user183			  password001				    86-(529)833-0317		161
	55 user185			  password001				    86-(490)215-6037		132
	56 user202			  password001	       kim		    86-(998)607-7158		186
	57 user208			  password001				    86-(688)477-0764		261
	58 user210			  password001	       kim		    351-(877)981-7151		232
	59 user212			  password001				    46-(640)449-5076		149
	60 user222			  password001				    255-(401)439-3499		262
	61 user230			  password001	       kim		    48-(544)673-8239		 63
	62 user236			  password001	       kim		    381-(851)544-0977		255
	63 user237			  password001	       kim		    63-(874)657-9029		267
	64 user238			  password001	       kim		    86-(149)127-3440		 49
	65 user239			  password001				    86-(595)181-9763		140
	66 user240			  password001				    46-(878)418-4753		168
	67 user244			  password001	       kim		    62-(372)937-5790		230
	68 user245			  password001	       kim		    52-(258)926-6256		173
	69 user252			  password001				    598-(149)858-6126		  6
	70 user254			  password001				    63-(280)914-4310		 64
	71 user256			  password001	       kim		    30-(973)104-9502		 69
	72 user265			  password001	       kim		    30-(713)557-0683		208
	73 user267			  password001				    62-(648)790-1253		212
	74 user269			  password001				    86-(280)679-1956		255
	75 user270			  password001				    55-(312)608-0050		103
	76 user271			  password001	       kim		    7-(578)314-0586		217
	77 user276			  password001	       kim		    62-(542)967-9358		170
	78 user277			  password001				    84-(844)523-0445		247
	79 user280			  password001	       kim		    62-(531)211-4665		254
	80 user284			  password001	       kim		    351-(368)236-1734		162
	81 user285			  password001	       kim		    86-(386)597-3082		116
	82 user286			  password001				    55-(949)810-6253		151
	83 user290			  password001	       kim		    1-(379)734-1624		275
	84 user291			  password001				    92-(633)338-6757		192
	85 user293			  password001				    49-(699)436-9090		153
	86 user301			  password001	       kim		    998-(819)627-1634		140
	87 user313			  password001	       kim		    63-(659)728-7614		 86
	88 user316			  password001	       kim		    49-(139)644-7657		135
	89 user318			  password001	       kim		    62-(534)769-6577		262
	90 user321			  password001	       kim		    81-(680)759-7820		228
	91 user322			  password001				    375-(263)441-1008		284
	92 user327			  password001				    86-(154)483-0135		216
	93 user332			  password001				    62-(311)328-9695		276
	94 user336			  password001	       kim		    66-(743)666-7779		 74
	95 user343			  password001	       kim		    57-(373)276-6223		208
	96 user351			  password001	       kim		    86-(549)421-4738		258
	97 user353			  password001				    86-(483)648-1284		  2
	98 user357			  password001				    62-(155)712-9606		234
	99 user360			  password001	       kim		    86-(967)518-8856		100
       100 user362			  password001				    48-(190)954-8782		253
       101 user367			  password001	       kim		    86-(335)831-1950		277
       102 user371			  password001	       kim		    48-(312)620-8961		167
       103 user372			  password001	       kim		    380-(409)985-1715		183
       104 user377			  password001	       kim		    380-(705)390-1955		120
       105 user378			  password001				    504-(169)638-1085		246
       106 user380			  password001	       kim		    46-(676)424-4504		168
       107 user382			  password001				    228-(866)447-1181		272
       108 user389			  password001				    380-(157)328-8693		169
       109 user396			  password001				    351-(797)715-8947		 26
       110 user397			  password001	       kim		    7-(368)658-4604		 16
       111 user403			  password001				    62-(868)732-9190		197
       112 user404			  password001	       kim		    1-(907)326-5890		269
       113 user412			  password001	       kim		    385-(715)478-0618		198
       114 user415			  password001	       kim		    261-(626)820-2132		161
       115 user416			  password001				    212-(127)131-7853		100
       116 user418			  password001				    375-(189)312-8970		272
       117 user420			  password001	       kim		    92-(401)132-5611		163
       118 user427			  password001				    385-(407)532-9817		108
       119 user433			  password001				    54-(666)309-6303		193
       120 user434			  password001	       kim		    507-(813)429-7991		286
       121 user435			  password001				    351-(927)548-0964		295
       122 user442			  password001				    255-(320)496-1461		280
       123 user451			  password001				    52-(283)818-8922		105
       124 user456			  password001	       kim		    62-(461)956-0712		287
       125 user465			  password001				    54-(860)323-1880		 95
       126 user467			  password001	       kim		    63-(802)900-6699		101
       127 user472			  password001	       kim		    62-(442)459-9309		 16
       128 user478			  password001	       kim		    234-(800)297-8282		  2
       129 user479			  password001	       kim		    86-(673)765-4180		254
       130 user483			  password001	       kim		    351-(622)137-5121		178
       131 user484			  password001				    33-(324)678-0890		 80
       132 user490			  password001				    86-(869)818-7872		230
       133 user495			  password001	       kim		    385-(302)601-4642		248
       134 user496			  password001				    380-(858)767-7030		274
       135 user498			  password001	       kim		    54-(869)197-1455		280
       136 user503			  password001	       kim		    1-(561)141-7091		 30
       137 user506			  password001	       kim		    86-(252)891-0694		 69
       138 user509			  password001	       kim		    423-(850)691-6504		150
       139 user511			  password001	       kim		    62-(829)706-9276		 40
       140 user515			  password001	       kim		    593-(552)144-6864		 61
       141 user518			  password001				    33-(973)750-3041		 52
       142 user522			  password001				    33-(260)186-5754		 88
       143 user523			  password001				    43-(990)950-9951		286
       144 user524			  password001	       kim		    55-(244)301-9896		 67
       145 user525			  password001				    995-(562)464-8045		109
       146 user527			  password001	       kim		    234-(763)926-4411		 86
       147 user528			  password001				    62-(213)262-3302		263
       148 user529			  password001				    48-(241)940-7007		221
       149 user533			  password001				    7-(280)591-0236		272
       150 user539			  password001				    27-(933)643-8328		150
       151 user544			  password001	       kim		    86-(429)483-6789		118
       152 user547			  password001				    54-(258)626-0238		 15
       153 user552			  password001	       kim		    46-(668)937-7813		226
       154 user553			  password001	       kim		    351-(285)774-6781		 47
       155 user562			  password001				    57-(269)299-1754		212
       156 user564			  password001	       kim		    86-(421)828-6862		174
       157 user568			  password001				    86-(445)461-6359		189
       158 user570			  password001	       kim		    7-(569)504-0624		241
       159 user573			  password001				    7-(803)479-0303		 45
       160 user574			  password001				    359-(615)338-6094			191
       161 user583			  password001				    33-(487)683-6383		164
       162 user588			  password001	       kim		    86-(960)442-4132		292
       163 user602			  password001				    7-(819)359-8459		272
       164 user603			  password001	       kim		    420-(820)877-8683		 71
       165 user612			  password001	       kim		    62-(609)899-6712		242
       166 user615			  password001				    62-(836)665-5289		 36
       167 user616			  password001	       kim		    30-(503)272-3273		185
       168 user619			  password001				    86-(357)238-2894		271
       169 user620			  password001				    380-(770)792-5091		278
       170 user625			  password001	       kim		    62-(484)703-3735		145
       171 user628			  password001				    7-(671)378-0409		155
       172 user630			  password001				    261-(267)126-6900		101
       173 user632			  password001				    86-(656)515-5293		110
       174 user634			  password001				    216-(175)567-3857		281
       175 user638			  password001	       kim		    380-(721)709-2526		 65
       176 user642			  password001	       kim		    92-(775)567-2680		126
       177 user646			  password001				    1-(161)532-7932		129
       178 user653			  password001	       kim		    44-(807)419-1383		271
       179 user654			  password001				    7-(592)617-5833		226
       180 user655			  password001				    86-(468)524-1106		253
       181 user656			  password001				    420-(131)566-5647		297
       182 user662			  password001				    86-(712)467-3982		121
       183 user668			  password001				    86-(360)500-3187		 36
       184 user677			  password001	       kim		    55-(105)621-4270		213
       185 user684			  password001	       kim		    389-(586)573-4137		 74
       186 user694			  password001	       kim		    46-(227)313-3930		239
       187 user695			  password001	       kim		    39-(469)637-4122		 97
       188 user696			  password001	       kim		    386-(681)125-4017		131
       189 user698			  password001	       kim		    86-(675)287-2302		 87
       190 user700			  password001	       kim		    86-(166)821-6402		282
       191 user701			  password001	       kim		    255-(208)997-6398		191
       192 user703			  password001				    358-(319)614-8342		237
       193 user707			  password001	       kim		    62-(811)811-8605		  4
       194 user717			  password001				    30-(979)356-6401		 42
       195 user719			  password001	       kim		    33-(675)480-0905		155
       196 user725			  password001	       kim		    227-(783)267-1747		271
       197 user726			  password001	       kim		    976-(315)849-4359		 54
       198 user728			  password001				    7-(766)843-5285		 42
       199 user731			  password001	       kim		    62-(817)210-9814		183
       200 user732			  password001				    591-(346)902-3597		124
       201 user735			  password001	       kim		    380-(233)752-7543		273
       202 user737			  password001	       kim		    86-(870)959-6051		 56
       203 user738			  password001				    353-(495)539-6509		119
       204 user739			  password001	       kim		    86-(149)435-6914		 22
       205 user742			  password001				    62-(197)309-0367		111
       206 user745			  password001				    994-(549)533-9074		 72
       207 user749			  password001				    62-(151)704-2328		  9
       208 user751			  password001				    55-(520)751-5307		169
       209 user752			  password001	       kim		    358-(179)981-7706		193
       210 user754			  password001				    86-(885)266-6121		125
       211 user756			  password001	       kim		    34-(252)593-2768		235
       212 user758			  password001				    86-(213)230-6835		  4
       213 user763			  password001	       kim		    380-(699)785-1126		 22
       214 user766			  password001	       kim		    86-(870)108-6398		284
       215 user770			  password001				    380-(728)948-2113		 23
       216 user771			  password001				    81-(631)189-8193		224
       217 user781			  password001	       kim		    86-(108)246-7536		 13
       218 user784			  password001				    51-(454)831-3651		 96
       219 user786			  password001	       kim		    351-(547)617-3020		 84
       220 user788			  password001				    351-(319)925-5367		236
       221 user790			  password001				    420-(182)743-3763		108
       222 user797			  password001	       kim		    54-(637)688-3879		 45
       223 user798			  password001				    86-(660)611-6206		159
       224 user799			  password001	       kim		    375-(208)361-9837		252
       225 user802			  password001	       kim		    57-(892)140-5713		 49
       226 user805			  password001				    33-(258)792-1401		237
       227 user811			  password001				    62-(641)702-2497		269
       228 user816			  password001	       kim		    51-(406)991-5138		 53
       229 user817			  password001	       kim		    57-(940)562-8399		165
       230 user819			  password001	       kim		    86-(689)680-8090		249
       231 user821			  password001	       kim		    86-(766)243-2656		295
       232 user824			  password001	       kim		    48-(668)599-1364		140
       233 user825			  password001				    66-(178)900-9837		215
       234 user827			  password001	       kim		    506-(669)786-9322		 57
       235 user830			  password001	       kim		    46-(299)624-7013		 53
       236 user834			  password001				    353-(354)991-5219		122
       237 user835			  password001				    86-(550)293-5160		 87
       238 user836			  password001	       kim		    86-(585)947-7161		  2
       239 user839			  password001				    46-(827)943-2851		 24
       240 user849			  password001				    86-(785)113-3996		 75
       241 user851			  password001				    692-(120)154-5253		 92
       242 user854			  password001	       kim		    381-(213)417-3929		180
       243 user855			  password001	       kim		    93-(396)407-8204		173
       244 user857			  password001	       kim		    351-(490)993-2950		272
       245 user859			  password001	       kim		    46-(380)922-7197		232
       246 user862			  password001				    972-(703)864-3457		 61
       247 user867			  password001	       kim		    48-(807)114-1722		213
       248 user871			  password001				    86-(296)819-3942		 90
       249 user876			  password001				    1-(919)389-6560		 92
       250 user887			  password001				    389-(772)890-7047		 94
       251 user894			  password001	       kim		    86-(688)234-5193		 63
       252 user896			  password001				    86-(625)107-1653		238
       253 user898			  password001	       kim		    63-(554)559-7849		111
       254 user906			  password001	       kim		    55-(813)445-0985		174
       255 user907			  password001				    94-(660)299-2618		205
       256 user910			  password001	       kim		    86-(492)157-0547		251
       257 user916			  password001				    232-(585)333-1497		292
       258 user918			  password001	       kim		    48-(777)822-2856		263
       259 user919			  password001				    62-(480)836-1074		159
       260 user921			  password001				    54-(238)927-6787		241
       261 user924			  password001				    386-(496)560-1985		 40
       262 user925			  password001				    33-(951)902-8586		270
       263 user928			  password001				    33-(230)409-4411		224
       264 user934			  password001	       kim		    86-(598)280-1558		 81
       265 user937			  password001	       kim		    46-(351)742-4465		  8
       266 user938			  password001				    351-(666)642-6404		237
       267 user939			  password001	       kim		    351-(614)168-0894		 21
       268 user941			  password001				    63-(501)684-0188		 11
       269 user942			  password001	       kim		    86-(492)284-0904		278
       270 user944			  password001	       kim		    84-(672)187-7998		297
       271 user945			  password001	       kim		    66-(873)807-1793		140
       272 user947			  password001	       kim		    62-(380)286-2089		185
       273 user951			  password001				    62-(944)347-0926		270
       274 user953			  password001	       kim		    386-(552)209-5546		245
       275 user955			  password001				    55-(824)948-4716		165
       276 user956			  password001	       kim		    1-(984)850-0306		176
       277 user958			  password001				    86-(160)728-7062		 85
       278 user959			  password001				    1-(889)445-3084		138
       279 user960			  password001	       kim		    62-(330)456-9005		125
       280 user962			  password001				    63-(477)804-0984		 25
       281 user963			  password001	       kim		    7-(146)108-7955		 51
       282 user970			  password001				    49-(524)166-1590		189
       283 user971			  password001				    351-(817)834-5189		  6
       284 user974			  password001	       kim		    86-(534)183-0252		206
       285 user980			  password001	       kim		    351-(825)819-1492		 89
       286 user983			  password001				    93-(300)174-6959		 72
       287 user984			  password001	       kim		    86-(438)472-8394		104
       288 user989			  password001	       kim		    880-(149)574-1716		 12
       289 user990			  password001	       kim		    62-(935)128-3518		116
       290 user991			  password001				    86-(299)452-7191		283
       291 user995			  password001				    86-(872)423-2410		 31
       292 user998			  password001				    51-(747)872-0034		297
       293 user999			  password001	       kim		    48-(195)829-2032		 57

293 rows selected.
*/


-- ADD ROWNUM AS NUM
SELECT ROWNUM AS NUM, MEMBER_ID, MEMBER_PW, MEMBER_NAME, MOBILE, MILEAGE
	FROM (SELECT *
					FROM TEST
					ORDER BY MILEAGE
				);
/*
    NUM MEMBER_ID			  MEMBER_PW	       MEMBER_NAME	    MOBILE		    MILEAGE
---------- ------------------------------ -------------------- -------------------- -------------------- ----------
	 1 user353			  password001				    86-(483)648-1284		  2
	 2 user478			  password001	       kim		    234-(800)297-8282		  2
	 3 user836			  password001	       kim		    86-(585)947-7161		  2
	 4 user707			  password001	       kim		    62-(811)811-8605		  4
	 5 user758			  password001				    86-(213)230-6835		  4
	 6 user150			  password001				    62-(944)560-9940		  6
	 7 user252			  password001				    598-(149)858-6126		  6
	 8 user971			  password001				    351-(817)834-5189		  6
	 9 user937			  password001	       kim		    46-(351)742-4465		  8
	10 user152			  password001	       kim		    46-(302)800-0265		  9
	11 user749			  password001				    62-(151)704-2328		  9
	12 user941			  password001				    63-(501)684-0188		 11
	13 user989			  password001	       kim		    880-(149)574-1716		 12
	14 user781			  password001	       kim		    86-(108)246-7536		 13
	15 user547			  password001				    54-(258)626-0238		 15
	16 user397			  password001	       kim		    7-(368)658-4604		 16
	17 user472			  password001	       kim		    62-(442)459-9309		 16
	18 user139			  password001	       kim		    86-(913)642-4329		 17
	19 user939			  password001	       kim		    351-(614)168-0894		 21
	20 user33			  password001				    86-(249)366-6490		 22
	21 user739			  password001	       kim		    86-(149)435-6914		 22
	22 user763			  password001	       kim		    380-(699)785-1126		 22
	23 user770			  password001				    380-(728)948-2113		 23
	24 user839			  password001				    46-(827)943-2851		 24
	25 user40			  password001	       kim		    27-(756)403-0818		 25
	26 user962			  password001				    63-(477)804-0984		 25
	27 user396			  password001				    351-(797)715-8947		 26
	28 user503			  password001	       kim		    1-(561)141-7091		 30
	29 user995			  password001				    86-(872)423-2410		 31
	30 user103			  password001				    505-(409)255-4119		 36
	31 user115			  password001	       kim		    1-(205)799-6677		 36
	32 user615			  password001				    62-(836)665-5289		 36
	33 user668			  password001				    86-(360)500-3187		 36
	34 user511			  password001	       kim		    62-(829)706-9276		 40
	35 user924			  password001				    386-(496)560-1985		 40
	36 user59			  password001				    1-(727)476-0842		 42
	37 user717			  password001				    30-(979)356-6401		 42
	38 user728			  password001				    7-(766)843-5285		 42
	39 user125			  password001	       kim		    234-(985)435-1750		 45
	40 user573			  password001				    7-(803)479-0303		 45
	41 user797			  password001	       kim		    54-(637)688-3879		 45
	42 user159			  password001	       kim		    55-(491)568-4776		 46
	43 user553			  password001	       kim		    351-(285)774-6781		 47
	44 user238			  password001	       kim		    86-(149)127-3440		 49
	45 user802			  password001	       kim		    57-(892)140-5713		 49
	46 user142			  password001				    380-(576)563-6009		 51
	47 user963			  password001	       kim		    7-(146)108-7955		 51
	48 user518			  password001				    33-(973)750-3041		 52
	49 user816			  password001	       kim		    51-(406)991-5138		 53
	50 user830			  password001	       kim		    46-(299)624-7013		 53
	51 user39			  password001	       kim		    62-(969)279-8674		 54
	52 user726			  password001	       kim		    976-(315)849-4359		 54
	53 user737			  password001	       kim		    86-(870)959-6051		 56
	54 user827			  password001	       kim		    506-(669)786-9322		 57
	55 user999			  password001	       kim		    48-(195)829-2032		 57
	56 user515			  password001	       kim		    593-(552)144-6864		 61
	57 user862			  password001				    972-(703)864-3457		 61
	58 user230			  password001	       kim		    48-(544)673-8239		 63
	59 user894			  password001	       kim		    86-(688)234-5193		 63
	60 user254			  password001				    63-(280)914-4310		 64
	61 user638			  password001	       kim		    380-(721)709-2526		 65
	62 user524			  password001	       kim		    55-(244)301-9896		 67
	63 user256			  password001	       kim		    30-(973)104-9502		 69
	64 user506			  password001	       kim		    86-(252)891-0694		 69
	65 user603			  password001	       kim		    420-(820)877-8683		 71
	66 user745			  password001				    994-(549)533-9074		 72
	67 user983			  password001				    93-(300)174-6959		 72
	68 user336			  password001	       kim		    66-(743)666-7779		 74
	69 user684			  password001	       kim		    389-(586)573-4137		 74
	70 user849			  password001				    86-(785)113-3996		 75
	71 user147			  password001				    86-(539)700-2969		 79
	72 user484			  password001				    33-(324)678-0890		 80
	73 user934			  password001	       kim		    86-(598)280-1558		 81
	74 user104			  password001				    86-(372)631-0591		 82
	75 user786			  password001	       kim		    351-(547)617-3020		 84
	76 user958			  password001				    86-(160)728-7062		 85
	77 user313			  password001	       kim		    63-(659)728-7614		 86
	78 user527			  password001	       kim		    234-(763)926-4411		 86
	79 user180			  password001	       kim		    86-(612)421-1699		 87
	80 user698			  password001	       kim		    86-(675)287-2302		 87
	81 user835			  password001				    86-(550)293-5160		 87
	82 user42			  password001				    86-(420)198-4240		 88
	83 user522			  password001				    33-(260)186-5754		 88
	84 user980			  password001	       kim		    351-(825)819-1492		 89
	85 user871			  password001				    86-(296)819-3942		 90
	86 user851			  password001				    692-(120)154-5253		 92
	87 user876			  password001				    1-(919)389-6560		 92
	88 user887			  password001				    389-(772)890-7047		 94
	89 user465			  password001				    54-(860)323-1880		 95
	90 user784			  password001				    51-(454)831-3651		 96
	91 user695			  password001	       kim		    39-(469)637-4122		 97
	92 user360			  password001	       kim		    86-(967)518-8856		100
	93 user416			  password001				    212-(127)131-7853		100
	94 user630			  password001				    261-(267)126-6900		101
	95 user467			  password001	       kim		    63-(802)900-6699		101
	96 user270			  password001				    55-(312)608-0050		103
	97 user984			  password001	       kim		    86-(438)472-8394		104
	98 user451			  password001				    52-(283)818-8922		105
	99 user179			  password001	       kim		    380-(694)138-9116		108
       100 user427			  password001				    385-(407)532-9817		108
       101 user790			  password001				    420-(182)743-3763		108
       102 user525			  password001				    995-(562)464-8045		109
       103 user632			  password001				    86-(656)515-5293		110
       104 user898			  password001	       kim		    63-(554)559-7849		111
       105 user742			  password001				    62-(197)309-0367		111
       106 user90			  password001	       kim		    62-(143)881-9241		112
       107 user990			  password001	       kim		    62-(935)128-3518		116
       108 user285			  password001	       kim		    86-(386)597-3082		116
       109 user544			  password001	       kim		    86-(429)483-6789		118
       110 user738			  password001				    353-(495)539-6509		119
       111 user377			  password001	       kim		    380-(705)390-1955		120
       112 user662			  password001				    86-(712)467-3982		121
       113 user834			  password001				    353-(354)991-5219		122
       114 user732			  password001				    591-(346)902-3597		124
       115 user754			  password001				    86-(885)266-6121		125
       116 user960			  password001	       kim		    62-(330)456-9005		125
       117 user642			  password001	       kim		    92-(775)567-2680		126
       118 user646			  password001				    1-(161)532-7932		129
       119 user696			  password001	       kim		    386-(681)125-4017		131
       120 user185			  password001				    86-(490)215-6037		132
       121 user316			  password001	       kim		    49-(139)644-7657		135
       122 user959			  password001				    1-(889)445-3084		138
       123 user7			  password001	       kim		    55-(927)192-2158		140
       124 user239			  password001				    86-(595)181-9763		140
       125 user945			  password001	       kim		    66-(873)807-1793		140
       126 user301			  password001	       kim		    998-(819)627-1634		140
       127 user824			  password001	       kim		    48-(668)599-1364		140
       128 user8			  password001				    84-(444)184-1994		142
       129 user625			  password001	       kim		    62-(484)703-3735		145
       130 user212			  password001				    46-(640)449-5076		149
       131 user41			  password001	       kim		    86-(647)670-7903		150
       132 user509			  password001	       kim		    423-(850)691-6504		150
       133 user539			  password001				    27-(933)643-8328		150
       134 user286			  password001				    55-(949)810-6253		151
       135 user293			  password001				    49-(699)436-9090		153
       136 user628			  password001				    7-(671)378-0409		155
       137 user719			  password001	       kim		    33-(675)480-0905		155
       138 user131			  password001	       kim		    63-(875)317-8291		155
       139 user120			  password001				    1-(318)795-1708		158
       140 user798			  password001				    86-(660)611-6206		159
       141 user919			  password001				    62-(480)836-1074		159
       142 user415			  password001	       kim		    261-(626)820-2132		161
       143 user183			  password001				    86-(529)833-0317		161
       144 user284			  password001	       kim		    351-(368)236-1734		162
       145 user420			  password001	       kim		    92-(401)132-5611		163
       146 user583			  password001				    33-(487)683-6383		164
       147 user817			  password001	       kim		    57-(940)562-8399		165
       148 user955			  password001				    55-(824)948-4716		165
       149 user116			  password001	       kim		    48-(138)633-4596		166
       150 user371			  password001	       kim		    48-(312)620-8961		167
       151 user380			  password001	       kim		    46-(676)424-4504		168
       152 user240			  password001				    46-(878)418-4753		168
       153 user751			  password001				    55-(520)751-5307		169
       154 user389			  password001				    380-(157)328-8693		169
       155 user276			  password001	       kim		    62-(542)967-9358		170
       156 user855			  password001	       kim		    93-(396)407-8204		173
       157 user245			  password001	       kim		    52-(258)926-6256		173
       158 user906			  password001	       kim		    55-(813)445-0985		174
       159 user564			  password001	       kim		    86-(421)828-6862		174
       160 user956			  password001	       kim		    1-(984)850-0306		176
       161 user107			  password001				    66-(695)773-1738		176
       162 user483			  password001	       kim		    351-(622)137-5121		178
       163 user854			  password001	       kim		    381-(213)417-3929		180
       164 user5			  password001				    63-(127)184-7405		181
       165 user372			  password001	       kim		    380-(409)985-1715		183
       166 user731			  password001	       kim		    62-(817)210-9814		183
       167 user48			  password001	       kim		    55-(232)540-9299		183
       168 user10			  password001	       kim		    86-(797)662-9517		184
       169 user947			  password001	       kim		    62-(380)286-2089		185
       170 user616			  password001	       kim		    30-(503)272-3273		185
       171 user202			  password001	       kim		    86-(998)607-7158		186
       172 user568			  password001				    86-(445)461-6359		189
       173 user21			  password001				    420-(865)886-2153		189
       174 user970			  password001				    49-(524)166-1590		189
       175 user574			  password001				    359-(615)338-6094		191
       176 user701			  password001	       kim		    255-(208)997-6398		191
       177 user291			  password001				    92-(633)338-6757		192
       178 user433			  password001				    54-(666)309-6303		193
       179 user752			  password001	       kim		    358-(179)981-7706		193
       180 user403			  password001				    62-(868)732-9190		197
       181 user412			  password001	       kim		    385-(715)478-0618		198
       182 user907			  password001				    94-(660)299-2618		205
       183 user974			  password001	       kim		    86-(534)183-0252		206
       184 user343			  password001	       kim		    57-(373)276-6223		208
       185 user265			  password001	       kim		    30-(713)557-0683		208
       186 user14			  password001	       kim		    86-(166)737-0636		208
       187 user113			  password001	       kim		    46-(497)680-0465		211
       188 user160			  password001	       kim		    55-(298)588-9313		212
       189 user562			  password001				    57-(269)299-1754		212
       190 user267			  password001				    62-(648)790-1253		212
       191 user134			  password001				    46-(417)611-0210		212
       192 user677			  password001	       kim		    55-(105)621-4270		213
       193 user867			  password001	       kim		    48-(807)114-1722		213
       194 user63			  password001	       kim		    966-(143)250-5892		214
       195 user825			  password001				    66-(178)900-9837		215
       196 user327			  password001				    86-(154)483-0135		216
       197 user271			  password001	       kim		    7-(578)314-0586		217
       198 user35			  password001				    57-(280)181-8537		221
       199 user529			  password001				    48-(241)940-7007		221
       200 user771			  password001				    81-(631)189-8193		224
       201 user928			  password001				    33-(230)409-4411		224
       202 user105			  password001	       kim		    48-(728)895-2558		226
       203 user552			  password001	       kim		    46-(668)937-7813		226
       204 user654			  password001				    7-(592)617-5833		226
       205 user321			  password001	       kim		    81-(680)759-7820		228
       206 user54			  password001				    57-(924)882-8497		229
       207 user244			  password001	       kim		    62-(372)937-5790		230
       208 user490			  password001				    86-(869)818-7872		230
       209 user859			  password001	       kim		    46-(380)922-7197		232
       210 user210			  password001	       kim		    351-(877)981-7151		232
       211 user357			  password001				    62-(155)712-9606		234
       212 user756			  password001	       kim		    34-(252)593-2768		235
       213 user788			  password001				    351-(319)925-5367		236
       214 user938			  password001				    351-(666)642-6404		237
       215 user805			  password001				    33-(258)792-1401		237
       216 user703			  password001				    358-(319)614-8342		237
       217 user80			  password001				    30-(389)905-6912		238
       218 user896			  password001				    86-(625)107-1653		238
       219 user694			  password001	       kim		    46-(227)313-3930		239
       220 user166			  password001				    62-(778)267-6382		241
       221 user570			  password001	       kim		    7-(569)504-0624		241
       222 user921			  password001				    54-(238)927-6787		241
       223 user28			  password001				    420-(852)174-4546		241
       224 user612			  password001	       kim		    62-(609)899-6712		242
       225 user171			  password001	       kim		    974-(371)199-7112		243
       226 user953			  password001	       kim		    386-(552)209-5546		245
       227 user378			  password001				    504-(169)638-1085		246
       228 user277			  password001				    84-(844)523-0445		247
       229 user495			  password001	       kim		    385-(302)601-4642		248
       230 user819			  password001	       kim		    86-(689)680-8090		249
       231 user1			  password001				    86-(704)357-5946		250
       232 user910			  password001	       kim		    86-(492)157-0547		251
       233 user799			  password001	       kim		    375-(208)361-9837		252
       234 user655			  password001				    86-(468)524-1106		253
       235 user362			  password001				    48-(190)954-8782		253
       236 user280			  password001	       kim		    62-(531)211-4665		254
       237 user479			  password001	       kim		    86-(673)765-4180		254
       238 user236			  password001	       kim		    381-(851)544-0977		255
       239 user269			  password001				    86-(280)679-1956		255
       240 user129			  password001	       kim		    62-(599)151-4878		255
       241 user351			  password001	       kim		    86-(549)421-4738		258
       242 user208			  password001				    86-(688)477-0764		261
       243 user75			  password001	       kim		    86-(767)240-9121		262
       244 user222			  password001				    255-(401)439-3499		262
       245 user318			  password001	       kim		    62-(534)769-6577		262
       246 user528			  password001				    62-(213)262-3302		263
       247 user154			  password001	       kim		    506-(440)877-5221		263
       248 user918			  password001	       kim		    48-(777)822-2856		263
       249 user74			  password001				    48-(341)288-5562		264
       250 user6			  password001	       kim		    235-(371)521-3750		265
       251 user124			  password001				    54-(454)744-8222		266
       252 user237			  password001	       kim		    63-(874)657-9029		267
       253 user404			  password001	       kim		    1-(907)326-5890		269
       254 user811			  password001				    62-(641)702-2497		269
       255 user925			  password001				    33-(951)902-8586		270
       256 user951			  password001				    62-(944)347-0926		270
       257 user725			  password001	       kim		    227-(783)267-1747		271
       258 user619			  password001				    86-(357)238-2894		271
       259 user653			  password001	       kim		    44-(807)419-1383		271
       260 user418			  password001				    375-(189)312-8970		272
       261 user602			  password001				    7-(819)359-8459		272
       262 user533			  password001				    7-(280)591-0236		272
       263 user382			  password001				    228-(866)447-1181		272
       264 user857			  password001	       kim		    351-(490)993-2950		272
       265 user735			  password001	       kim		    380-(233)752-7543		273
       266 user496			  password001				    380-(858)767-7030		274
       267 user290			  password001	       kim		    1-(379)734-1624		275
       268 user332			  password001				    62-(311)328-9695		276
       269 user367			  password001	       kim		    86-(335)831-1950		277
       270 user45			  password001				    380-(535)438-9076		277
       271 user22			  password001				    970-(765)295-8796		277
       272 user942			  password001	       kim		    86-(492)284-0904		278
       273 user620			  password001				    380-(770)792-5091		278
       274 user498			  password001	       kim		    54-(869)197-1455		280
       275 user442			  password001				    255-(320)496-1461		280
       276 user634			  password001				    216-(175)567-3857		281
       277 user700			  password001	       kim		    86-(166)821-6402		282
       278 user991			  password001				    86-(299)452-7191		283
       279 user766			  password001	       kim		    86-(870)108-6398		284
       280 user322			  password001				    375-(263)441-1008		284
       281 user434			  password001	       kim		    507-(813)429-7991		286
       282 user523			  password001				    43-(990)950-9951		286
       283 user456			  password001	       kim		    62-(461)956-0712		287
       284 user123			  password001				    63-(983)193-5519		289
       285 user916			  password001				    232-(585)333-1497		292
       286 user588			  password001	       kim		    86-(960)442-4132		292
       287 user435			  password001				    351-(927)548-0964		295
       288 user821			  password001	       kim		    86-(766)243-2656		295
       289 user109			  password001				    62-(529)308-2005		296
       290 user656			  password001				    420-(131)566-5647		297
       291 user998			  password001				    51-(747)872-0034		297
       292 user944			  password001	       kim		    84-(672)187-7998		297
       293 user146			  password001	       kim		    1-(731)955-3802		298

293 rows selected.
*/




-- ***************THERE IS THE POINT AREA
/*
-- page >> requested page number
-- dpp >> data per page

page = 1 && DATA PER PAGE = 15
SELECT NUM, MEMBER_ID, MEMBER_PW, MEMBER_NAME,  MOBILE, EMAIL, ENTRY_DATE, GRADE, MILEAGE, MANAGER
  FROM(
    SELECT ROWNUM AS NUM, MEMBER_ID, MEMBER_PW, MEMBER_NAME,  MOBILE, EMAIL, ENTRY_DATE, GRADE, MILEAGE, MANAGER
      FROM (SELECT *
				      FROM TEST
				      ORDER BY MILEAGE)
  )WHERE NUM BETWEEN (page * dpp) + 1 AND (page * dpp);
	--	NUM BETWEEN (1 * 15)+1 AND (1 * 15)
	--  == WHERE  NUM <= 16 AND NUM <= 30



SELECT NUM, MEMBER_ID, MEMBER_PW, MEMBER_NAME,  MOBILE, EMAIL, ENTRY_DATE, GRADE, MILEAGE, MANAGER
  FROM(
    SELECT ROWNUM AS NUM, MEMBER_ID, MEMBER_PW, MEMBER_NAME,  MOBILE, EMAIL, ENTRY_DATE, GRADE, MILEAGE, MANAGER
      FROM (SELECT *
				      FROM TEST
				      ORDER BY MILEAGE)
  )WHERE NUM BETWEEN (10 * 15) + 1 AND (11 * 15);

*/


SELECT *
	FROM(
		SELECT ROWNUM AS NUM, MEMBER_ID, MEMBER_PW, MEMBER_NAME, MOBILE, MILEAGE
			FROM (SELECT *
							FROM TEST
							ORDER BY MILEAGE
						)
	) WHERE NUM BETWEEN (10 * 15) +1 AND (11 * 15);


/*
	SELECT COUNT(*)
		FROM(
			SELECT ROWNUM AS NUM, MEMBER_ID, MEMBER_PW, MEMBER_NAME, MOBILE, MILEAGE
				FROM (SELECT *
								FROM TEST
								ORDER BY MILEAGE
							)  WHERE ROWNUM <= 10 * 15
		)  ;
*/


SELECT ROWNUM AS NUM, MEMBER_ID, MEMBER_PW, MEMBER_NAME, MOBILE, MILEAGE
	FROM (SELECT *
					FROM TEST
					ORDER BY MILEAGE
				)
	WHERE ROWNUM <= 11*15;

SELECT *
	FROM(
		SELECT ROWNUM AS NUM, MEMBER_ID, MEMBER_PW, MEMBER_NAME, MOBILE, MILEAGE
			FROM (SELECT *
							FROM TEST
							ORDER BY MILEAGE
						)  WHERE ROWNUM <= 11 * 15
	) WHERE NUM >= 10*15 ;


	/*
	NUM MEMBER_ID			  MEMBER_PW	       MEMBER_NAME	    MOBILE		    MILEAGE
---------- ------------------------------ -------------------- -------------------- -------------------- ----------
16 user397			  password001	       kim		    7-(368)658-4604		 16
17 user472			  password001	       kim		    62-(442)459-9309		 16
18 user139			  password001	       kim		    86-(913)642-4329		 17
19 user939			  password001	       kim		    351-(614)168-0894		 21
20 user33			  password001				    86-(249)366-6490		 22
21 user739			  password001	       kim		    86-(149)435-6914		 22
22 user763			  password001	       kim		    380-(699)785-1126		 22
23 user770			  password001				    380-(728)948-2113		 23
24 user839			  password001				    46-(827)943-2851		 24
25 user40			  password001	       kim		    27-(756)403-0818		 25
26 user962			  password001				    63-(477)804-0984		 25
27 user396			  password001				    351-(797)715-8947		 26
28 user503			  password001	       kim		    1-(561)141-7091		 30
29 user995			  password001				    86-(872)423-2410		 31
30 user103			  password001				    505-(409)255-4119		 36

15 rows selected.
*/

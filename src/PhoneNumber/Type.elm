module PhoneNumber.Type where
{-| Types for working with international phone numbers

# Types
@docs CountryCodeAlpha2, PrefixDigit, CountryCode

# Calling codes
@docs callingCodes
-}

--import String
--import Text
--import Regex

{-| See [ISO3166_1_alpha_2 on wikipedia](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)
Please not that Bolivia and Botswana share the indeterminate reservation for the code `RB`.

The following codes that not present in `ISO_3166-1_alpha-2` are also included:

* `QS` - Somaliland
* `QN` - Nagorno-Karabakh
* `KS` - Kosovo
* `XT` - Toll-free telephone number
* `XS` - Shared-cost service
* `XN` - Inmarsat plc
* `XP` - Universal Personal Telecommunications
* `XG` - Global Mobile Satellite System
* `XV` - International networks (country code)
* `XD` - OCHA
* `XR` - International premium rate service
* `XC` - ITPCS

TODO: Possibly these codes should be moved to a new `countrycode-type` package.
-}
type CountryCodeAlpha2 = -- Officially assigned (2014)
                        AD  -- Andorra
                      | AE  -- United Arab Emirates
                      | AF  -- Afghanistan
                      | AG  -- Antigua and Barbuda
                      | AI  -- Anguilla
                      | AL  -- Albania
                      | AM  -- Armenia
                      | AO  -- Angola
                      | AQ  -- Antarctica
                      | AR  -- Argentina
                      | AS  -- American Samoa
                      | AT  -- Austria
                      | AU  -- Australia
                      | AW  -- Aruba
                      | AX  -- Åland Islands
                      | AZ  -- Azerbaijan
                      | BA  -- Bosnia and Herzegovina
                      | BB  -- Barbados
                      | BD  -- Bangladesh
                      | BE  -- Belgium
                      | BF  -- Burkina Faso
                      | BG  -- Bulgaria
                      | BH  -- Bahrain
                      | BI  -- Burundi
                      | BJ  -- Benin
                      | BL  -- Saint Barthélemy
                      | BM  -- Bermuda
                      | BN  -- Brunei Darussalam
                      | BO  -- Bolivia, Plurinational State of
                      | BQ  -- Bonaire, Sint Eustatius and Saba
                      | BR  -- Brazil
                      | BS  -- Bahamas
                      | BT  -- Bhutan
                      | BV  -- Bouvet Island
                      | BW  -- Botswana
                      | BY  -- Belarus
                      | BZ  -- Belize
                      | CA  -- Canada
                      | CC  -- Cocos (Keeling) Islands
                      | CD  -- Congo, the Democratic Republic of the
                      | CF  -- Central African Republic
                      | CG  -- Congo
                      | CH  -- Switzerland
                      | CI  -- Côte d'Ivoire
                      | CK  -- Cook Islands
                      | CL  -- Chile
                      | CM  -- Cameroon
                      | CN  -- China
                      | CO  -- Colombia
                      | CR  -- Costa Rica
                      | CU  -- Cuba
                      | CV  -- Cabo Verde
                      | CW  -- Curaçao
                      | CX  -- Christmas Island
                      | CY  -- Cyprus
                      | CZ  -- Czech Republic
                      | DE  -- Germany
                      | DJ  -- Djibouti
                      | DK  -- Denmark
                      | DM  -- Dominica
                      | DO  -- Dominican Republic
                      | DZ  -- Algeria
                      | EC  -- Ecuador
                      | EE  -- Estonia
                      | EG  -- Egypt
                      | EH  -- Western Sahara
                      | ER  -- Eritrea
                      | ES  -- Spain
                      | ET  -- Ethiopia
                      | FI  -- Finland
                      | FJ  -- Fiji
                      | FK  -- Falkland Islands (Malvinas)
                      | FM  -- Micronesia, Federated States of
                      | FO  -- Faroe Islands
                      | FR  -- France
                      | GA  -- Gabon
                      | GB  -- United Kingdom
                      | GD  -- Grenada
                      | GE  -- Georgia
                      | GF  -- French Guiana
                      | GG  -- Guernsey
                      | GH  -- Ghana
                      | GI  -- Gibraltar
                      | GL  -- Greenland
                      | GM  -- Gambia
                      | GN  -- Guinea
                      | GP  -- Guadeloupe
                      | GQ  -- Equatorial Guinea
                      | GR  -- Greece
                      | GS  -- South Georgia and the South Sandwich Islands
                      | GT  -- Guatemala
                      | GU  -- Guam
                      | GW  -- Guinea-Bissau
                      | GY  -- Guyana
                      | HK  -- Hong Kong
                      | HM  -- Heard Island and McDonald Islands
                      | HN  -- Honduras
                      | HR  -- Croatia
                      | HT  -- Haiti
                      | HU  -- Hungary
                      | ID  -- Indonesia
                      | IE  -- Ireland
                      | IL  -- Israel
                      | IM  -- Isle of Man
                      | IN  -- India
                      | IO  -- British Indian Ocean Territory
                      | IQ  -- Iraq
                      | IR  -- Iran, Islamic Republic of
                      | IS  -- Iceland
                      | IT  -- Italy
                      | JE  -- Jersey
                      | JM  -- Jamaica
                      | JO  -- Jordan
                      | JP  -- Japan
                      | KE  -- Kenya
                      | KG  -- Kyrgyzstan
                      | KH  -- Cambodia
                      | KI  -- Kiribati
                      | KM  -- Comoros
                      | KN  -- Saint Kitts and Nevis
                      | KP  -- Korea, Democratic People's Republic of
                      | KR  -- Korea, Republic of
                      | KW  -- Kuwait
                      | KY  -- Cayman Islands
                      | KZ  -- Kazakhstan
                      | LA  -- Lao People's Democratic Republic
                      | LB  -- Lebanon
                      | LC  -- Saint Lucia
                      | LI  -- Liechtenstein
                      | LK  -- Sri Lanka
                      | LR  -- Liberia
                      | LS  -- Lesotho
                      | LT  -- Lithuania
                      | LU  -- Luxembourg
                      | LV  -- Latvia
                      | LY  -- Libya
                      | MA  -- Morocco
                      | MC  -- Monaco
                      | MD  -- Moldova, Republic of
                      | ME  -- Montenegro
                      | MF  -- Saint Martin (French part)
                      | MG  -- Madagascar
                      | MH  -- Marshall Islands
                      | MK  -- Macedonia, the former Yugoslav Republic of
                      | ML  -- Mali
                      | MM  -- Myanmar
                      | MN  -- Mongolia
                      | MO  -- Macao
                      | MP  -- Northern Mariana Islands
                      | MQ  -- Martinique
                      | MR  -- Mauritania
                      | MS  -- Montserrat
                      | MT  -- Malta
                      | MU  -- Mauritius
                      | MV  -- Maldives
                      | MW  -- Malawi
                      | MX  -- Mexico
                      | MY  -- Malaysia
                      | MZ  -- Mozambique
                      | NA  -- Namibia
                      | NC  -- New Caledonia
                      | NE  -- Niger
                      | NF  -- Norfolk Island
                      | NG  -- Nigeria
                      | NI  -- Nicaragua
                      | NL  -- Netherlands
                      | NO  -- Norway
                      | NP  -- Nepal
                      | NR  -- Nauru
                      | NU  -- Niue
                      | NZ  -- New Zealand
                      | OM  -- Oman
                      | PA  -- Panama
                      | PE  -- Peru
                      | PF  -- French Polynesia
                      | PG  -- Papua New Guinea
                      | PH  -- Philippines
                      | PK  -- Pakistan
                      | PL  -- Poland
                      | PM  -- Saint Pierre and Miquelon
                      | PN  -- Pitcairn
                      | PR  -- Puerto Rico
                      | PS  -- Palestine, State of
                      | PT  -- Portugal
                      | PW  -- Palau
                      | PY  -- Paraguay
                      | QA  -- Qatar
                      | RE  -- Réunion
                      | RO  -- Romania
                      | RS  -- Serbia
                      | RU  -- Russian Federation
                      | RW  -- Rwanda
                      | SA  -- Saudi Arabia
                      | SB  -- Solomon Islands
                      | SC  -- Seychelles
                      | SD  -- Sudan
                      | SE  -- Sweden
                      | SG  -- Singapore
                      | SH  -- Saint Helena, Ascension and Tristan da Cunha
                      | SI  -- Slovenia
                      | SJ  -- Svalbard and Jan Mayen
                      | SK  -- Slovakia
                      | SL  -- Sierra Leone
                      | SM  -- San Marino
                      | SN  -- Senegal
                      | SO  -- Somalia
                      | SR  -- Suriname
                      | SS  -- South Sudan
                      | ST  -- Sao Tome and Principe
                      | SV  -- El Salvador
                      | SX  -- Sint Maarten (Dutch part)
                      | SY  -- Syrian Arab Republic
                      | SZ  -- Swaziland
                      | TC  -- Turks and Caicos Islands
                      | TD  -- Chad
                      | TF  -- French Southern Territories
                      | TG  -- Togo
                      | TH  -- Thailand
                      | TJ  -- Tajikistan
                      | TK  -- Tokelau
                      | TL  -- Timor-Leste
                      | TM  -- Turkmenistan
                      | TN  -- Tunisia
                      | TO  -- Tonga
                      | TR  -- Turkey
                      | TT  -- Trinidad and Tobago
                      | TV  -- Tuvalu
                      | TW  -- Taiwan, Province of China
                      | TZ  -- Tanzania, United Republic of
                      | UA  -- Ukraine
                      | UG  -- Uganda
                      | UM  -- United States Minor Outlying Islands
                      | US  -- United States
                      | UY  -- Uruguay
                      | UZ  -- Uzbekistan
                      | VA  -- Holy See (Vatican City State)
                      | VC  -- Saint Vincent and the Grenadines
                      | VE  -- Venezuela, Bolivarian Republic of
                      | VG  -- Virgin Islands, British
                      | VI  -- Virgin Islands, U.S.
                      | VN  -- Viet Nam
                      | VU  -- Vanuatu
                      | WF  -- Wallis and Futuna
                      | WS  -- Samoa
                      | YE  -- Yemen
                      | YT  -- Mayotte
                      | ZA  -- South Africa
                      | ZM  -- Zambia
                      | ZW  -- Zimbabwe

                        -- Exceptional reservations (2014)
                      | AC  -- Ascension Island
                      | CP  -- Clipperton Island
                      | DG  -- Diego Garcia
                      | EA  -- Ceuta, Melilla
                      | EU  -- European Union
                      | FX  -- France, Metropolitan
                      | IC  -- Canary Islands
                      | SU  -- USSR
                      | TA  -- Tristan da Cunha
                      | UK  -- United Kingdom

                        -- Transitional reservations (2014)
                      | AN  -- Netherlands Antilles
                      | BU  -- Burma
                      | CS  -- Serbia and Montenegro
                      | NT  -- Neutral Zone
                      | SF  -- Finland
                      | TP  -- East Timor
                      | YU  -- Yugoslavia
                      | ZR  -- Zaire

                        -- Indeterminate reservations (2014)
                      | DY  -- Benin
                      | EW  -- Estonia
                      | FL  -- Liechtenstein
                      | JA  -- Jamaica
                      | LF  -- Libya Fezzan
                      | PI  -- Philippines
                      | RA  -- Argentina
                      | RB  -- Bolivia
                      -- | RB  -- Botswana
                      | RC  -- China
                      | RH  -- Haiti
                      | RI  -- Indonesia
                      | RL  -- Lebanon
                      | RM  -- Madagascar
                      | RN  -- Niger
                      | RP  -- Philippines
                      | WG  -- Grenada
                      | WL  -- Saint Lucia
                      | WV  -- Saint Vincent
                      | YV  -- Venezuela

                      -- Missing from ISO 3166-1 alpha-2
                      | QS  -- Somaliland
                      | QN  -- Nagorno-Karabakh
                      | KS  -- Kosovo
                            -- TODO: Note that the code XK is being used by the European Commission, Switzerland, the Deutsche Bundesbank, SWIFT
                      | XT  -- Toll-free telephone number
                      | XS  -- Shared-cost service
                      | XN  -- Inmarsat plc
                      | XP  -- Universal Personal Telecommunications
                      | XG  -- Global Mobile Satellite System
                      | XV  -- International networks (country code)
                      | XD  -- OCHA
                      | XR  -- International premium rate service
                      | XC  -- ITPCS

{-| Prefix digit

    E.g. +1: North American Numbering Plan countries and territories)
-}
type alias PrefixDigit = Int

{-| Country code (includes the prefix digit)

    E.g. +1 242: BS (Bahamas)
-}
type alias CountryCode = Int

--{-| National destitination code
---}
--type NationalDestinationCode = Maybe Int

--{-| Subscriber number
---}
--type SubscriberNumber = Int

--{-| Calling code
---}
--data CallingCode = CallingCode CountryCode NationalDestinationCode

{-| List of country calling codes or dial in code defined by ITU-T recommendations E.123 and E.164

See also [List of country calling codes on wikipedia](http://en.wikipedia.org/wiki/List_of_country_calling_codes)
-}
callingCodes : List (PrefixDigit, List (Maybe (CountryCode, CountryCodeAlpha2)))
callingCodes =
  [ -- +1: North American Numbering Plan countries and territories
    -- CA, US, AG, AI, AS, BB, BM, BS, DM, DO, GD, GU, JM, KN, KY, LC, MP, MS, PR, SX, TC, TT, VC, VG, VI
    ( 1
    , [ Just (1242,BS) -- +1 242: BS
      , Just (1246,BB) -- +1 246: BB
      , Just (1264,AI) -- +1 264: AI
      , Just (1268,AG) -- +1 268: AG
      , Just (1284,VG) -- +1 284: VG

      , Just (1340,VI) -- +1 340: VI
      , Just (1345,KY) -- +1 345: KY

      , Just (1441,BM) -- +1 441: BM
      , Just (1473,GD) -- +1 473: GD

      , Just (1649,TC) -- +1 649: TC
      , Just (1664,MS) -- +1 664: MS
      , Just (1670,MP) -- +1 670: MP
      , Just (1671,GU) -- +1 671: GU
      , Just (1684,AS) -- +1 684: AS

      , Just (1721,SX) -- +1 721: SX
      , Just (1758,LC) -- +1 758: LC
      , Just (1767,DM) -- +1 767: DM
      , Just (1784,VC) -- +1 784: VC
      , Just (1787,PR) -- +1 787: PR

      , Just (1809,DO) -- +1 809: DO
      , Just (1829,DO) -- +1 829: DO
      , Just (1849,DO) -- +1 849: DO
      , Just (1868,TT) -- +1 868: TT
      , Just (1869,KN) -- +1 869: KN
      , Just (1876,JM) -- +1 876: JM

      , Just (1939,PR) -- +1 939: PR
      ]
    )
  , ( 2
    , [ Just (20,EG)  -- +20: EG
      , Nothing       -- +210: --
      , Just (211,SS) -- +211: SS
      , Just (212,MA) -- +212: MA
      , Just (212,EH) -- +212: EH
      , Just (213,DZ) -- +213: DZ
      , Nothing       -- +214: --
      , Nothing       -- +215: --
      , Just (216,TN) -- +216: TN
      , Nothing       -- +217: --
      , Just (218,LY) -- +218: LY
      , Nothing       -- +219: --

      , Just (220,GM) -- +220: GM
      , Just (221,SN) -- +221: SN
      , Just (222,MR) -- +222: MR
      , Just (223,ML) -- +223: ML
      , Just (224,GN) -- +224: GN
      , Just (225,CI) -- +225: CI
      , Just (226,BF) -- +226: BF
      , Just (227,NE) -- +227: NE
      , Just (228,TG) -- +228: TG
      , Just (229,BJ) -- +229: BJ

      , Just (230,MU) -- +230: MU
      , Just (231,LR) -- +231: LR
      , Just (232,SL) -- +232: SL
      , Just (233,GH) -- +233: GH
      , Just (234,NG) -- +234: NG
      , Just (235,TD) -- +235: TD
      , Just (236,CF) -- +236: CF
      , Just (237,CM) -- +237: CM
      , Just (238,CV) -- +238: CV
      , Just (239,ST) -- +239: ST

      , Just (240,GQ) -- +240: GQ
      , Just (241,GA) -- +241: GA
      , Just (242,CG) -- +242: CG
      , Just (243,CD) -- +243: CD
      , Just (244,AO) -- +244: AO
      , Just (245,GW) -- +245: GW
      , Just (246,IO) -- +246: IO
      , Just (247,AC) -- +247: AC
      , Just (248,SC) -- +248: SC
      , Just (249,SD) -- +249: SD

      , Just (250,RW) -- +250: RW
      , Just (251,ET) -- +251: ET
      , Just (252,SO) -- +252: SO
      , Just (252,QS) -- +252: QS
      , Just (253,DJ) -- +253: DJ
      , Just (254,KE) -- +254: KE
      , Just (255,TZ) -- +255: TZ
      , Just (256,UG) -- +256: UG
      , Just (257,BI) -- +257: BI
      , Just (258,MZ) -- +258: MZ
      , Nothing       -- +259: --

      , Just (260,ZM) -- +260: ZM
      , Just (261,MG) -- +261: MG
      , Just (262,RE) -- +262: RE
      , Just (262,YT) -- +262: YT
      , Just (263,ZW) -- +263: ZW
      , Just (264,NA) -- +264: NA
      , Just (265,MW) -- +265: MW
      , Just (266,LS) -- +266: LS
      , Just (267,BW) -- +267: BW
      , Just (268,SZ) -- +268: SZ
      , Just (269,KM) -- +269: KM

      , Just (27,ZA)  -- +27: ZA
      , Nothing       -- +28: --
      , Just (290,SH) -- +290: SH
      , Just (290,TA) -- +290: TA
      , Just (291,ER) -- +291: ER
      , Nothing       -- +292: --
      , Nothing       -- +293: --
      , Nothing       -- +294: --
      , Nothing       -- +295: --
      , Nothing       -- +296: --
      , Just (297,AW) -- +297: AW
      , Just (298,FO) -- +298: FO
      , Just (299,GL) -- +299: GL
      ]
    )
  , ( 3
    , [ Just (30,GR)  -- +30: GR
      , Just (31,NL)  -- +31: NL
      , Just (32,BE)  -- +32: BE
      , Just (33,FR)  -- +33: FR
      , Just (34,ES)  -- +34: ES
      , Just (350,GI) -- +350: GI
      , Just (351,PT) -- +351: PT
      , Just (352,LU) -- +352: LU
      , Just (353,IE) -- +353: IE
      , Just (354,IS) -- +354: IS
      , Just (355,AL) -- +355: AL
      , Just (356,MT) -- +356: MT
      , Just (357,CY) -- +357: CY
      , Just (358,FI) -- +358: FI
      , Just (358,AX) -- +358: AX
      , Just (359,BG) -- +359: BG

      , Just (36,HU)  -- +36: HU
      , Just (370,LT) -- +370: LT
      , Just (371,LV) -- +371: LV
      , Just (372,EE) -- +372: EE
      , Just (373,MD) -- +373: MD
      , Just (374,AM) -- +374: AM
      , Just (374,QN) -- +374: QN
      , Just (375,BY) -- +375: BY
      , Just (376,AD) -- +376: AD
      , Just (377,MC) -- +377: MC
      , Just (378,SM) -- +378: SM
      , Just (379,VA) -- +379: VA

      , Just (380,UA) -- +380: UA
      , Just (381,RS) -- +381: RS
      , Just (382,ME) -- +382: ME
      , Just (383,KS) -- +383: KS -- Same as 384
      , Just (384,KS) -- +384: KS -- Same as 383
      , Just (385,HR) -- +385: HR
      , Just (386,SI) -- +386: SI
      , Just (387,BA) -- +387: BA
      , Just (388,EU) -- +388: EU
      , Just (389,MK) -- +389: MK

      , Just (39,IT)  -- +39: IT
      , Just (39,VA)  -- +39: VA
      ]
    )
  , ( 4
    , [ Just (40,RO)  -- +40: RO
      , Just (41,CH)  -- +41: CH
      , Just (420,CZ) -- +420: CZ
      , Just (421,SK) -- +421: SK
      , Nothing       -- +422: --
      , Just (423,LI) -- +423: LI
      , Nothing       -- +424: --
      , Nothing       -- +425: --
      , Nothing       -- +426: --
      , Nothing       -- +427: --
      , Nothing       -- +428: --
      , Nothing       -- +429: --

      , Just (43,AT)  -- +43: AT
      , Just (44,GB)  -- +44: GB/UK
      , Just (44,GG)  -- +44: GG
      , Just (44,IM)  -- +44: IM
      , Just (44,JE)  -- +44: JE
      , Just (45,DK)  -- +45: DK
      , Just (46,SE)  -- +46: SE
      , Just (47,NO)  -- +47: NO
      , Just (47,SJ)  -- +47: SJ
      , Just (48,PL)  -- +48: PL
      , Just (49,DE)  -- +49: DE
      ]
    )
  , ( 5
    , [ Just (500,FK) -- +500: FK
      , Just (500,GS) -- +500: GS
      , Just (501,BZ) -- +501: BZ
      , Just (502,GT) -- +502: GT
      , Just (503,SV) -- +503: SV
      , Just (504,HN) -- +504: HN
      , Just (505,NI) -- +505: NI
      , Just (506,CR) -- +506: CR
      , Just (507,PA) -- +507: PA
      , Just (508,PM) -- +508: PM
      , Just (509,HT) -- +509: HT

      , Just (51,PE)  -- +51: PE
      , Just (52,MX)  -- +52: MX
      , Just (53,CU)  -- +53: CU
      , Just (54,AR)  -- +54: AR
      , Just (55,BR)  -- +55: BR
      , Just (56,CL)  -- +56: CL
      , Just (57,CO)  -- +57: CO
      , Just (58,VE)  -- +58: VE
      , Just (590,GP) -- +590: GP
      , Just (590,BL) -- +590: BL
      , Just (590,MF) -- +590: MF
      , Just (591,BO) -- +591: BO
      , Just (592,GY) -- +592: GY
      , Just (593,EC) -- +593: EC
      , Just (594,GF) -- +594: GF
      , Just (595,PY) -- +595: PY
      , Just (596,MQ) -- +596: MQ
      , Just (597,SR) -- +597: SR
      , Just (598,UY) -- +598: UY
      , Just (599,BQ) -- +599: BQ
      , Just (599,CW) -- +599: CW
      ]
    )
  , ( 6
    , [ Just (60,MY)  -- +60: MY
      , Just (61,AU)  -- +61: AU
      , Just (61,CX)  -- +61: CX
      , Just (61,CC)  -- +61: CC
      , Just (62,ID)  -- +62: ID
      , Just (63,PH)  -- +63: PH
      , Just (64,NZ)  -- +64: NZ
      , Just (64,PN)  -- +64: PN
      , Just (65,SG)  -- +65: SG
      , Just (66,TH)  -- +66: TH
      , Just (670,TL) -- +670: TL
      , Nothing       -- +671: --
      , Just (672,NF) -- +672: NF
      , Just (672,AQ) -- +672: AQ
      , Just (673,BN) -- +673: BN
      , Just (674,NR) -- +674: NR
      , Just (675,PG) -- +675: PG
      , Just (676,TO) -- +676: TO
      , Just (677,SB) -- +677: SB
      , Just (678,VU) -- +678: VU
      , Just (679,FJ) -- +679: FJ

      , Just (680,PW) -- +680: PW
      , Just (681,WF) -- +681: WF
      , Just (682,CK) -- +682: CK
      , Just (683,NU) -- +683: NU
      , Nothing       -- +684: --
      , Just (685,WS) -- +685: WS
      , Just (686,KI) -- +686: KI
      , Just (687,NC) -- +687: NC
      , Just (688,TV) -- +688: TV
      , Just (689,PF) -- +689: PF

      , Just (690,TK) -- +690: TK
      , Just (691,FM) -- +691: FM
      , Just (692,MH) -- +692: MH
      , Nothing       -- +693: --
      , Nothing       -- +694: --
      , Nothing       -- +695: --
      , Nothing       -- +696: --
      , Nothing       -- +697: --
      , Nothing       -- +698: --
      , Nothing       -- +699: --
      ]
    )
  , ( 7
    , [ Just (7,RU)   -- +7: RU
      , Just (7,KZ)   -- +7: KZ
      , Just (73,RU)  -- +7 3: RU
      , Just (74,RU)  -- +7 4: RU
      , Just (76,KZ)  -- +7 6: KZ
      , Just (77,KZ)  -- +7 7: KZ
      , Just (78,RU)  -- +7 8: RU
      , Nothing       -- +7 840: Abkhazia
      , Just (79,RU)  -- +7 9: RU
      , Nothing       -- +7 940: Abkhazia
      ]
    )
  , ( 8
    , [ Just (800,XT) -- +800: XT
      , Nothing       -- +801: --
      , Nothing       -- +802: --
      , Nothing       -- +803: --
      , Nothing       -- +804: --
      , Nothing       -- +805: --
      , Nothing       -- +806: --
      , Nothing       -- +807: --
      , Just (808,XS) -- +808: XS
      , Nothing       -- +809: --

      , Just (81,JP)  -- +81: JP
      , Just (82,KR)  -- +82: KR
      , Nothing       -- +83: --
      , Just (84,VN)  -- +84: VN
      , Just (850,KP) -- +850: KP
      , Nothing       -- +851: --
      , Just (852,HK) -- +852: HK
      , Just (853,MO) -- +853: MO
      , Nothing       -- +854: --
      , Just (855,KH) -- +855: KH
      , Just (856,LA) -- +856: LA
      , Nothing       -- +857: --
      , Nothing       -- +858: --
      , Nothing       -- +859: --

      , Just (86,CN)  -- +86: CN
      , Just (870,XN) -- +870: XN
      , Nothing       -- +871: --
      , Nothing       -- +872: --
      , Nothing       -- +873: --
      , Nothing       -- +874: --
      , Nothing       -- +875: --
      , Nothing       -- +876: --
      , Nothing       -- +877: --
      , Just (878,XP) -- +878: XP
      , Nothing       -- +879: --

      , Just (880,BD) -- +880: BD
      , Just (881,XG) -- +881: XG
      , Just (882,XV) -- +882: XV
      , Just (883,XV) -- +883: XV
      , Nothing       -- +884: --
      , Nothing       -- +885: --
      , Just (886,TW) -- +886: TW
      , Nothing       -- +887: --
      , Just (888,XD) -- +888: XD
      , Nothing       -- +889: --

      , Nothing       -- +89: --
      ]
    )
  , ( 9
    , [ Just (90,TR)  -- +90: TR
      , Just (91,IN)  -- +91: IN
      , Just (92,PK)  -- +92: PK
      , Just (93,AF)  -- +93: AF
      , Just (94,LK)  -- +94: LK
      , Just (95,MM)  -- +95: MM
      , Just (960,MV) -- +960: MV
      , Just (961,LB) -- +961: LB
      , Just (962,JO) -- +962: JO
      , Just (963,SY) -- +963: SY
      , Just (964,IQ) -- +964: IQ
      , Just (965,KW) -- +965: KW
      , Just (966,SA) -- +966: SA
      , Just (967,YE) -- +967: YE
      , Just (968,OM) -- +968: OM
      , Nothing       -- +969: --

      , Just (970,PS) -- +970: PS
      , Just (971,AE) -- +971: AE
      , Just (972,IL) -- +972: IL
      , Just (973,BH) -- +973: BH
      , Just (974,QA) -- +974: QA
      , Just (975,BT) -- +975: BT
      , Just (976,MN) -- +976: MN
      , Just (977,NP) -- +977: NP
      , Nothing       -- +978: --
      , Just (979,XR) -- +979: XR

      , Just (98,IR)  -- +98: IR
      , Nothing       -- +990: --
      , Just (991,XC) -- +991: XC
      , Just (992,TJ) -- +992: TJ
      , Just (993,TM) -- +993: TM
      , Just (994,AZ) -- +994: AZ
      , Just (995,GE) -- +995: GE
      , Just (996,KG) -- +996: KG
      , Nothing       -- +997: --
      , Just (998,UZ) -- +998: UZ
      , Nothing       -- +999: --
      ]
    )
  ]

--reformatNumber : String -> String
--reformatNumber pn = ""

--formatPhoneNumber : Content -> Content
--formatPhoneNumber content =
--  let string' = reformatNumber content.string
--      len = String.length content.string
--  in
--    { string = string'
--    , selection = { start = min len content.selection.end
--                  , end = min len content.selection.start
--                  , direction = content.selection.direction
--                  }
--    }


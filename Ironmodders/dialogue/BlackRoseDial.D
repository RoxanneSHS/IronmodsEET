BEGIN ~BW11CRE1~

IF ~NumTimesTalkedTo(0)
Global("BW11TurnedMeDownMageSembia","GLOBAL",0)~
THEN BEGIN BW11A
SAY @0 
	IF ~~ THEN REPLY @1 GOTO BW11A1
	IF ~~ THEN REPLY @2 GOTO BW11A2
	IF ~~ THEN REPLY @3 GOTO BW11A3
	IF ~~ THEN REPLY @4 GOTO ENDDLG
END

IF ~~ THEN BEGIN BW11A3
SAY @5 
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ENDDLG
SAY @6 
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BW11A1
SAY @7 
	IF ~~ THEN REPLY @8 GOTO BW11A1A
	IF ~~ THEN REPLY @9 GOTO BW11A3
	IF ~~ THEN REPLY @10 GOTO BW11A1A
	IF ~~ THEN REPLY @11 GOTO BW11A1D
	IF ~~ THEN REPLY @12 GOTO ENDDLG
END

IF ~~ THEN BEGIN BW11A1D
SAY @13 
	IF ~~ THEN GOTO BW11A1DTRADE
END

IF ~~ THEN BEGIN BW11A1A
SAY @14 
	IF ~~ THEN GOTO BW11A1DTRADE
END

IF ~~ THEN BEGIN BW11A1DTRADE
SAY @15 
	IF ~~ THEN REPLY @16 GOTO BW11A21
	IF ~~ THEN REPLY @17 GOTO BW11A22
	IF ~~ THEN REPLY @18 GOTO BW11A23
	IF ~~ THEN REPLY @19 GOTO BW11A24
	IF ~~ THEN REPLY @20 GOTO BW11A25
	IF ~~ THEN REPLY @21 GOTO ENDDLG
END

IF ~~ THEN BEGIN BW11A2
SAY @22 
	IF ~~ THEN REPLY @16 GOTO BW11A21
	IF ~~ THEN REPLY @17 GOTO BW11A22
	IF ~~ THEN REPLY @18 GOTO BW11A23
	IF ~~ THEN REPLY @19 GOTO BW11A24
	IF ~~ THEN REPLY @20 GOTO BW11A25
	IF ~~ THEN REPLY @21 GOTO ENDDLG
END

IF ~~ THEN BEGIN BW11A24
SAY @23 
	IF ~~ THEN REPLY @24 GOTO BW11A21
	IF ~~ THEN REPLY @19 GOTO BW11A24
	IF ~~ THEN REPLY @20 GOTO BW11A25
	IF ~~ THEN REPLY @25 GOTO BW11A23
	IF ~~ THEN REPLY @21 GOTO ENDDLG
END

IF ~~ THEN BEGIN BW11A25
SAY @26 
	IF ~~ THEN REPLY @24 GOTO BW11A21
	IF ~~ THEN REPLY @27 GOTO BW11A22
	IF ~~ THEN REPLY @25 GOTO BW11A23
	IF ~~ THEN REPLY @21 GOTO ENDDLG
END

IF ~~ THEN BEGIN BW11A22
SAY @28 
	IF ~~ THEN REPLY @24 GOTO BW11A21
	IF ~~ THEN REPLY @27 GOTO BW11A22
	IF ~~ THEN REPLY @25 GOTO BW11A23
	IF ~~ THEN REPLY @21 GOTO ENDDLG
END

IF ~~ THEN BEGIN BW11A23
SAY @29 
	IF ~~ THEN GOTO BW11A21
END

IF ~~ THEN BEGIN BW11A21
SAY @30 
	IF ~~ THEN REPLY @31 GOTO ACCEPT
	IF ~~ THEN REPLY @32 GOTO ACCEPT
	IF ~~ THEN REPLY @33 GOTO NOTACCEPT
	IF ~~ THEN REPLY @34 GOTO NOTACCEPT
	IF ~~ THEN REPLY @35 GOTO NOTACCEPT
END

IF ~~ THEN BEGIN ACCEPT
SAY @36 
	IF ~~ THEN GOTO ACCEPT2
END

IF ~~ THEN BEGIN ACCEPT2
SAY @37 
	IF ~~ THEN DO ~SetGlobal("BW11TurnedMeDownMageSembia","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN NOTACCEPT
SAY @38 
	IF ~~ THEN DO ~SetGlobal("BW11TurnedMeDownMageSembia","GLOBAL",1)~ EXIT
END


IF ~!NumTimesTalkedTo(0)
Global("BW11TurnedMeDownMageSembia","GLOBAL",0)~
THEN BEGIN TELLTALE1
SAY @39 
	IF ~~ THEN REPLY @1 GOTO BW11A1
	IF ~~ THEN REPLY @2 GOTO BW11A2
	IF ~~ THEN REPLY @3 GOTO BW11A3
	IF ~~ THEN REPLY @4 GOTO ENDDLG
END

IF ~Global("BW11TurnedMeDownMageSembia","GLOBAL",1)~ THEN BEGIN TELLTALE2
SAY @40 
	IF ~~ THEN EXIT
END


IF ~!PartyHasItem("STAF10")
Global("BW11TurnedMeDownMageSembia","GLOBAL",2)~
THEN BEGIN TELLTALE3
SAY @41 
	IF ~~ THEN EXIT
END

//------------------------------------------

IF ~PartyHasItem("STAF10")
Global("BW11TurnedMeDownMageSembia","GLOBAL",2)~
THEN BEGIN TELLTALEH
SAY @42 
	IF ~~ THEN REPLY @43 GOTO CHEATMAGE1
	IF ~~ THEN REPLY @44 GOTO CHEATMAGE2
	IF ~~ THEN REPLY @45 EXIT
END

IF ~~ THEN BEGIN CHEATMAGE2
SAY @46 
	IF ~~ THEN REPLY @43 GOTO CHEATMAGE1
	IF ~~ THEN REPLY @45 EXIT
END

IF ~~ THEN BEGIN CHEATMAGE1
SAY @47 
	IF ~~ THEN GOTO CHEATPART2
END

IF ~~ THEN BEGIN CHEATPART2
SAY @48 
	IF ~~ THEN GOTO CHEATPART3
END

IF ~~ THEN BEGIN CHEATPART3
SAY @49 
	IF ~~ THEN DO ~SetGlobal("BW11WWII","GLOBAL",1)
TakePartyItem("STAF10")
DropItem("BW11CRE1",[882.529])
ForceSpell(Myself,WIZARD_DIMENSION_DOOR)
DestroySelf()~ EXIT
END

BEGIN ~BW11CRE2~

IF ~True()~ THEN BEGIN BWMNS1
SAY @50
	IF ~~ THEN REPLY @51 GOTO BWMNS2
	IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @52 GOTO BWMNS3
	IF ~~ THEN REPLY @53 GOTO BWMNS4
	IF ~PartyHasItem("BW11CRE1")
Global("BW11WWII","GLOBAL",1)
~ THEN REPLY @54 GOTO BWMNS5
END

IF ~~ THEN BEGIN BWMNS4
SAY @55
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BWMNS2
SAY @56
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BWMNS3
SAY @57
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BWMNS5
SAY @58
	IF ~~ THEN GOTO BWMNS6
END

IF ~~ THEN BEGIN BWMNS6
SAY @59
	IF ~~ THEN GOTO BWMNS7
END

IF ~~ THEN BEGIN BWMNS7
SAY @60
	IF ~~ THEN REPLY @61 GOTO HEAR1
END

IF ~~ THEN BEGIN HEAR1
SAY @62
	IF ~~ THEN REPLY @63 GOTO KIOL
	IF ~~ THEN REPLY @64 GOTO KIOL
END

IF ~~ THEN BEGIN KIOL
SAY @65
	IF ~~ THEN GOTO KIOL2
END

IF ~~ THEN BEGIN KIOL2
SAY @66
	IF ~~ THEN GOTO KIOL3
END

IF ~~ THEN BEGIN KIOL3
SAY @67
	IF ~~ THEN DO ~SetGlobal("BW11WWII","GLOBAL",2)~ EXIT
END


BEGIN ~BW11CRE3~

IF ~Global("BW11AskedCre","GLOBAL",0)~ THEN BEGIN KIOLO
SAY @68 
	IF ~~ THEN REPLY @69 GOTO KIOLO1
	IF ~~ THEN REPLY @70 GOTO KIOLO2
	IF ~~ THEN REPLY @71 GOTO KIOLO3
	IF ~~ THEN REPLY @72 GOTO BYEBYE
END

IF ~~ THEN BEGIN KIOLO1
SAY @73 
	IF ~~ THEN REPLY @74 GOTO KIOLON1
	IF ~~ THEN REPLY @75 GOTO KIOLO2
	IF ~~ THEN REPLY @76 GOTO BYEBYE
END

IF ~~ THEN BEGIN KIOLO3
SAY @77 
	IF ~~ THEN REPLY @74 GOTO KIOLON1
	IF ~~ THEN REPLY @75 GOTO KIOLO2
	IF ~~ THEN REPLY @76 GOTO BYEBYE
END


IF ~~ THEN BEGIN KIOLO2
SAY @78 
	IF ~~ THEN REPLY @79 GOTO WORK1
	IF ~~ THEN REPLY @80 GOTO WORK1
	IF ~~ THEN REPLY @81 GOTO WORK1
END

IF ~~ THEN BEGIN BYEBYE
SAY @82 
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KIOLON1
SAY @83 
	IF ~~ THEN REPLY @79 GOTO WORK1
	IF ~~ THEN REPLY @80 GOTO WORK1
	IF ~~ THEN REPLY @81 GOTO WORK1
END

IF ~~ THEN BEGIN WORK1
SAY @84 
	IF ~~ THEN REPLY @85 GOTO AFTERWORK
	IF ~~ THEN REPLY @86 GOTO AFTERWORK
	IF ~~ THEN REPLY @87 GOTO AFTERWORK2
END

IF ~~ THEN BEGIN AFTERWORK2
SAY @88 
	IF ~~ THEN GOTO POINT
END

IF ~~ THEN BEGIN AFTERWORK
SAY @89 
	IF ~PartyGoldGT(499)~ THEN REPLY @90 DO ~TakePartyGold(500)~ GOTO 500GP
	IF ~PartyGoldGT(249)~ THEN REPLY @91 DO ~TakePartyGold(250)~  GOTO 250GP
	IF ~PartyGoldGT(124)~ THEN REPLY @92 DO ~TakePartyGold(125)~  GOTO 125GP
	IF ~PartyGoldGT(49)~ THEN REPLY @93 DO ~TakePartyGold(50)~  GOTO 50GP
	IF ~PartyGoldGT(24)~ THEN REPLY @94 DO ~TakePartyGold(25)~  GOTO 25GP
	IF ~~ THEN REPLY @87 GOTO AFTERWORK2
END

IF ~~ THEN BEGIN 500GP
SAY @95
	IF ~~ THEN GOTO POINT
END

IF ~~ THEN BEGIN 250GP
SAY @96
	IF ~~ THEN GOTO POINT
END

IF ~~ THEN BEGIN 125GP
SAY @97
	IF ~~ THEN GOTO POINT
END

IF ~~ THEN BEGIN 50GP
SAY @98
	IF ~~ THEN GOTO POINT
END

IF ~~ THEN BEGIN 25GP
SAY @99
	IF ~~ THEN GOTO POINT
END

IF ~~ THEN BEGIN POINT
SAY @100 
	IF ~~ THEN GOTO POINT2
END

IF ~~ THEN BEGIN POINT2
SAY @101 
	IF ~~ THEN GOTO POINT4
END

IF ~~ THEN BEGIN POINT4
SAY @102 
	IF ~~ THEN DO ~SetGlobal("BW11SHENSEWER","GLOBAL",1)~ GOTO POINT3
END

IF ~~ THEN BEGIN POINT3
SAY @103 
	IF ~~ THEN DO ~EscapeArea()~ EXIT
END


BEGIN ~BW11CRE4~

IF ~Global("BW11HELPUS2","GLOBAL",0)~ THEN BEGIN GRUN
SAY @104
	IF ~~ THEN REPLY @105 GOTO STR1
	IF ~~ THEN REPLY @106 GOTO STR2
	IF ~~ THEN REPLY @107 GOTO BYEBYE
END

IF ~~ THEN BEGIN STR1
SAY @108
	IF ~~ THEN REPLY @109 GOTO STR4
	IF ~~ THEN REPLY @110 GOTO STR2
	IF ~~ THEN REPLY @111 GOTO STR3
	IF ~~ THEN REPLY @112	 GOTO BYEBYE
END

IF ~~ THEN BEGIN STR4
SAY @113
	IF ~~ THEN REPLY @114 GOTO STR5
	IF ~~ THEN REPLY @115 GOTO STR2
	IF ~~ THEN REPLY @116 GOTO BYEBYE
END

IF ~~ THEN BEGIN STR3
SAY @117
	IF ~~ THEN REPLY @114 GOTO STR5
	IF ~~ THEN REPLY @115 GOTO STR2
	IF ~~ THEN REPLY @118 GOTO BYEBYE
END

IF ~~ THEN BEGIN BYEBYE
SAY @119
	IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN STR2
SAY @120
	IF ~~ THEN REPLY @114 GOTO STR5
	IF ~~ THEN REPLY @116 GOTO BYEBYE
END

IF ~~ THEN BEGIN STR5
SAY @121
	IF ~~ THEN REPLY @122 GOTO FR1
	IF ~~ THEN REPLY @123 GOTO FR2
	IF ~~ THEN REPLY @124 GOTO FR3
END


IF ~~ THEN BEGIN FR3
SAY @125
	IF ~~ THEN GOTO ENDDLG
END

IF ~~ THEN BEGIN FR2
SAY @126
	IF ~~ THEN GOTO ENDDLG
END

IF ~~ THEN BEGIN FR1
SAY @127
	IF ~~ THEN GOTO ENDDLG
END

IF ~~ THEN BEGIN ENDDLG
SAY @128
	IF ~~ THEN GOTO ENDDLG2
END

IF ~~ THEN BEGIN ENDDLG2
SAY @129
	IF ~~ THEN DO ~SetGlobal("BW11HELPUS2","GLOBAL",1)
EscapeArea()~ EXIT
END


BEGIN ~BW11CRE5~

IF ~Global("BW11TalkedOnce","GLOBAL",0)~ THEN BEGIN MAIN1
SAY @130
	IF ~~ THEN GOTO MAIN2
END

IF ~~ THEN BEGIN MAIN2
SAY @131
	IF ~~ THEN DO ~SetGlobal("BW11TalkedOnce","GLOBAL",1)
Enemy()~ EXIT
END

BEGIN ~BW11CRE6~

IF ~True()~ THEN BEGIN FLATTERY
SAY @132
	IF ~~ THEN DO ~Enemy()~ EXIT
END

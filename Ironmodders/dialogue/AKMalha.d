BEGIN AKMalha

IF ~Global("AKMhelp","GLOBAL",0)~ THEN BEGIN 0
SAY @0 
IF ~~ THEN EXIT
END

IF ~Global("AKMhelp","GLOBAL",1) Global("AKMend","GLOBAL",0)~ THEN BEGIN 1
SAY @1
IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 2
SAY @3
IF ~~ THEN REPLY @4 GOTO 3
IF ~~ THEN REPLY @5 GOTO 4
IF ~~ THEN REPLY @6 GOTO 4
IF ~~ THEN REPLY @7 GOTO 3
END

IF ~~ THEN BEGIN 3
SAY @8
IF ~~ THEN REPLY @9 GOTO 5
IF ~~ THEN REPLY @10 GOTO 5
END

IF ~~ THEN BEGIN 4
SAY @11
IF ~~ THEN DO ~ Enemy() 
		Attack(LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 5
SAY @12
IF ~~ THEN REPLY @13 GOTO 4
IF ~~ THEN REPLY @14 GOTO 6
END

IF ~~ THEN BEGIN 6
SAY @15
IF ~~ THEN REPLY @16 
	DO ~SetGlobal("AKMend","GLOBAL",1)~ EXIT
END

IF ~Global("AKMend","GLOBAL",1)~ THEN BEGIN 7
SAY @17
IF ~~ THEN EXTERN ~AKMmona~ 20
END

IF ~Global("AKMend","GLOBAL",3)~ THEN BEGIN 8
SAY @18
IF ~~ THEN DO ~ AddexperienceParty(5000)
		EscapeArea()~ EXIT
END

BEGIN AKMmona

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 10
SAY @19 
IF ~~ THEN REPLY @20 DO ~SetGlobal("AKMtalk","GLOBAL",1)~ GOTO 11
IF ~~ THEN REPLY @21 DO ~SetGlobal("AKMtalk","GLOBAL",1)~ GOTO 12
IF ~~ THEN REPLY @22 DO ~SetGlobal("AKMtalk","GLOBAL",1)~ GOTO 13
END

IF ~~ THEN BEGIN 11
SAY @23
IF ~~ THEN REPLY @24 GOTO 14
IF ~~ THEN REPLY @25 GOTO 15
IF ~~ THEN REPLY @26 GOTO 14
END

IF ~~ THEN BEGIN 12
SAY @27 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13
SAY @28
IF ~~ THEN REPLY @29 GOTO 12
IF ~~ THEN REPLY @30 GOTO 14
END

IF ~~ THEN BEGIN 14
SAY @31
IF ~~ THEN REPLY @32 DO ~SetGlobal("AKMstory","GLOBAL",1)~ GOTO 16
IF ~~ THEN REPLY @33 DO ~SetGlobal("AKMstory","GLOBAL",1)~ GOTO 17
IF ~~ THEN REPLY @34 DO ~SetGlobal("AKMstory","GLOBAL",1)~ GOTO 12
END

IF ~~ THEN BEGIN 15
SAY @35 
IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 16
SAY @36
IF ~~ THEN REPLY @37 
	DO ~ SetGlobal("AKMhelp","GLOBAL",1)
	     CreateCreatureObjectOffScreen("AKMalha",Player1,0,0,0)
	     ActionOverride("AKMalha",MoveBetweenAreas("AR5004",[441.357],3)) ~ EXIT
IF ~~ THEN REPLY @38 GOTO 12
END

IF ~~ THEN BEGIN 17
SAY @39
IF ~~ THEN REPLY @40 GOTO 16
IF ~~ THEN REPLY @41 GOTO 12
END


IF ~Global("AKMtalk","GLOBAL",1)
    Global("AKMend","GLOBAL",0)~ THEN BEGIN 18
SAY @42
IF ~~ THEN EXIT
END

IF ~Global("AKMend","GLOBAL",1)~ THEN BEGIN 19
SAY @43
IF ~~ THEN EXTERN ~AKMalha~ 7
END

IF ~~ THEN BEGIN 20
SAY @44
IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
SAY @45
IF ~~ THEN DO ~ SetGlobal("AKMend","GLOBAL",2) ~EXIT
END
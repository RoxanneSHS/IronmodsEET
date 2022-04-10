BEGIN SC#I5Gh
BEGIN SC#I5M
BEGIN SC#I5Gor
BEGIN SC#I5Sar
BEGIN SC#I5Dri
BEGIN SC#I5Jon
BEGIN SC#I5Elm

/////////////////////////////////////////////////////////////////////////////////////

APPEND SC#I5Gh
IF ~Global("SC#I5Plot","GLOBAL",11)~ Gh_2
SAY @0
++ @1 + Gh_3
END

IF ~~ Gh_3
SAY @2
= @3
= @4
IF ~~ THEN DO ~SetGlobal("SC#I5Plot","GLOBAL",12) ClearAllActions() StartCutSceneMode() StartCutScene("SC#I5C11")~
SOLVED_JOURNAL @5
EXIT
END

IF ~NumTimesTalkedTo(0)~ Gh_0
SAY @6
++ @7 + Gh_1
++ @8 + Gh_1
END

IF ~~ Gh_1
SAY @9
IF ~~ THEN DO ~SetGlobal("SC#I5Plot","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("SC#I5C1")~
EXIT
END

END

////////////////////////////////////////////////////////////////////////////////////

APPEND SC#I5M
IF ~NumTimesTalkedTo(0)~ M_0
SAY @10
++ @11 + M_1_0
++ @12 + M_1_1
++ @13 + M_1_2
END

IF ~~ M_1_0
SAY @14
++ @15 + M_1_1
++ @13 + M_1_2
END

IF ~~ M_1_1
SAY @16
++ @13 + M_1_2
END

IF ~~ M_1_2
SAY @17
IF ~~ THEN DO ~SetGlobal("SC#I5Plot","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("SC#I5C2")~
EXIT
END

////////
IF ~Global("SC#I5Plot","GLOBAL",3)~ M_2
SAY @18
= @19
++ @20 + M_3
END

IF ~~ M_3
SAY @21
= @22
= @23
= @24
= @25
IF ~~ THEN DO ~SetGlobal("SC#I5Plot","GLOBAL",4) ClearAllActions() StartCutSceneMode() StartCutScene("SC#I5C3")~
EXIT
END

////////
IF ~Global("SC#I5Plot","GLOBAL",4)~ M_4
SAY @26
= @27
++ @28 + M_5_1
END

IF ~~ M_5_1
SAY @29
= @30
++ @31 + M_5
END

IF ~~ M_5
SAY @32
IF ~~ THEN DO ~SetGlobal("SC#I5Plot","GLOBAL",5) ClearAllActions() StartCutSceneMode() StartCutScene("SC#I5C4")~
EXIT
END

///////////
IF ~Global("SC#I5Plot","GLOBAL",5)~ M_6
SAY @33
= @34
= @35
= @36
++ @37 + M_7
END

IF ~~ M_7
SAY @38
IF ~~ THEN DO ~SetGlobal("SC#I5Plot","GLOBAL",6) ClearAllActions() StartCutSceneMode() StartCutScene("SC#I5C5")~
EXIT
END

///////////
IF ~Global("SC#I5Plot","GLOBAL",6)~ M_8
SAY @39
= @40
= @41
= @42
++ @43 + M_9
END

IF ~~ M_9
SAY @44
IF ~~ THEN DO ~SetGlobal("SC#I5Plot","GLOBAL",7) ClearAllActions() StartCutSceneMode() StartCutScene("SC#I5C6")~
EXIT
END

///////////
IF ~Global("SC#I5Plot","GLOBAL",7)~ M_10
SAY @45
= @46
++ @47 + M_11
END

IF ~~ M_11
SAY @48
= @49
= @50
IF ~~ THEN DO ~SetGlobal("SC#I5Plot","GLOBAL",8) ClearAllActions() StartCutSceneMode() StartCutScene("SC#I5C7")~
EXIT
END

///////////
IF ~Global("SC#I5Plot","GLOBAL",8)~ M_12
SAY @51
= @52
= @53
= @54
= @55
++ @56 + M_13
END

IF ~~ M_13
SAY @57
= @58
= @59
= @60
IF ~~ THEN DO ~SetGlobal("SC#I5Plot","GLOBAL",9) ClearAllActions() StartCutSceneMode() StartCutScene("SC#I5C8")~
EXIT
END

///////////
IF ~Global("SC#I5Plot","GLOBAL",10)~ M_16
SAY @61
++ @62 + M_17
END

IF ~~ M_17
SAY @63
IF ~~ THEN DO ~SetGlobal("SC#I5Plot","GLOBAL",11) ClearAllActions() StartCutSceneMode() StartCutScene("SC#I5C10")~
EXIT
END

END

///////////
CHAIN IF ~Global("SC#I5Plot","GLOBAL",9)~ THEN SC#I5M M_14
@64
= @65
= @66
== SC#I5Gor @67
== SC#I5Sar @68
== SC#I5Elm @69
== SC#I5Dri @70
== SC#I5Jon @71
== SC#I5M @72
= @73
= @74 DO ~SetGlobal("SC#I5Plot","GLOBAL",10) ClearAllActions() StartCutSceneMode() StartCutScene("SC#I5C9")~
EXIT

APPEND MinscJ
IF ~Global("SC#I5Plot","GLOBAL",12)~ Min1
SAY @75
++ @76 + Min2
END

IF ~~ Min2
SAY @77
IF ~~ THEN DO ~SetGlobal("SC#I5Plot","GLOBAL",13)~
EXIT
END

END

BEGIN SUMIST


IF ~NumTimesTalkedTo(0)~ THEN BEGIN SuMist1
SAY @0
++ @1 + SuMist2
IF ~!InParty("Anomen") !InParty("Jaheira") !InParty("Sarevok") !InParty("Valygar") !InParty("Aerie")~ THEN REPLY @2 + SuMist2
IF ~!InParty("Anomen") !InParty("Jaheira") !InParty("Sarevok") !InParty("Valygar") InParty("Aerie") !Dead("Aerie") !StateCheck("Aerie",STATE_SLEEPING)~ THEN REPLY @3 EXTERN AERIE25J AerieSez
IF ~!InParty("Anomen") !InParty("Jaheira") !InParty("Sarevok") InParty("Valygar") !Dead("Valygar") !StateCheck("Valygar",STATE_SLEEPING)~ THEN REPLY @3 EXTERN VALYG25J ValSez
IF ~!InParty("Anomen") !InParty("Jaheira") InParty("Sarevok") !Dead("Sarevok") !StateCheck("Sarevok",STATE_SLEEPING)~ THEN REPLY @3 EXTERN SAREV25J SarrySez
IF ~!InParty("Anomen") InParty("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",STATE_SLEEPING)~ THEN REPLY @3 EXTERN JAHEI25J JaheiraSez
IF ~InParty("Anomen") !Dead("Anomen") !StateCheck("Anomen",STATE_SLEEPING)~ THEN REPLY @3 EXTERN ANOME25J AnoSez
++ @4 + SuMist2
END

IF ~~ THEN BEGIN SuMist2
SAY @5
++ @6 + SuMist3
++ @7 + SuMist3
++ @8 + SuMist3
++ @9 + SuMist3
END

IF ~~ THEN BEGIN SuMist3
SAY @10 
=
@11
=
@12 
++ @13 + SuMistDeny
++ @14 + SuMistRelease
++ @15 + SuMistMockery
++ @16 + SuMistRegrets
++ @17 + SuMistInstinct
++ @18 + SuMistDeny
END

IF ~~ THEN BEGIN SuMistDeny
SAY @19
=
@20
IF ~~ THEN DO ~AddexperienceParty(6000)
DialogInterrupt(FALSE)
ForceSpell(Myself,DRYAD_TELEPORT)~ 
SOLVED_JOURNAL @21 EXIT
END

IF ~~ THEN BEGIN SuMistRelease
SAY @22
=
@23
=
@24
IF ~!InParty("Sarevok")~ THEN REPLY @25 + SuMistSuckah
IF ~InParty("Sarevok") !Dead("Sarevok") !StateCheck("Sarevok",STATE_SLEEPING)~ THEN REPLY @26 EXTERN SAREV25J SarrySentimental
++ @27 + SuMistDeny
IF ~Global("JaheiraReleased","GLOBAL",0) !InParty("Jaheira")~ THEN REPLY @28 + SuMistSuckah
IF ~!InParty("Imoen2")~ THEN REPLY @29 + SuMistSuckah
IF ~InParty("Keldorn")~ THEN REPLY @30 EXTERN KELDO25J KeldornIsSoCool
++ @31 + SuMistDeny
IF ~Global("WorkingForBodhi","GLOBAL",1)~ THEN REPLY @32 + SuMistSuckah
IF ~!Global("WorkingForBodhi","GLOBAL",1)~ THEN REPLY @33 + SuMistSuckah
IF ~Global("SuMistInstinct", "GLOBAL", 0)~ THEN REPLY @34 + SuMistInstinct
IF ~Global("JanMove","GLOBAL",1) Global("JanFree","GLOBAL",0) !InParty("Jan")~ THEN REPLY @35 + SuMistSuckah
IF ~ Global("JanMove","GLOBAL",1) Global("JanFree","GLOBAL",0) Global("SuMistMock", "GLOBAL", 0) !InParty("Jan")~ THEN REPLY @36 + SuMistMockery
IF ~Global("GrovePoisoned","GLOBAL",1)~ THEN REPLY @37 + SuMistSuckah
++ @38 + SuMistDeny
IF ~GlobalGT("ParentsUpset","GLOBAL",0) Global("SuMistMock", "GLOBAL", 0)~ THEN REPLY @39 + SuMistMockery
END

IF ~~ THEN BEGIN SuMistMockery
SAY @40
=
@41
++ @42 + SuMistDeny
++ @43 + SuMistDeny
++ @44 DO ~SetGlobal("SuMistMock", "GLOBAL", 1)~ GOTO SuMistRelease
END

IF ~~ THEN BEGIN SuMistInstinct
SAY @45
=
@46
++ @42 + SuMistDeny
++ @43 + SuMistDeny
++ @44 DO ~SetGlobal("SuMistInstinct", "GLOBAL", 1)~ GOTO SuMistRelease
END

IF ~~ THEN BEGIN SuMistRegrets
SAY @47
=
@48
++ @42 + SuMistDeny
++ @43 + SuMistDeny
++ @44 + SuMistRelease
END

IF ~~ THEN BEGIN SuMistSuckah
SAY @49
=
@50
IF ~~ THEN DO ~SetGlobal("SuMistPCPlayedASuckah", "GLOBAL", 1)
AddexperienceParty(6000)
DialogInterrupt(FALSE)
ForceSpell(Myself,DRYAD_TELEPORT)~ SOLVED_JOURNAL @51 EXIT
END

APPEND AERIE25J

IF ~~ THEN BEGIN AerieSez
SAY @52
IF ~~ THEN EXTERN SUMIST SuMist2
END

END

APPEND VALYG25J

IF ~~ THEN BEGIN ValSez
SAY @53
++ @54 + ValSez2
++ @55 + ValSez3
++ @56 + ValSez4
END

IF ~~ THEN BEGIN ValSez2
SAY @57
IF ~~ THEN EXTERN SUMIST SuMist2
END

IF ~~ THEN BEGIN ValSez3
SAY @58
IF ~~ THEN EXTERN SUMIST SuMist2
END

IF ~~ THEN BEGIN ValSez4
SAY @59
=
@60
IF ~~ THEN EXTERN SUMIST SuMist2
END

END

APPEND SAREV25J

IF ~~ THEN BEGIN SarrySez
SAY @61
++ @62 + SarrySez2
++ @63 + SarrySez2
END

IF ~~ THEN BEGIN SarrySez2
SAY @64
=
@65
IF ~~ THEN EXTERN SUMIST SuMist2
END

IF ~~ THEN BEGIN SarrySentimental
SAY @66
IF ~~ THEN EXTERN SUMIST SuMistSuckah
END

END

APPEND JAHEI25J

IF ~~ THEN BEGIN JaheiraSez
SAY @67
++ @68 + JaheiraSez2
++ @69 + JaheiraSez3
END

IF ~~ THEN BEGIN JaheiraSez2
SAY @70
=
@71
IF ~~ THEN EXTERN SUMIST SuMist2
END

IF ~~ THEN BEGIN JaheiraSez3
SAY @72
IF ~~ THEN EXTERN SUMIST SuMist2
END

END

APPEND ANOME25J

IF ~~ THEN BEGIN AnoSez
SAY @73
=
@74
IF ~~ THEN EXTERN SUMIST SuMist2
END

END

APPEND KELDO25J

IF ~~ THEN BEGIN KeldornIsSoCool
SAY @75
=
@76
++ @77 EXTERN SUMIST SuMistDeny
++ @78 EXTERN SUMIST SuMistSuckah
END

END
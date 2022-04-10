BEGIN SUFEBOOK

IF ~NumTimesTalkedTo(0)~ THEN BEGIN intro
SAY @0
=
@1
=
@2
=
@3
IF ~Global("SUFEBOOKHistory", "LOCALS", 0)~ THEN REPLY @4 + history
++ @5 + noshelf
++ @6 + SuGenericAdvice
++ @7 + youknowme
END

IF ~!NumTimesTalkedTo(0)~ THEN BEGIN intro3
SAY @8
=
@9
IF ~Global("SUFEBOOKHistory", "LOCALS", 0)~ THEN REPLY @10 + history
++ @5 + noshelf
++ @11 + SuGenericAdvice
END

IF ~~ THEN BEGIN noshelf
SAY @12
=
@13
=
@14
=
@15
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN history
SAY @16
=
@17
=
@18
=
@19
=
@9
++ @5 DO ~SetGlobal("SUFEBOOKHistory", "LOCALS", 1)~ GOTO noshelf
++ @11 DO ~SetGlobal("SUFEBOOKHistory", "LOCALS", 1)~ GOTO SuGenericAdvice
END

IF ~~ THEN BEGIN youknowme
SAY @20
=
@21
++ @5 + noshelf
++ @22 + SuGenericAdvice
END

IF ~~ THEN BEGIN SuGenericAdvice
  SAY @23
  IF ~!Global("chapter","GLOBAL",%bg2_chapter_6%) !Global("chapter","GLOBAL",%bg2_chapter_7%)~ THEN GOTO GenericReply
  IF ~Global("chapter","GLOBAL",%bg2_chapter_6%)~ THEN GOTO chapter6
  IF ~Global("chapter","GLOBAL",%bg2_chapter_7%)~ THEN GOTO chapter7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN chapter6
SAY @24
=
@25
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN chapter7
SAY @26
=
@27
=
@28
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GenericReply
SAY @29
IF ~~ THEN EXIT
END

EXTEND_BOTTOM DOGHMA 0 #1
IF ~!PartyHasItem("SUFEBOOK")~ THEN REPLY @30 EXTERN DOGHMA SuDontTouchBook
IF ~PartyHasItem("SUFEBOOK")~ THEN REPLY @31 EXTERN DOGHMA SuOhGawdUHaveIt
END

APPEND DOGHMA

IF ~~ THEN BEGIN SuDontTouchBook
SAY @32
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SuOhGawdUHaveIt
SAY @33
++ @34 + BecauseAnvil
++ @35 + CarelessWoman
END

IF ~~ THEN BEGIN BecauseAnvil
SAY @36
=
@37
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CarelessWoman
SAY @38
=
@39
IF ~~ THEN EXIT
END

END


APPEND OGHMONK1

IF WEIGHT #-2 ~PartyHasItem("SUFEBOOK") Global("SUFeBookWarn1", "LOCALS", 0)~ THEN BEGIN EekTehBook
SAY @40
=
@41
++ @42 DO ~SetGlobal("SUFeBookWarn1", "LOCALS", 1)~ GOTO namer
++ @43 DO ~SetGlobal("SUFeBookWarn1", "LOCALS", 1)~ GOTO nojoke
++ @44 DO ~SetGlobal("SUFeBookWarn1", "LOCALS", 1)~ GOTO suityerself
END

IF ~~ THEN BEGIN namer
SAY @45
=
@46
++ @47 + suityerself
++ @48 + suityerself
++ @49 + goodchoicedood
END

IF ~~ THEN BEGIN nojoke
SAY @50
=
@51
++ @52 + suityerself
++ @53 + suityerself
++ @54 + goodchoicedood
END

IF ~~ THEN BEGIN suityerself
SAY @55
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN goodchoicedood
SAY @56
IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~PartyHasItem("SUFEBOOK") Global("SUFeBookWarn1", "LOCALS", 1)~ THEN BEGIN EekTehBook2
SAY @57
IF ~~ THEN EXIT
END

END
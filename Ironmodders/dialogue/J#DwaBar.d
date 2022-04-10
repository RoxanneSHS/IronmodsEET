BEGIN J#DwaBar

IF ~Gender(Player1,MALE)
!Global("J#AleAmbush","GLOBAL",3)~ Warning
  SAY @0
=
@1
  IF ~~ THEN REPLY @2 GOTO theale
  IF ~~ THEN REPLY @3 GOTO good
  IF ~~ THEN REPLY @4 GOTO aargh
END

IF ~Gender(Player1,FEMALE)
!Global("J#AleAmbush","GLOBAL",3)~ Warning
  SAY @5
=
@6
  IF ~~ THEN REPLY @2 GOTO theale
  IF ~~ THEN REPLY @3 GOTO good
  IF ~~ THEN REPLY @4 GOTO aargh
END

IF ~~ theale
  SAY @7
=
@8
  IF ~~ THEN REPLY @3 GOTO good
  IF ~~ THEN REPLY @4 GOTO aargh
END

IF ~~ aargh
  SAY @9
  IF ~~ THEN REPLY @10 GOTO good
  IF ~~ THEN REPLY @11 EXIT
END

IF ~~ good
  SAY @12
=
@13
=
@14
=
@15
  IF ~~ THEN DO ~GiveItemCreate("J#ale",Player1,3,0,0)
SetGlobalTimer("J#DwarfBarTimer","GLOBAL",1000)
EscapeArea()~ EXIT
END

IF ~Global("J#AleAmbush","GLOBAL",3)
Gender(Player1,MALE)~ takeale
  SAY @16
= @17
IF ~~ THEN REPLY @18 DO ~TakePartyItem("J#Ale")
DestroyItem("J#Ale")~ GOTO yup
END

IF ~Global("J#AleAmbush","GLOBAL",3)
Gender(Player1,FEMALE)~ takeale
  SAY @19
= @17
IF ~~ THEN REPLY @18 DO ~TakePartyItem("J#Ale")
DestroyItem("J#Ale")~ GOTO yup
END

IF ~~ yup
  SAY @20
= @21
= @22
IF ~~ THEN REPLY @23 DO ~SetGlobal("J#AleAmbush","GLOBAL",4)
EscapeArea()~ EXIT
END

BEGIN J#Gorch
BEGIN J#Drobar
BEGIN J#TThumb
BEGIN J#Thunde
BEGIN J#Pugney
BEGIN J#Vincen
BEGIN J#Brynnl
BEGIN J#HelBar

BEGIN J#Patric

CHAIN
IF ~False()~ THEN J#Patric chain2nd
@24
== J#Thunde
@25
=
@26
== J#DroBar @27
= @28
== J#HelBar @29
== J#Gorch  @30
== J#Vincen @31
== J#Brynnl @32
== J#TThumb @33
== J#Brynnl @34
== J#Bernar @35
== J#Vincen @36
== J#HelBar @37
= @38
== J#Bernar @39
== J#Gorch  @40
== J#DroBar @41
== J#TThumb @42
== J#Thunde @43
== J#Pugney @44
== J#Patric @45
== J#Vincen @46
== J#Brynnl @47
== J#HelBar @48
EXTERN J#Bernar thiefdie

BEGIN J#Bernar

IF ~~ ultimatum
  SAY @49
  IF ~~ THEN REPLY @50 EXTERN J#Patric chain2nd
  IF ~~ THEN REPLY @51 EXTERN J#Patric chain2nd
  IF ~~ THEN REPLY @52 EXTERN J#Patric chain2nd
  IF ~~ THEN REPLY @53 EXTERN J#Patric chain2nd
END

IF ~~ thiefdie
  SAY @54
  IF ~~ THEN DO ~SetGlobal("J#AleAmbush","GLOBAL",2)~ EXIT
END

CHAIN
IF ~True()~ THEN J#Bernar bartenderchain
@55
== J#Pugney @56
EXTERN J#Bernar ultimatum


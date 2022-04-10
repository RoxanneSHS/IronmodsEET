BEGIN E#Ianthe
BEGIN E#Gr1
BEGIN E#Gr2

APPEND E#Ianthe
IF ~InParty("Haer'Dalis")
See("Haer'Dalis")
!StateCheck("Haer'Dalis",STATE_SLEEPING)
Global("E#HaeGroupies","GLOBAL",0)~ THEN BEGIN MeetGroupies
SAY @0
IF ~~ GOTO Groupies1
END
END

CHAIN E#Ianthe Groupies1
@1 DO ~SetGlobal("E#HaeGroupies","GLOBAL",1)~
== E#Gr1 @2
== E#Gr2 @3
== E#Ianthe @4
== AERIEJ IF ~IsValidForPartyDialog("Aerie")
Global("HaerDalisRomanceActive","GLOBAL",2)
OR(2)
Global("AerieRomanceActive","GLOBAL",3)
Global("AerieRomanceActive","GLOBAL",0)~ THEN @5
== HAERDAJ @6
== E#Gr1 @7
== E#Gr2 @8
== E#Ianthe @9
== HAERDAJ @10
== E#Ianthe @11
END
++ @12 GOTO things
++ @13 GOTO things
++ @14 GOTO things

CHAIN E#Ianthe things
@15
== E#Gr1 @16
== E#Gr2 @17
== HAERDAJ @18
== E#Ianthe @19
== HAERDAJ @20
= @21
== E#Ianthe @22
END
++ @23 GOTO idea
++ @24 GOTO wonder
++ @25 GOTO go

CHAIN E#Ianthe idea
@26
== E#Gr1 @27
== E#Gr2 @28
== E#Ianthe @29
== NALIAJ IF ~IsValidForPartyDialog("Nalia")~ THEN @30
== ANOMENJ IF ~IsValidForPartyDialog("Anomen")~ THEN @31
== VICONIJ IF ~IsValidForPartyDialog("Viconia")~ THEN @32
== HAERDAJ @33
END
++ @34 EXIT
++ @35 EXIT

CHAIN E#Ianthe wonder
@36
== HAERDAJ @37
== E#Gr1 @38
== EDWINJ IF ~IsValidForPartyDialog("Edwin")~ THEN @39
== YOSHJ IF ~IsValidForPartyDialog("Yoshimo")~ THEN @40
== MINSCJ IF ~IsValidForPartyDialog("Minsc")~ THEN @41
== E#Gr2 @42
END
++ @43 EXIT
++ @44 EXIT

CHAIN E#Ianthe go
@45
== E#Gr1 @46
== E#Gr2 @47
== JAHEIRAJ IF ~IsValidForPartyDialog("Jaheira")~ THEN @48
== VALYGARJ IF ~IsValidForPartyDialog("Valygar")~ THEN @49
== HAERDAJ @50
END
++ @51 EXIT
++ @52 EXIT
++ @53 EXIT

APPEND E#Ianthe
IF ~!InParty("Haer'Dalis")
Global("E#HaeGroupies","GLOBAL",0)~ THEN BEGIN NoHaery
SAY @54 
IF ~~ THEN EXIT
END
END

APPEND E#Ianthe
IF ~!InParty("Haer'Dalis")
Global("E#HaeGroupies","GLOBAL",1)~ THEN BEGIN NoHaery2
SAY @55
IF ~~ THEN EXIT
END
END

APPEND E#Ianthe
IF ~InParty("Haer'Dalis")
Global("E#HaeGroupies","GLOBAL",1)~ THEN BEGIN Haeryhere
SAY @56
IF ~~ THEN EXIT
END
END





BEGIN pgcambi
BEGIN pgfiona

IF ~Global("FionaEnd","GLOBAL",1)~ fionasend
SAY @0
= @1
IF ~~ DO ~Kill(Myself)
EraseJournalEntry(@99)
AddJournalEntry(@100,QUEST_DONE)~ EXIT
END


IF ~Global("FionaMetParty","LOCALS",0)~ met
SAY @2
++ @3 DO ~SetGlobal("FionaMetParty","LOCALS",1)~ + whoareyou
++ @4 DO ~SetGlobal("FionaMetParty","LOCALS",1)~ + whoareyou
++ @5 DO ~SetGlobal("FionaMetParty","LOCALS",1)~ + impressions
++ @6 DO ~SetGlobal("FionaMetParty","LOCALS",1)~ + notime
END

IF ~~ impressions
SAY @7
IF ~~ GOTO whoareyou
END

IF ~~ notime
SAY @8
++ @9 DO ~Enemy()~ EXIT
++ @10 + busy
++ @11 + whoareyou
END

IF ~~ busy
SAY @12
= @13
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ whoareyou
SAY @14
= @15
= @16
= @17
++ @18 + fighthim
++ @19 + fighthim
++ @20 + runaway
++ @21 + power
END

IF ~~ fighthim
SAY @22
IF ~~ GOTO power
END

IF ~~ runaway
SAY @23
= @24
IF ~~ GOTO power
END

IF ~~ power
SAY @25 
= @26
++ @27 + busy
+ ~PartyHasItem("potn43") Global("FionaInsight","GLOBAL",0)~ + @28 DO ~AddexperienceParty(3000) SetGlobal("FionaInsight","GLOBAL",1) TakePartyItemNum("POTN43",1)~ + gotitem
+ ~CheckStatGT(Player1,14,WIS) Global("FionaInsight","GLOBAL",0)~ + @29 DO ~AddexperienceParty(3500) SetGlobal("FionaInsight","GLOBAL",1)~ + inspirestory

+ ~PartyHasItem("belt06") Global("FionaStrength","GLOBAL",0)~ + @30 DO ~AddexperienceParty(3000) TakePartyItemNum("belt06",1) SetGlobal("FionaStrength","GLOBAL",1)~ + gotitem
+ ~PartyHasItem("belt07") Global("FionaStrength","GLOBAL",0)~ + @31 DO ~AddexperienceParty(3000) TakePartyItemNum("belt07",1) SetGlobal("FionaStrength","GLOBAL",1)~ + gotitem
+ ~PartyHasItem("belt08") Global("FionaStrength","GLOBAL",0)~ + @32 DO ~AddexperienceParty(3000) TakePartyItemNum("belt08",1) SetGlobal("FionaStrength","GLOBAL",1)~ + gotitem
+ ~PartyHasItem("belt11") Global("FionaStrength","GLOBAL",0)~ + @33 DO ~AddexperienceParty(3000) TakePartyItemNum("belt11",1) SetGlobal("FionaStrength","GLOBAL",1)~ + gotitem
+ ~InParty("Minsc") !Dead("Minsc") Global("FionaStrength","GLOBAL",0)~ + @34 DO ~SetGlobal("FionaStrength","GLOBAL",1) AddexperienceParty(3500)~ EXTERN MINSCJ holdboo

+ ~PartyHasItem("SW1H51") Global("FionaPower","GLOBAL",0)~ + @35 DO ~AddexperienceParty(3000) TakePartyItemNum("sw1h51",1) SetGlobal("FionaPower","GLOBAL",1)~ + gotitem
+ ~PartyHasItem("staf11") Global("FionaPower","GLOBAL",0)~ + @36 DO ~AddexperienceParty(3000) TakePartyItemNum("staf11",1) SetGlobal("FionaPower","GLOBAL",1)~ + gotitem
+ ~PartyHasItem("hamm09") Global("FionaPower","GLOBAL",0)~ + @37 DO ~AddexperienceParty(3000) TakePartyItemNum("hamm09",1) SetGlobal("FionaPower","GLOBAL",1)~ + gotitem
+ ~CheckStatGT(Player1,14,CHR) Global("FionaPower","GLOBAL",0)~ + @38 DO ~SetGlobal("FionaPower","GLOBAL",1) AddexperienceParty(3500)~ + powerstory
++ @39 DO ~AddJournalEntry(@99,QUEST)~ + comeback
END

IF ~~ powerstory
SAY @40
++ @41 + inspirestory2
++ @42 DO ~Enemy()~ EXIT
END

IF ~~ inspirestory
SAY @43
= @44
++ @45 + inspirestory2
++ @46 DO ~Enemy()~ EXIT
END

IF ~~ inspirestory2
SAY @47
IF ~~ GOTO gotitem
END

IF ~~ gotitem
SAY @48
= @49
++ @27 + busy
+ ~PartyHasItem("potn43") Global("FionaInsight","GLOBAL",0)~ + @28 DO ~AddexperienceParty(3000) SetGlobal("FionaInsight","GLOBAL",1) TakePartyItemNum("POTN43",1) ~ + gotitem
+ ~CheckStatGT(Player1,14,WIS) Global("FionaInsight","GLOBAL",0)~ + @29 DO ~AddexperienceParty(3500) SetGlobal("FionaInsight","GLOBAL",1)~ + inspirestory

+ ~PartyHasItem("belt06") Global("FionaStrength","GLOBAL",0)~ + @30 DO ~AddexperienceParty(3000) TakePartyItemNum("belt06",1) SetGlobal("FionaStrength","GLOBAL",1)~ + gotitem
+ ~PartyHasItem("belt07") Global("FionaStrength","GLOBAL",0)~ + @31 DO ~AddexperienceParty(3000) TakePartyItemNum("belt07",1) SetGlobal("FionaStrength","GLOBAL",1)~ + gotitem
+ ~PartyHasItem("belt08") Global("FionaStrength","GLOBAL",0)~ + @32 DO ~AddexperienceParty(3000) TakePartyItemNum("belt08",1) SetGlobal("FionaStrength","GLOBAL",1)~ + gotitem
+ ~PartyHasItem("belt11") Global("FionaStrength","GLOBAL",0)~ + @33 DO ~AddexperienceParty(3000) TakePartyItemNum("belt11",1) SetGlobal("FionaStrength","GLOBAL",1)~ + gotitem
+ ~InParty("Minsc") !Dead("Minsc") Global("FionaStrength","GLOBAL",0)~ + @34 DO ~SetGlobal("FionaStrength","GLOBAL",1) AddexperienceParty(3500)~ EXTERN MINSCJ holdboo

+ ~PartyHasItem("SW1H51") Global("FionaPower","GLOBAL",0)~ + @35 DO ~AddexperienceParty(3000) TakePartyItemNum("sw1h51",1) SetGlobal("FionaPower","GLOBAL",1)~ + gotitem
+ ~PartyHasItem("staf11") Global("FionaPower","GLOBAL",0)~ + @36 DO ~AddexperienceParty(3000) TakePartyItemNum("staf11",1) SetGlobal("FionaPower","GLOBAL",1)~ + gotitem
+ ~PartyHasItem("hamm09") Global("FionaPower","GLOBAL",0)~ + @37 DO ~AddexperienceParty(3000) TakePartyItemNum("hamm09",1) SetGlobal("FionaPower","GLOBAL",1)~ + gotitem
+ ~CheckStatGT(Player1,14,CHR) Global("FionaPower","GLOBAL",0)~ + @38 DO ~SetGlobal("FionaPower","GLOBAL",1) AddexperienceParty(3500)~ + powerstory
++ @39 DO ~AddJournalEntry(@99,QUEST)~ + comeback
IF ~Global("FionaInsight","GLOBAL",1) Global("FionaStrength","GLOBAL",1) Global("FionaPower","GLOBAL",1)~ + haveitall
END

IF ~~ comeback
SAY @50
IF ~~ EXIT
END

IF ~Global("FionaMetParty","LOCALS",1)~ return
SAY @51
++ @27 + busy
+ ~PartyHasItem("potn43") Global("FionaInsight","GLOBAL",0)~ + @28 DO ~AddexperienceParty(3000) SetGlobal("FionaInsight","GLOBAL",1) TakePartyItemNum("POTN43",1) ~ + gotitem
+ ~CheckStatGT(Player1,14,WIS) Global("FionaInsight","GLOBAL",0)~ + @29 DO ~AddexperienceParty(3500) SetGlobal("FionaInsight","GLOBAL",1)~ + inspirestory

+ ~PartyHasItem("belt06") Global("FionaStrength","GLOBAL",0)~ + @30 DO ~AddexperienceParty(3000) TakePartyItemNum("belt06",1) SetGlobal("FionaStrength","GLOBAL",1)~ + gotitem
+ ~PartyHasItem("belt07") Global("FionaStrength","GLOBAL",0)~ + @31 DO ~AddexperienceParty(3000) TakePartyItemNum("belt07",1) SetGlobal("FionaStrength","GLOBAL",1)~ + gotitem
+ ~PartyHasItem("belt08") Global("FionaStrength","GLOBAL",0)~ + @32 DO ~AddexperienceParty(3000) TakePartyItemNum("belt08",1) SetGlobal("FionaStrength","GLOBAL",1)~ + gotitem
+ ~PartyHasItem("belt11") Global("FionaStrength","GLOBAL",0)~ + @33 DO ~AddexperienceParty(3000) TakePartyItemNum("belt11",1) SetGlobal("FionaStrength","GLOBAL",1)~ + gotitem
+ ~InParty("Minsc") !Dead("Minsc") Global("FionaStrength","GLOBAL",0)~ + @34 DO ~AddexperienceParty(3500) SetGlobal("FionaStrength","GLOBAL",1)~ EXTERN MINSCJ holdboo

+ ~PartyHasItem("SW1H51") Global("FionaPower","GLOBAL",0)~ + @35 DO ~AddexperienceParty(3000) TakePartyItemNum("sw1h51",1) SetGlobal("FionaPower","GLOBAL",1)~ + gotitem
+ ~PartyHasItem("staf11") Global("FionaPower","GLOBAL",0)~ + @36 DO ~AddexperienceParty(3000) TakePartyItemNum("staf11",1) SetGlobal("FionaPower","GLOBAL",1)~ + gotitem
+ ~PartyHasItem("hamm09") Global("FionaPower","GLOBAL",0)~ + @37 DO ~AddexperienceParty(3000) TakePartyItemNum("hamm09",1) SetGlobal("FionaPower","GLOBAL",1)~ + gotitem
+ ~CheckStatGT(Player1,14,CHR) Global("FionaPower","GLOBAL",0)~ + @38 DO ~AddexperienceParty(3500) SetGlobal("FionaPower","GLOBAL",1)~ + powerstory
++ @39 DO ~AddJournalEntry(@99,QUEST)~ + comeback
IF ~Global("FionaInsight","GLOBAL",1) Global("FionaStrength","GLOBAL",1) Global("FionaPower","GLOBAL",1)~ + haveitall
END

IF ~~ haveitall
SAY @52
=
@53
= @54
IF ~~ DO ~SetGlobal("FionaMetParty","LOCALS",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("PGfiona1")~ EXIT
END


CHAIN MINSCJ holdboo
@55
== PGFIONA @56
= @57
== MINSCJ @58
END PGFIONA gotitem

CHAIN IF ~True()~ THEN PGCAMBI dialogue
@59
= @60
== PGFIONA @61
== PGCAMBI @62
= @63
== PGFIONA @64
= @65
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("PGfiona2")~
EXIT



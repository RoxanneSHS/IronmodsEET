BEGIN ~M#Questo~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN initial
  SAY @0
  IF ~~ THEN REPLY @1 GOTO YourHelp
  IF ~~ THEN REPLY @2 GOTO Stfu
  IF ~~ THEN REPLY @3 GOTO Momma
END

IF ~NumTimesTalkedToGT(0)!InParty(Myself)~ THEN BEGIN initial2
  SAY @4
  IF ~~ THEN REPLY @5 GOTO YourHelp
  IF ~~ THEN REPLY @6 GOTO Stfu
  IF ~~ THEN REPLY @7 GOTO Momma
END

IF ~~ THEN BEGIN YourHelp
  SAY @8
  IF ~~ THEN REPLY @9 GOTO Umm
  IF ~~ THEN REPLY @10 GOTO Momma
  IF ~~ THEN REPLY @11 GOTO Join
END

IF ~~ THEN BEGIN Stfu
  SAY @12
  IF ~~ THEN REPLY @13 GOTO Umm
  IF ~~ THEN REPLY @14 GOTO Stfu
  IF ~~ THEN REPLY @15 GOTO Join
  IF ~~ THEN REPLY @16 GOTO Leave
END

IF ~~ THEN BEGIN Momma
  SAY @17
  IF ~~ THEN REPLY @18 GOTO Umm
  IF ~~ THEN REPLY @19 GOTO Stfu
  IF ~~ THEN REPLY @20 GOTO Join
  IF ~~ THEN REPLY @21 GOTO Leave
END 

IF ~~ THEN BEGIN Umm
  SAY @22
  IF ~~ THEN REPLY @23 GOTO Stfu
  IF ~~ THEN REPLY @24 GOTO Join
  IF ~~ THEN REPLY @25 GOTO Leave
END

IF ~~ THEN BEGIN Join
  SAY @26
  IF ~~ THEN REPLY @27 DO ~SetGlobal("QuestorJoined","LOCALS",1) JoinParty()SetGlobal("MyQuest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN Leave
  SAY @28
  IF ~~ THEN REPLY @29 DO ~ChangeEnemyAlly(Myself,NEUTRAL) EscapeArea()~ EXIT
END 

IF ~Global("MyQuest","GLOBAL",0) !InParty(Myself)
   Global("QuestorJoined","LOCALS",1)~ THEN BEGIN  KickOut
   SAY @30
   IF ~~ THEN REPLY @31 DO ~SetGlobal("QuestorJoined","LOCALS",1) JoinParty()SetGlobal("MyQuest","GLOBAL",1)~ EXIT
   IF ~~ THEN REPLY @32 DO ~SetGlobal("MyQuest","GLOBAL",1)ChangeEnemyAlly(Myself,NEUTRAL) EscapeArea()~ EXIT
END   

IF~PartyHasItem("Armand") InParty(Myself)~ THEN BEGIN Finished
SAY @36
=@30
=@28
IF~~THEN DO ~LeaveParty() ChangeEnemyAlly(Myself,NEUTRAL) EscapeArea()~ EXIT
END
  
BEGIN ~M#QuestM~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Die
   SAY @33
   IF ~~THEN REPLY @34 DO ~ChangeEnemyAlly(Myself,EVILCUTOFF)
   Enemy()
   Attack(NearestEnemyOf(Myself))~ EXIT
   IF ~~THEN REPLY @35 DO ~ChangeEnemyAlly(Myself,EVILCUTOFF)
   Enemy()
   Attack(NearestEnemyOf(Myself))~ EXIT
END


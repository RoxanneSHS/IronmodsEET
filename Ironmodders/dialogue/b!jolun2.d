BEGIN ~B!JOLUN2~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN j0
SAY @0
++ @1 + j1
++ @2 + j2
++ @3 + j3
++ @4 + j4
END

IF ~~ j1
SAY @5
++ @6 + j5
++ @7 + j5
++ @8 + j3
++ @9 + j6
++ @10 + j7
END


IF ~~ j2
SAY @11
IF ~~ THEN EXIT
END

IF ~~ j3
SAY @12
++ @13 + j8
++ @14 + j5
+ ~CheckStatGT(Player1,14,CHR)~ + @15 + j9
+ ~CheckStatGT(Player1,8,CHR) CheckStatLT(Player1,15,CHR)~ + @16 + j10
+ ~CheckStatLT(Player1,9,CHR)~ + @16 + j11
+ ~CheckStatLT(Player1,9,CHR)~ + @17 + j12
END

IF ~~ j4
SAY @18
IF ~~ THEN + j1
END

IF ~~ j5
SAY @19
++ @20 DO ~SetGlobal("B!ThousandWords","GLOBAL",1)~ + j2
++ @21 DO ~SetGlobal("B!ThousandWords","GLOBAL",1)~ + j13
END

IF ~~ j6
SAY @22
IF ~~ THEN + j5
END

IF ~~ j7
SAY @23
IF ~~ THEN + j5
END

IF ~~ j8
SAY @24
IF ~~ THEN + j5
END

IF ~~ j9
SAY @25
IF ~~ THEN + j5
END

IF ~~ j10
SAY @26
IF ~~ THEN + j5
END

IF ~~ j11
SAY @27
IF ~~ THEN + j5
END

IF ~~ j12
SAY @28
IF ~~ THEN + j5
END

IF ~~ j13
SAY @29
++ @30 + j14
++ @31 + j14
++ @32 + j14
END

IF ~~ j14
SAY @33
++ @34 DO ~SetGlobal("B!ThousandWords","GLOBAL",2)~ + j15
++ @35 DO ~SetGlobal("B!ThousandWords","GLOBAL",2)~ + j2
END

IF ~~ j15
SAY @36
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0) !PartyHasItem("b!pigmnt")~ j16
SAY @37
+ ~Global("B!ThousandWords","GLOBAL",0)~ + @38 + j1
+ ~GlobalGT("B!ThousandWords","GLOBAL",0)~ + @39 + j5
+ ~GlobalGT("B!ThousandWords","GLOBAL",1)~ + @40 + j13
+ ~GlobalGT("B!ThousandWords","GLOBAL",1)~ + @41 + j15
++ @42 EXIT
END

IF ~NumTimesTalkedToGT(0) PartyHasItem("b!pigmnt")~ j17
SAY @43
++ @44 DO ~AddexperienceParty(3600)~ + j18
++ @45 DO ~AddexperienceParty(3000)~ + j19
++ @46 DO ~AddexperienceParty(1800)~ + j20
END

IF ~~ j18
SAY @47
IF ~~ THEN DO ~ TakePartyItem("b!pigmnt") GiveItemCreate("b!portrt",Player1,0,0,0)~ + j21
END

IF ~~ j19
SAY @48
IF ~~ THEN DO ~ TakePartyItem("b!pigmnt") GiveItemCreate("b!portrt",Player1,0,0,0)~ + j21
END

IF ~~ j20
SAY @49
IF ~~ THEN DO ~ TakePartyItem("b!pigmnt") GiveItemCreate("b!portrt",Player1,0,0,0)~ + j21
END

IF ~~ j21
SAY @50
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

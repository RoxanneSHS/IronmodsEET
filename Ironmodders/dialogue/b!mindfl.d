BEGIN ~B!MINDFL~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN m0
SAY @0
++ @1 + m1
++ @2 + m2
++ @3 + m3
END

IF ~~ m1
SAY @4
++ @5 + m4
++ @6 + m5
++ @7 + m3
END


IF ~~ m2
SAY @8
++ @9 + m1
++ @10 + m3
END

IF ~~ m3
SAY @11
IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ m4
SAY @12
+ ~PartyGoldGT(9999)~ + @13 + m6
+ ~PartyGoldGT(4999) CheckStatGT(Player1,7,CHR)~ + @14 DO ~TakePartyGold(5000) DestroyGold(5000) AddexperienceParty(1200)~ + m6
+ ~PartyGoldGT(4999) !CheckStatGT(Player1,7,CHR)~ + @14 + m7
+ ~PartyGoldGT(1999) CheckStatGT(Player1,12,CHR)~ + @15 DO ~TakePartyGold(2000) DestroyGold(2000) AddexperienceParty(1200)~ + m6
+ ~PartyGoldGT(1999) !CheckStatGT(Player1,12,CHR)~ + @15 + m7
+ ~PartyGoldGT(999) CheckStatGT(Player1,15,CHR)~ + @16 DO ~TakePartyGold(1000) DestroyGold(1000) AddexperienceParty(1200)~ + m6
+ ~PartyGoldGT(999) !CheckStatGT(Player1,15,CHR)~ + @16 + m7
+ ~PartyGoldGT(499) CheckStatGT(Player1,17,CHR)~ + @17 DO ~TakePartyGold(500) DestroyGold(500) AddexperienceParty(1200)~ + m6
+ ~PartyGoldGT(499) !CheckStatGT(Player1,17,CHR)~ + @17 + m7
+ ~PartyGoldGT(99) CheckStatGT(Player1,19,CHR)~ + @18 DO ~TakePartyGold(100) DestroyGold(100) AddexperienceParty(1200)~ + m6
+ ~PartyGoldGT(99) !CheckStatGT(Player1,19,CHR)~ + @18 + m7
++ @19 + m5
END

IF ~~ m5
SAY @20
+ ~InParty("Aerie") GlobalGT("AerieRomanceActive","GLOBAL",0)~ + @21 DO ~SetGlobal("AerieRomanceActive","GLOBAL",3) AddexperienceParty(3000) Kill("Aerie")~ + m6
+ ~InParty("Anomen") GlobalGT("AnomenRomanceActive","GLOBAL",0)~ + @22 DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3) AddexperienceParty(3000) Kill("Anomen")~ + m6
+ ~InParty("Jaheira") GlobalGT("JaheiraRomanceActive","GLOBAL",0)~ + @23 DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3) AddexperienceParty(3000) Kill("Jaheira")~ + m6
+ ~InParty("Viconia") GlobalGT("JaheiraRomanceActive","GLOBAL",0)~ + @24 DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3) AddexperienceParty(3000) Kill("Viconia")~ + m6

+ ~InParty("Rasaad") GlobalGT("RasaadRomanceActive","GLOBAL",0)~ + @59 DO ~SetGlobal("RasaadRomanceActive","GLOBAL",3) AddexperienceParty(3000) Kill("Rasaad")~ + m6
+ ~InParty("Dorn") GlobalGT("DornRomanceActive","GLOBAL",0)~ + @60 DO ~SetGlobal("DornRomanceActive","GLOBAL",3) AddexperienceParty(3000) Kill("Dorn")~ + m6
+ ~InParty("Hexxat") GlobalGT("HexxatRomanceActive","GLOBAL",0)~ + @61 DO ~SetGlobal("HexxatRomanceActive","GLOBAL",3) AddexperienceParty(3000) Kill("Hexxat")~ + m6
+ ~InParty("Neera") GlobalGT("NeeraRomanceActive","GLOBAL",0)~ + @62 DO ~SetGlobal("NeeraRomanceActive","GLOBAL",3) AddexperienceParty(3000) Kill("Neera")~ + m6

+ ~InParty("Aerie") !GlobalGT("AerieRomanceActive","GLOBAL",0)~ + @21 DO ~AddexperienceParty(1800) Kill("Aerie")~ + m6
+ ~InParty("Anomen") !GlobalGT("AnomenRomanceActive","GLOBAL",0)~ + @22 DO ~AddexperienceParty(1800) Kill("Anomen")~ + m6
+ ~InParty("Jaheira") !GlobalGT("JaheiraRomanceActive","GLOBAL",0)~ + @23 DO ~AddexperienceParty(1800) Kill("Jaheira")~ + m6
+ ~InParty("Viconia") !GlobalGT("JaheiraRomanceActive","GLOBAL",0)~ + @24 DO ~AddexperienceParty(1800) Kill("Viconia")~ + m6

+ ~InParty("Rasaad") !GlobalGT("RasaadRomanceActive","GLOBAL",0)~ + @59 DO ~AddexperienceParty(1800) Kill("Rasaad")~ + m6
+ ~InParty("Dorn") !GlobalGT("DornRomanceActive","GLOBAL",0)~ + @60 DO ~AddexperienceParty(1800) Kill("Dorn")~ + m6
+ ~InParty("Hexxat") !GlobalGT("HexxatRomanceActive","GLOBAL",0)~ + @61 DO ~AddexperienceParty(1800) Kill("Hexxat")~ + m6
+ ~InParty("Neera") !GlobalGT("NeeraRomanceActive","GLOBAL",0)~ + @62 DO ~AddexperienceParty(1800) Kill("Neera")~ + m6

+ ~InParty("Imoen2")~ + @25 DO ~AddexperienceParty(3000) Kill("Imoen2")~ + m6
++ @26 + m9
++ @27 + m4
++ @28 + m8
END

IF ~~ m6
SAY @29
IF ~~ THEN DO ~GiveItem("b!pigmnt",Player1)~ EXIT
END


IF ~~ m7
SAY @30
++ @31 + m4
++ @32 + m5
END

IF ~~ m8
SAY @33
++ @34 + m3
++ @35 + m10
END

IF ~~ m9
SAY @36
++ @34 + m3
++ @35 + m10
END

IF ~~ m10
SAY @37
= @38
++ @39 DO ~GiveItem("b!pigmnt",Player1)~ EXIT
++ @40 + m11
END

IF ~~ m11
SAY @41
++ @42 + m12
++ @43 + m3
END

IF ~~ m12
SAY @44
IF ~~ THEN DO ~GiveItem("b!pigmnt",Player1) AddexperienceParty(1200)~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN m13
SAY @45
+ ~PartyHasItem("b!portrt")~ + @46 + m14
+ ~PartyHasItem("b!portrt")~ + @47 + m15
+ ~!GlobalGT("B!ReturnedToIthilid","GLOBAL",2)~ + @48 DO ~IncrementGlobal("B!ReturnedToIthilid","GLOBAL",1)~ + m16
+ ~GlobalGT("B!ReturnedToIthilid","GLOBAL",2)~ + @48 DO ~IncrementGlobal("B!ReturnedToIthilid","GLOBAL",1)~ + m17
END

IF ~~ m14
SAY @49
++ @50 + m18
+ ~PartyGoldGT(999)~ + @51 DO ~AddexperienceParty(1200)~ + m19
++ @52 + m20
END

IF ~~ m15
SAY @53
IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ m16
SAY @54
IF ~~ THEN EXIT
END

IF ~~ m17
SAY @55
IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ m18
SAY @56
+ ~PartyGoldGT(999)~ + @51 DO ~AddexperienceParty(3000)~ + m19
++ @52 + m20
END

IF ~~ m19
SAY @57
IF ~~ THEN DO ~TakePartyGold(1000) TakePartyItem("b!portrt")~ EXIT
END

IF ~~ m20
SAY @58
IF ~~ THEN DO ~Enemy()~ EXIT
END
BEGIN ~CLRIZZ~

IF ~NumTimesTalkedTo(0)~ THEN Aloha
SAY @0
++ @1 + What
++ @2 + Kill
++ @3 + Leave
END

IF ~~ Leave
SAY @4
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ Kill
SAY @5
IF ~~ THEN DO ~Enemy()
				Attack(Player1)~ EXIT
END

IF ~~ What
SAY @6
++ @7 + Lucid
++ @8 + Lucid
++ @9 + Lucid
END

IF ~~ Lucid
SAY @10
++ @11 + Leave
++ @12 + Explanation
++ @13 + Kill
END

IF ~~ Explanation
SAY @14
= @15
= @16
= @17
= @18
++ @19 + Living
++ @20 + Beehair
++ @21 + Kill
END

IF ~~ Living
SAY @22
= @23
= @24
++ @25 + Bebe
++ @26 + Bebe
END

IF ~~ Bebe
SAY @27
= @28
++ @29 + Beehair
END

IF ~~ Beehair
SAY @30
= @31
= @32
= @33
= @34
= @35
++ @36 + Help
++ @37 + Leave
END

IF ~~ Help
SAY @38
= @39 
= @40
++ @41 + Help2
++ @42 + Sad
++ @43 + Bizzen
END

IF ~~ Sad
SAY @44
= @45
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ Bizzen
SAY @46
IF ~~ THEN DO ~ CreateVisualEffectObject("SPLIGHTB",Myself)
				EscapeArea()~ EXIT
END

IF ~~ Help2
SAY @47
IF ~~ THEN DO ~GiveItemCreate("CLIFFBZ",Player1,1,0,0)~ GOTO Help3
END

IF ~~ Help3
SAY @48
IF ~~ THEN
		UNSOLVED_JOURNAL @115
		DO ~
		CreateCreature("clifbr1",[155.1378],6)
		CreateCreature("clifbr2",[243.1334],7)
		RealSetGlobalTimer("CliffShockTimer00","GLOBAL",5)
		EscapeArea()~ EXIT
END

BEGIN ~CLBIZZ~


IF ~True()~ THEN BEGIN Talked
SAY @50
++ @51 + HowAre
++ @52 + Buzzy
++ @53 + Hive
+ ~GGT("CliffShocked",0)~ + @54 + Stop
END

IF ~~ HowAre
SAY @55
IF ~~ THEN DO ~CreateVisualEffectObject("SPLIGHTB",Player1)
				ApplyDamage(Player1,1,ELECTRICITY)
				RealSetGlobalTimer("CliffShockTimer","GLOBAL",5)~ EXIT
END

IF ~~ Buzzy
SAY @56
IF ~~ THEN DO ~CreateVisualEffectObject("SPLIGHTB",Player1)
				ApplyDamage(Player1,1,ELECTRICITY)
				RealSetGlobalTimer("CliffShockTimer","GLOBAL",5)~ EXIT
END

IF ~~ Hive
SAY @57
IF ~~ THEN DO ~CreateVisualEffectObject("SPLIGHTB",Player1)
				ApplyDamage(Player1,1,ELECTRICITY)
				RealSetGlobalTimer("CliffShockTimer","GLOBAL",5)~ EXIT
END

IF ~~ Stop
SAY @58
IF ~~ THEN DO ~CreateVisualEffectObject("SPLIGHTB",Player1)
				ApplyDamage(Player1,1,ELECTRICITY)
				RealSetGlobalTimer("CliffShockTimer","GLOBAL",5)~ EXIT
END




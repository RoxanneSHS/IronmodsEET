BEGIN D0CULT1

IF ~Global("D0SpawnCultists","GLOBAL",1)~ THEN BEGIN A1
SAY @100
IF ~~ THEN REPLY @101 GOTO A2
IF ~~ THEN REPLY @102 GOTO A2
IF ~~ THEN REPLY @103 GOTO A2
IF ~~ THEN REPLY @104 EXIT
IF ~~ THEN REPLY @105 DO ~SetGlobal("D0AttackCult","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN A2
SAY @106
= @107
= @108
= @109
= @1010
= @1011
= @1012
= @1013
= @1014
= @1015
IF ~~ THEN DO ~SetGlobal("D0SpawnCultists","GLOBAL",2)~ EXIT
END

IF ~GlobalGT("D0SpawnCultists","GLOBAL",1)~ THEN BEGIN B1
SAY @1016
IF ~~ THEN EXIT
END

BEGIN D0CULT2

IF ~True()~ THEN BEGIN B1
SAY @1017
IF ~~ THEN EXIT
END

/* BEGIN D0CULT3

IF ~~ THEN BEGIN C1
SAY ~Ah, I see you've spoken with the pretenders up there.~
IF ~~ THEN REPLY ~Pretenders? What do you mean?~ GOTO C2
IF ~~ THEN REPLY ~Out of my way! I'm important!~ DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN C2
SAY ~They claim to worship the site of a fallen deva. In a sense, they speak the truth, I suppose.~
= ~ */

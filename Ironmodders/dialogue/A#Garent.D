BEGIN ~A#ROPAR~

IF ~NumTimesTalkedTo(0)
Global("A#IMTutuPlot","GLOBAL",1)~ THEN BEGIN FirstMeet
SAY @100
IF ~~ THEN REPLY @101 GOTO Explain1
IF ~~ THEN REPLY @102 EXIT
IF ~~ THEN REPLY @103 GOTO Explain1
IF ~~ THEN REPLY @104 GOTO VeryWell
END

IF ~NumTimesTalkedToGT(0)
Global("A#IMTutuPlot","GLOBAL",1)~ THEN BEGIN FirstMeet
SAY @105
IF ~~ THEN REPLY @106 EXIT
IF ~~ THEN REPLY @107 GOTO Explain1
IF ~~ THEN REPLY @108 EXIT
END

IF ~GlobalGT("A#IMTutuPlot","GLOBAL",1)
!Global("A#IMTutuPlot","GLOBAL",4)~ THEN BEGIN Return
SAY @109
IF ~~ THEN REPLY @1010 EXIT
IF ~~ THEN REPLY @1011 EXIT
END

IF ~Global("A#IMTutuPlot","GLOBAL",4)~ THEN BEGIN Return
SAY @109
IF ~Global("A#GarentFled","GLOBAL",1)~ THEN REPLY @1012 GOTO FleeLie
IF ~Global("A#GarentDead","GLOBAL",1)~ THEN REPLY @1013 GOTO EvilDie
IF ~Global("A#GarentFled","GLOBAL",1)~ THEN REPLY @1014 GOTO FleeTrue
IF ~Global("A#GarentDead","GLOBAL",1)~ THEN REPLY @1015 GOTO GoodDie
END

IF ~~ THEN BEGIN FleeLie
SAY @1016
IF ~~ THEN DO ~AddexperienceParty(1000)
               GiveGoldForce(50)
               EraseJournalEntry(@1043)
               EscapeArea()~ SOLVED_JOURNAL @1044  EXIT
END

IF ~~ THEN BEGIN FleeTrue
SAY @1017
IF ~~ THEN REPLY @1018 GOTO LetFree2
IF ~~ THEN REPLY @1019 GOTO LetFree3
END

IF ~~ THEN BEGIN LetFree2
SAY @1020
IF ~~ THEN DO ~AddexperienceParty(1000)
               EraseJournalEntry(@1043)
               EscapeArea()~ SOLVED_JOURNAL @1045  EXIT
END

IF ~~ THEN BEGIN LetFree3
SAY @1021
IF ~~ THEN DO ~AddexperienceParty(1000)
               EraseJournalEntry(@1043)
               EscapeArea()~ SOLVED_JOURNAL @1046  EXIT
END

IF ~~ THEN BEGIN EvilDie
SAY @1022
IF ~~ THEN DO ~AddexperienceParty(1000)
               EraseJournalEntry(@1043)
               GiveGoldForce(50)
               EscapeArea()~ SOLVED_JOURNAL @1047  EXIT
END

IF ~~ THEN BEGIN GoodDie
SAY @1023
IF ~~ THEN DO ~AddexperienceParty(1000)
               EraseJournalEntry(@1043)
               GiveGoldForce(50)
               EscapeArea()~ SOLVED_JOURNAL @1048  EXIT
END

IF ~~ THEN BEGIN VeryWell
SAY @1024
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Explain1
SAY @1025
= @1026
IF ~~ THEN REPLY @1027 GOTO Explain2
IF ~~ THEN REPLY @1028 GOTO VeryWell
END

IF ~~ THEN BEGIN Explain2
SAY @1029
= @1030
IF ~~ THEN REPLY @1031 GOTO Task
IF ~~ THEN REPLY @1032 GOTO Beregost
IF ~~ THEN REPLY @1033 EXIT
END

IF ~~ THEN BEGIN Task
SAY @1034
= @1035
IF ~~ THEN REPLY @1036 GOTO Pay
IF ~~ THEN REPLY @1037 EXIT
IF ~~ THEN REPLY @1038 GOTO Pay
END

IF ~~ THEN BEGIN Beregost
SAY @1039
= @1040
IF ~~ THEN REPLY @1041 GOTO Pay
IF ~~ THEN REPLY @1037 EXIT
IF ~~ THEN REPLY @1038 GOTO Pay
END

IF ~~ THEN BEGIN Pay
SAY @1042
IF ~~ THEN DO ~SetGlobal("A#IMTutuPlot","GLOBAL",2)
               SetGlobal("A#SpawnGarent","GLOBAL",1)~ UNSOLVED_JOURNAL @1043 EXIT
END

//_________________________________________

BEGIN ~A#GARENT~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN MeetGarent
SAY @200
IF ~~ THEN REPLY @201 GOTO Old
IF ~~ THEN REPLY @202 GOTO Why
IF ~~ THEN REPLY @203 GOTO Why
END

IF ~~ THEN BEGIN Why
SAY @204
IF ~~ THEN REPLY @205 GOTO Old
IF ~~ THEN REPLY @206 GOTO Old
END

IF ~~ THEN BEGIN Old
SAY @207
= @208
= @209
= @2010
IF ~~ THEN REPLY @2011 GOTO Suicide
IF ~~ THEN REPLY @2012 GOTO ThanksBye
IF ~~ THEN REPLY @2013 GOTO Suicide
IF ~~ THEN REPLY @2014 GOTO ThanksBye
END

IF ~~ THEN BEGIN Suicide
SAY @2015
IF ~~ THEN DO ~SetGlobal("A#IMTutuPlot","GLOBAL",4)
               SetGlobal("A#GarentDead","GLOBAL",1)
               Wait(1)
               Kill(Myself)~ EXIT
END

IF ~~ THEN BEGIN ThanksBye
SAY @2016
IF ~~ THEN DO ~SetGlobal("A#IMTutuPlot","GLOBAL",4)
               SetGlobal("A#GarentFled","GLOBAL",1)
               EscapeArea()~ EXIT
END

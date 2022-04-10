BEGIN E#Rhys
BEGIN E#Kern
BEGIN E#FMob4
BEGIN E#MMob4
BEGIN E#MMob3
BEGIN E#MMob2
BEGIN E#FMob2
BEGIN E#MMob1
BEGIN E#FMob1

APPEND E#Rhys
IF ~NumTimesTalkedTo(0)~ THEN BEGIN MeetRhys
SAY @0
IF ~~ GOTO Rhys1
END
END

CHAIN E#Rhys Rhys1
@1
== E#Kern @2
== E#FMob4 @3
== E#MMob4 @4
== E#MMob3 @5
== E#MMob2 @6
== E#FMob2 @7
== E#MMob1 @8
== E#FMob1 @9
END
++ @10 GOTO RhysExplain
++ @11 GOTO RhysNothing
++ @12 GOTO RhysStarted
++ @13 GOTO RhysNothing

APPEND E#Rhys

IF ~~ RhysExplain
SAY @14
IF ~~ GOTO RhysNothing
END

IF ~~ RhysStarted
SAY @15
IF ~~ GOTO RhysNothing
END
END

CHAIN E#Rhys RhysNothing
@16
== E#Kern @17
== E#MMob4 @18
== E#FMob4 @19
== E#MMob2 @20
== E#MMob1 @21
== E#FMob1 @22
== E#Kern @23
== E#Rhys @24
END
++ @25 GOTO RhysHome
++ @26 GOTO RhysHome
++ @27 GOTO RhysHome
+~InParty("Cernd")~+ @28 GOTO RhysWorstCernd
+~!InParty("Cernd") InParty("Mazzy")~+ @28 GOTO RhysWorstMazzy
+~!InParty("Mazzy") InParty("Keldorn")~+ @28 GOTO RhysWorstKeldorn
+~!InParty("Mazzy") !InParty("Keldorn")
InParty("Nalia")~+ @28 GOTO RhysWorstNalia
+~!InParty("Mazzy") InParty("Keldorn")~+ @28 GOTO RhysWorstKeldorn
+~!InParty("Mazzy") !InParty("Keldorn")!InParty("Nalia")~+ @28 GOTO RhysWorst

CHAIN E#Rhys RhysHome
@29
== E#Kern @30
== E#FMob1 @31
== E#MMob2 @32
== E#MMob4 @33
== E#FMob4 @34
END
++ @35 GOTO RhysHome2
+~Class(Player1,MAGE_ALL)~+ @36 GOTO RhysHomeMage
+~Class(Player1,CLERIC_ALL)~+ @37 GOTO RhysHomeCleric
+~Class(Player1,FIGHTER_ALL)~+ @38 GOTO RhysHomeFighter
+~Class(Player1,THIEF_ALL)~+ @39 GOTO RhysHomeThief
+~Class(Player1,BARD_ALL)~+ @40 GOTO RhysHomeBard
+~Class(Player1,PALADIN_ALL)~+ @41 GOTO RhysHome2
+~Class(Player1,DRUID_ALL)~+ @42 GOTO RhysHomeDruid
+~Class(Player1,RANGER_ALL)~+ @43 GOTO RhysHomeRanger
++ @44 GOTO RhysHome3

CHAIN E#Rhys RhysHome2
@45
== E#FMob4 @46
== E#MMob1 @47
== E#MMob2 @48
== E#FMob2 @49
== E#FMob1 @50
== E#MMob1 @51
== E#Kern @52
== E#Rhys @53 DO
~AddexperienceParty(600)
ReputationInc(1)
ActionOverride("E#Rhys",EscapeArea())
ActionOverride("E#Kern",EscapeArea())
ActionOverride("E#MMob1",EscapeArea())
ActionOverride("E#FMob1",EscapeArea())
ActionOverride("E#MMob2",EscapeArea())
ActionOverride("E#FMob2",EscapeArea())
ActionOverride("E#FMob4",EscapeArea())
ActionOverride("E#MMob3",EscapeArea())
ActionOverride("E#MMob4",EscapeArea())~
EXIT

CHAIN E#Rhys RhysHomeMage
@54
== E#Kern @55
== E#FMob4 @56
== E#MMob3 @57
== E#Rhys @58
DO ~AddexperienceParty(600)
ReputationInc(-1)
ActionOverride("E#Rhys",EscapeArea())
ActionOverride("E#Kern",EscapeArea())
ActionOverride("E#MMob1",EscapeArea())
ActionOverride("E#FMob1",EscapeArea())
ActionOverride("E#MMob2",EscapeArea())
ActionOverride("E#FMob2",EscapeArea())
ActionOverride("E#FMob4",EscapeArea())
ActionOverride("E#MMob3",EscapeArea())
ActionOverride("E#MMob4",EscapeArea())~
EXIT

CHAIN E#Rhys RhysHomeCleric
@59
== E#Kern @60
== E#FMob4 @56
== E#MMob3 @57
== E#Rhys @58
DO ~AddexperienceParty(600)
ActionOverride("E#Rhys",EscapeArea())
ActionOverride("E#Kern",EscapeArea())
ActionOverride("E#MMob1",EscapeArea())
ActionOverride("E#FMob1",EscapeArea())
ActionOverride("E#MMob2",EscapeArea())
ActionOverride("E#FMob2",EscapeArea())
ActionOverride("E#FMob4",EscapeArea())
ActionOverride("E#MMob3",EscapeArea())
ActionOverride("E#MMob4",EscapeArea())~
EXIT

CHAIN E#Rhys RhysHomeFighter
@61
== E#Kern @62
== E#FMob4 @63
== E#MMob3 @57
== E#Rhys @58
DO ~AddexperienceParty(600)
ActionOverride("E#Rhys",EscapeArea())
ActionOverride("E#Kern",EscapeArea())
ActionOverride("E#MMob1",EscapeArea())
ActionOverride("E#FMob1",EscapeArea())
ActionOverride("E#MMob2",EscapeArea())
ActionOverride("E#FMob2",EscapeArea())
ActionOverride("E#FMob4",EscapeArea())
ActionOverride("E#MMob3",EscapeArea())
ActionOverride("E#MMob4",EscapeArea())~
EXIT

CHAIN E#Rhys RhysHomeThief
@64
== E#Kern @62
== E#FMob4 @65
== E#MMob3 @66
== E#Rhys @58
DO ~AddexperienceParty(600)
ReputationInc(-1)
ActionOverride("E#Rhys",EscapeArea())
ActionOverride("E#Kern",EscapeArea())
ActionOverride("E#MMob1",EscapeArea())
ActionOverride("E#FMob1",EscapeArea())
ActionOverride("E#MMob2",EscapeArea())
ActionOverride("E#FMob2",EscapeArea())
ActionOverride("E#FMob4",EscapeArea())
ActionOverride("E#MMob3",EscapeArea())
ActionOverride("E#MMob4",EscapeArea())~
EXIT

CHAIN E#Rhys RhysHomeBard
@67
== E#Kern @62
== E#FMob4 @68
== E#MMob3 @57
== E#Rhys @58
DO ~AddexperienceParty(600)
ActionOverride("E#Rhys",EscapeArea())
ActionOverride("E#Kern",EscapeArea())
ActionOverride("E#MMob1",EscapeArea())
ActionOverride("E#FMob1",EscapeArea())
ActionOverride("E#MMob2",EscapeArea())
ActionOverride("E#FMob2",EscapeArea())
ActionOverride("E#FMob4",EscapeArea())
ActionOverride("E#MMob3",EscapeArea())
ActionOverride("E#MMob4",EscapeArea())~
EXIT

CHAIN E#Rhys RhysHomeDruid
@69
== E#FMob1 @70
== E#MMob3 @71
== E#FMob2 @72
== E#Kern @30
== E#FMob4 @73
== E#Rhys @58
DO ~AddexperienceParty(600)
ReputationInc(1)
ActionOverride("E#Rhys",EscapeArea())
ActionOverride("E#Kern",EscapeArea())
ActionOverride("E#MMob1",EscapeArea())
ActionOverride("E#FMob1",EscapeArea())
ActionOverride("E#MMob2",EscapeArea())
ActionOverride("E#FMob2",EscapeArea())
ActionOverride("E#FMob4",EscapeArea())
ActionOverride("E#MMob3",EscapeArea())
ActionOverride("E#MMob4",EscapeArea())~
EXIT

CHAIN E#Rhys RhysHomeRanger
@74
== E#Kern @75
== E#FMob4 @76
== E#MMob3 @57
== E#Rhys @58
DO ~AddexperienceParty(600)
ActionOverride("E#Rhys",EscapeArea())
ActionOverride("E#Kern",EscapeArea())
ActionOverride("E#MMob1",EscapeArea())
ActionOverride("E#FMob1",EscapeArea())
ActionOverride("E#MMob2",EscapeArea())
ActionOverride("E#FMob2",EscapeArea())
ActionOverride("E#FMob4",EscapeArea())
ActionOverride("E#MMob3",EscapeArea())
ActionOverride("E#MMob4",EscapeArea())~
EXIT

CHAIN E#Rhys RhysHome3
@24
== E#Kern @77
== E#FMob4 @78
== E#MMob1 @79
== E#MMob3 @80
== E#FMob2 @81
== E#MMob2 @82
== E#Kern @30
== E#FMob4 @83
== E#Rhys @84
DO ~AddexperienceParty(600)
ActionOverride("E#Rhys",EscapeArea())
ActionOverride("E#Kern",EscapeArea())
ActionOverride("E#MMob1",EscapeArea())
ActionOverride("E#FMob1",EscapeArea())
ActionOverride("E#MMob2",EscapeArea())
ActionOverride("E#FMob2",EscapeArea())
ActionOverride("E#FMob4",EscapeArea())
ActionOverride("E#MMob3",EscapeArea())
ActionOverride("E#MMob4",EscapeArea())~
EXIT

CHAIN E#Rhys RhysWorst
@85
== E#Kern @86
== E#Rhys @87
== E#Kern @88
== E#MMob1 @89
== E#FMob1 @90 DO
~ActionOverride("E#Kern",DestroySelf())
ActionOverride("E#MMob4",DestroySelf())
ActionOverride("E#MMob1",EscapeArea())
ActionOverride("E#FMob4",EscapeArea())
ActionOverride("E#FMob1",EscapeArea())
ActionOverride("E#MMob2",EscapeArea())
ActionOverride("E#FMob2",EscapeArea())
ActionOverride("E#MMob3",EscapeArea())
ActionOverride("E#Rhys",DestroySelf())~
EXIT

CHAIN E#Rhys RhysWorstCernd
@91
== CERNDJ @92
== E#Kern @93
== CERNDJ @94
== E#Kern @95
== E#FMob2 @96
== E#MMob2 @97
== E#FMob1 @98
== E#MMob1 @99
== E#MMob3 @100
== E#FMob4 @101
== E#Kern @102
== CERNDJ @103
== E#MMob4 @104
== E#MMob1 @105
== E#Kern @106
== CERNDJ @107
== E#Kern @108
== E#Rhys @109
== CERNDJ @110 DO
~ActionOverride("E#Kern",EscapeArea())
ActionOverride("E#Rhys",EscapeArea())
ActionOverride("E#MMob1",EscapeArea())
ActionOverride("E#FMob1",EscapeArea())
ActionOverride("E#MMob2",EscapeArea())
ActionOverride("E#FMob2",EscapeArea())
ActionOverride("E#FMob4",EscapeArea())
ActionOverride("E#MMob3",EscapeArea())
ActionOverride("E#MMob4",EscapeArea())~
EXIT

CHAIN E#Rhys RhysWorstMazzy
@85
== MAZZYJ @111
= @112
= @113
== E#FMob1 @50
== E#MMob1 @51
== E#Kern @52
== E#Rhys @114 DO 
~ReputationInc(1)
ActionOverride("E#Rhys",EscapeArea())
ActionOverride("E#Kern",EscapeArea())
ActionOverride("E#MMob1",EscapeArea())
ActionOverride("E#FMob1",EscapeArea())
ActionOverride("E#MMob2",EscapeArea())
ActionOverride("E#FMob2",EscapeArea())
ActionOverride("E#FMob4",EscapeArea())
ActionOverride("E#MMob3",EscapeArea())
ActionOverride("E#MMob4",EscapeArea())~
EXIT

CHAIN E#Rhys RhysWorstKeldorn
@85
== KELDORJ @115
= @116
== E#Kern @117
== KELDORJ @118
== E#Kern @119
== KELDORJ @120
== E#Kern @30
== KELDORJ @121
== E#MMob1 @122
== E#Kern @123
== E#Rhys @124
DO ~ActionOverride("E#Rhys",EscapeArea())
ActionOverride("E#MMob1",EscapeArea())
ActionOverride("E#FMob1",EscapeArea())
ActionOverride("E#MMob2",EscapeArea())
ActionOverride("E#FMob2",EscapeArea())
ActionOverride("E#FMob4",EscapeArea())
ActionOverride("E#MMob3",EscapeArea())
ActionOverride("E#MMob4",EscapeArea())~
EXIT

CHAIN E#Rhys RhysWorstNalia
@85
== NALIAJ @125
= @126
== E#Kern @127
== NALIAJ @128
== E#Kern @129
== NALIAJ @130
== E#Kern @131
== E#FMob1 @56
== E#MMob3 @132
== E#Rhys @133
DO ~ReputationInc(-1) 
ActionOverride("E#Rhys",EscapeArea())
ActionOverride("E#Kern",EscapeArea())
ActionOverride("E#MMob1",EscapeArea())
ActionOverride("E#FMob1",EscapeArea())
ActionOverride("E#MMob2",EscapeArea())
ActionOverride("E#FMob2",EscapeArea())
ActionOverride("E#FMob4",EscapeArea())
ActionOverride("E#MMob3",EscapeArea())
ActionOverride("E#MMob4",EscapeArea())~
EXIT

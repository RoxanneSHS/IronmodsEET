ADD_STATE_TRIGGER booter 4 ~NumTimesTalkedToGT(4)~ 5 6 7 8

APPEND booter
 IF ~NumTimesTalkedTo(1)~ firststory
  SAY @0
=
@1
=
@2
  IF ~~ THEN EXIT
 END

 IF ~NumTimesTalkedTo(2)~ 2ndstory
  SAY @3
=
@4
=
@5
=
@6
  IF ~~ THEN EXIT
 END

 IF ~NumTimesTalkedTo(3)~ 3rdstory
  SAY @7
=
@8
=
@9
=
@10
=
@11
  IF ~~ THEN EXIT
 END

 IF ~NumTimesTalkedTo(4)~ 4thstory
  SAY @12
=
@13
=
@14
=
@15
  IF ~~ THEN DO ~SetGlobal("J#im8guardchat","GLOBAL",1)~ EXIT
 END

 IF WEIGHT #-1 ~G("J#im8booterrack",2)~ tortured
  SAY @16
  IF ~~ THEN DO~SG("J#im8booterrack",3)~ EXIT
 END
END

BEGIN J#im8tor
IF ~True()~ bootertalked
  SAY @17
=
@18
=
@19
  IF ~~ THEN EXIT
END


BEGIN J#im8grd
IF ~Global("J#im8guardchat","GLOBAL",0)~ introtalkingtypethin
  SAY @20
  IF ~~ THEN EXIT
END

IF ~Global("J#im8guardchat","GLOBAL",1)~ pain
 SAY @21
  ++ @22 + tellstory
  ++ @23 + tellstory
  ++ @24 + tellstory
  ++ @25 EXIT
  ++ @26 EXIT
END

IF ~~ tellstory
  SAY @27
=
@28
=
@29
=
@30
  ++ @31 DO ~SG("J#im8guardchat",3)~ GOTO freedum
  ++ @32 DO ~SG("J#im8guardchat",3)~ GOTO freedum
  ++ @33 DO ~SG("J#im8guardchat",2)~ EXIT
  ++ @34 DO ~SG("J#im8guardchat",2)~ EXIT
END

IF ~~ freedum
  SAY @35
=
@36
  IF ~~ THEN EXIT
END

IF ~G("J#im8guardchat",2)~ pleasefree
  SAY @37
=
@38
  ++ @31 DO ~SG("J#im8guardchat",3)~ GOTO freedum
  ++ @32 DO ~SG("J#im8guardchat",3)~ GOTO freedum
  ++ @33 DO ~SG("J#im8guardchat",2)~ EXIT
  ++ @34 DO ~SG("J#im8guardchat",2)~ EXIT
END


IF ~G("J#im8guardchat",4)~ letsgohurry
  SAY @39
=
@40
  IF ~~ THEN DO ~SG("J#im8guardchat",5) MoveToPointNoInterrupt([3350.900])~ EXIT
END

IF ~OR(3) G("J#im8guardchat",5) G("J#im8guardchat",6) G("J#im8guardchat",7) GlobalLT("SPRITE_IS_DEADJ#im8thg","GLOBAL",6)~ fightem
  SAY @41
  IF ~~ THEN EXIT
END

IF ~G("J#im8guardchat",7) GlobalGT("SPRITE_IS_DEADJ#im8thg","GLOBAL",5)~ fightemdone
  SAY @42
=
@43
++ @44 + revenge
++ @45 + bilioushatred
++ @46 + revenge
END

IF ~~ bilioushatred
  SAY @47
=
@48
  IF ~~ THEN DO ~SG("J#im8booterrack",1)
SG("J#im8guardcorpse",1)
EscapeArea()~ EXIT
END

IF ~~ revenge
  SAY @48
=
@49
  ++ @50 + goodadvice
  ++ @51 + badadvice
END

IF ~~ goodadvice
  SAY @52
=
@53
  IF ~~ THEN DO ~SG("J#im8booterrack",1)
EscapeArea()~ EXIT
END

IF ~~ badadvice
  SAY @54
  IF ~~ THEN DO ~SG("J#im8guardcorpse",1)
SG("J#im8booterrack",1)
EscapeArea()~ EXIT
END

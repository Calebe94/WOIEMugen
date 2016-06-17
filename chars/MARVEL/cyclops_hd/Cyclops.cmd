;===========================================================================
;========================_____________________________======================
;========================|                           |======================
;========================| MARVEL VS CAPCOM 2 |======================
;========================|                           |======================
;========================|              GUILE    |======================
;========================|___________________________|======================
;===========================================================================
;===========================================================================

;-| commands |-

;-| Super Motions |--------------------------------------------------------
;-| commands |-

[Command]
name = "MegaOpticBlast"
command = D, DF, F, x+y
time = 30
[Command]
name = "MegaOpticBlast"
command = D, DF, F, x+z
time = 30
[Command]
name = "MegaOpticBlast"
command = D, DF, F, y+z
time = 30

[Command]
name = "SuperOpticBlast"
command = D, DF, F, a+b
time = 30
[Command]
name = "SuperOpticBlast"
command = D, DF, F, a+c
time = 30
[Command]
name = "SuperOpticBlast"
command = D, DF, F, b+c
time = 30

[Command]
name = "GemActivate"
command = D, DF, F, s
time = 15

;-| Special Motions |------------------------------------------------------
;-| commands |-

[Command]
name = "OpticBlastX"
command = D, DF, F, x
time = 30
[Command]
name = "OpticBlastY"
command = D, DF, F, y
time = 30
[Command]
name = "OpticBlastZ"
command = D, DF, F, z
time = 30

[Command]
name = "OpticSweep"
command = F, DF, D, x
time = 30
[Command]
name = "OpticSweep"
command = F, DF, D, y
time = 30
[Command]
name = "OpticSweep"
command = F, DF, D, z
time = 30

[Command]
name = "GeneSpliceX"
command = F, D, DF, x
time = 25
[Command]
name = "GeneSpliceY"
command = F, D, DF, y
time = 25
[Command]
name = "GeneSpliceZ"
command = F, D, DF, z
time = 25

[Command]
name = "CycloneKick"
command = D, DB, B, a
time = 30
[Command]
name = "CycloneKick"
command = D, DB, B, b
time = 30
[Command]
name = "CycloneKick"
command = D, DB, B, c
time = 30

[Command]
name = "RushingPunches"
command = ~45$B, F, x
time = 5
[Command]
name = "RushingPunches"
command = ~45$B, F, y
time = 5
[Command]
name = "RushingPunches"
command = ~45$B, F, z
time = 5

[Command]
name = "RushingSlam"
command = ~45$B, F, a
time = 5
[Command]
name = "RushingSlam"
command = ~45$B, F, b
time = 5
[Command]
name = "RushingSlam"
command = ~45$B, F, c
time = 5

[Command]
name = "RecoveryRoll"
command = B, DB, D, x
time = 20
[Command]
name = "RecoveryRoll"
command = B, DB, D, y
time = 20
[Command]
name = "RecoveryRoll"
command = B, DB, D, z
time = 20
[Command]
name = "RecoveryRoll"
command = B, DB, D, a
time = 20
[Command]
name = "RecoveryRoll"
command = B, DB, D, b
time = 20
[Command]
name = "RecoveryRoll"
command = B, DB, D, c
time = 20

;-| Double Tap |-----------------------------------------------------------
;-| Eight commands |-

[Command]
name = "FF"       ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"       ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "DU"
command = D, U
time = 10

[Command]
name = "UF"
command = UF
time = 1

[Command]
name = "UB"
command = UB
time = 1

[Command]
name = "DUF"
command = D, UF
time = 10

[Command]
name = "DUB"
command = D, UB
time = 10

[Command]
name = "up"
command = U
time = 1

;-| Dir + Button |---------------------------------------------------------
;-| Five commands |-

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

;-| 2/3 Button Combination |-----------------------------------------------
;-| Four commands |-

[Command]
name = "recovery" ;Required (do not remove)
command = a+b
time = 1

[Command]
name = "TwoPunch"
command = x+y
time = 1
[Command]
name = "TwoPunch"
command = x+z
time = 1
[Command]
name = "TwoPunch"
command = y+z
time = 1

;-| Single Button |---------------------------------------------------------
;-| Fourteen commands |-

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "fwd"
command = F
time = 1

;-| Hold Dir |--------------------------------------------------------------
;-| Twelve commands |-

[Command]
name = "holdfwd"  ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup"   ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownfwd"
command = /DF
time = 1

[Command]
name = "holddownback"
command = /DB
time = 1

[Command]
name = "holdupfwd"
command = /UF
time = 1

[Command]
name = "holdupback"
command = /UB
time = 1

[Command]
name = "holdfwd2"
command = /F
time = 1

[Command]
name = "holdback2"
command = /B
time = 1

[Command]
name = "holdup2"
command = /U
time = 1

[Command]
name = "holddown2"
command = /D
time = 1

;-| CPU Commands |----------------------------------------------------------
;-| Commands |-

[Command]
name = "cpu1"
command = U, U, U, U
time = 1
[Command]
name = "cpu2"
command = U, U, U, D
time = 1
[Command]
name = "cpu3"
command = U, U, D, D
time = 1
[Command]
name = "cpu4"
command = U, D, D, D
time = 1
[Command]
name = "cpu5"
command = D, D, D, D
time = 1
[Command]
name = "cpu6"
command = D, D, D, U
time = 1
[Command]
name = "cpu7"
command = D, D, U, U
time = 1
[Command]
name = "cpu8"
command = D, U, U, U
time = 1
[Command]
name = "cpu9"
command = U, D, U, U
time = 1
[Command]
name = "cpu10"
command = U, U, D, U
time = 1
[Command]
name = "cpu11"
command = D, U, U, D
time = 1
[Command]
name = "cpu12"
command = U, D, D, U
time = 1
[Command]
name = "cpu13"
command = D, U, D, U
time = 1
[Command]
name = "cpu14"
command = U, D, U, D
time = 1
[Command]
name = "cpu15"
command = F, F, F, F
time = 1
[Command]
name = "cpu16"
command = B, B, B, B
time = 1
[Command]
name = "cpu17"
command = F, B, F, F
time = 1
[Command]
name = "cpu18"
command = F, F, B, F
time = 1
[Command]
name = "cpu19"
command = B, F, F, F
time = 1
[Command]
name = "cpu20"
command = F, F, F, B
time = 1
[Command]
name = "cpu21"
command = F, B, B, F
time = 1
[Command]
name = "cpu22"
command = B, F, F, B
time = 1
[Command]
name = "cpu23"
command = F, B, F, B
time = 1
[Command]
name = "cpu24"
command = B, F, B, F
time = 1
[Command]
name = "cpu25"
command = D, F, D, F
time = 1
[Command]
name = "cpu26"
command = D, B, D, B
time = 1
[Command]
name = "cpu27"
command = D, B, D, F
time = 1
[Command]
name = "cpu28"
command = D, F, D, B
time = 1
[Command]
name = "cpu29"
command = U, F, D, B
time = 1
[Command]
name = "cpu30"
command = U, B, D, F
time = 1
[Command]
name = "cpu31"
command = B, D, F, U
time = 1
[Command]
name = "cpu32"
command = F, D, B, U
time = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;-----------------------------Human Commands--------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

[Statedef -1]

;-|AI Routine|----------------------------------------------------------------------------


;-|Signal AI Routines|--------------------------------------------------------------------
[State -1]
type = Null ;VarSet
v = 7
value = 1
triggerall = RoundState != 3
triggerall = RoundState != 4
trigger1 = command = "cpu1"
trigger2 = command = "cpu2"
trigger3 = command = "cpu3"
trigger4 = command = "cpu4"
trigger5 = command = "cpu5"
trigger6 = command = "cpu6"
trigger7 = command = "cpu7"
trigger8 = command = "cpu8"
trigger9 = command = "cpu9"
trigger10 = command = "cpu10"
trigger11 = command = "cpu11"
trigger12 = command = "cpu12"
trigger13 = command = "cpu13"
trigger14 = command = "cpu14"
trigger15 = command = "cpu15"
trigger16 = command = "cpu16"
trigger17 = command = "cpu17"
trigger18 = command = "cpu18"
trigger19 = command = "cpu19"
trigger20 = command = "cpu20"
trigger21 = command = "cpu21"
trigger22 = command = "cpu22"
trigger23 = command = "cpu23"
trigger24 = command = "cpu24"
trigger25 = command = "cpu25"
trigger26 = command = "cpu26"
trigger27 = command = "cpu27"
trigger28 = command = "cpu28"
trigger29 = command = "cpu29"
trigger30 = command = "cpu30"
trigger31 = command = "cpu31"
trigger32 = command = "cpu32"

[State -1]
type = VarSet
v = 7
value = 0
trigger1 = RoundState = 3
trigger2 = RoundState = 4

;---------------------------------------------------------------------------
;--------------------------------Rushes-------------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Standing Variant Strike
[State -1]
type = ChangeState
value = 900
triggerall = StateType = S
triggerall = Power >= 1000
triggerall = !var(7)
triggerall = !var(56)
triggerall = (command = "x" && command = "b") || (command = "x" && command = "c") || (command = "y" && command = "c")
triggerall = StateNo != [800,999]
;triggerall = StateNo != [3600,3699]
triggerall = var(3) = 0
trigger1 = StateNo = 150
trigger2 = var(9) > 0

;---------------------------------------------------------------------------
; Crouching Variant Strike
[State -1]
type = ChangeState
value = 920
triggerall = StateType = C
triggerall = Power >= 1000
triggerall = !var(7)
triggerall = (command = "x" && command = "b") || (command = "x" && command = "c") || (command = "y" && command = "c")
triggerall = StateNo != [800,999]
;triggerall = StateNo != [3600,3699]
triggerall = var(3) = 0
trigger1 = StateNo = 152
trigger2 = var(9) > 0

;---------------------------------------------------------------------------
; Jumping Variant Strike
[State -1]
type = ChangeState
value = 940
triggerall = StateType = A
triggerall = Power >= 1000
triggerall = !var(7)
triggerall = !var(56)
triggerall = (command = "x" && command = "b") || (command = "x" && command = "c") || (command = "y" && command = "c")
triggerall = StateNo != [800,999]
;triggerall = StateNo != [3600,3699]
triggerall = var(3) = 0
trigger1 = StateNo = 154
trigger2 = var(9) > 0

;---------------------------------------------------------------------------
;--------------------------------Hypers-------------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Mega Optic Blast
[State -1]
type = ChangeState
value = 3000
triggerall = !var(7)
triggerall = statetype != A
triggerall = power >= 1000
triggerall = command = "MegaOpticBlast"
trigger1 = ctrl
trigger2 = stateno = [200,201]
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = [230,231]
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 251
trigger9 = stateno = 400
trigger10 = stateno = 410
trigger11 = stateno = 420
trigger12 = stateno = 430
trigger13 = stateno = 440
trigger14 = stateno = 450
trigger15 = ((stateno = 1000) && (AnimElem = 11, < 0))
trigger16 = ((stateno = 1001) && (AnimElem = 13, < 0))
trigger17 = ((stateno = 1002) && (AnimElem = 15, < 0))
trigger18 = ((stateno = 1050) && (AnimElem = 6, < 0))
trigger19 = stateno = 1400
trigger20 = ((stateno = 1201) && (AnimElem = 9, < 0))
trigger21 = stateno = [1300,1303]
trigger22 = StateNo = 900 && PrevStateNo != [150,154]
trigger23 = StateNo = 920 && PrevStateNo != [150,154]
trigger24 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Kuuchu Mega Optic Blast
[State -1]
type = ChangeState
value = 3050
triggerall = power >= 1000
triggerall = !var(7)
triggerall = statetype = A
triggerall = command = "MegaOpticBlast"
trigger1 = ctrl
trigger2 = stateno = 600
trigger3 = stateno = 610 || stateno = 611
trigger4 = stateno = 620 || stateno = 621
trigger5 = stateno = 630 || stateno = 631
trigger6 = stateno = 640 || stateno = 641
trigger7 = stateno = 650 || stateno = 651
trigger8 = ((stateno = 1010) && (AnimElem = 14, < 0))
trigger9 = stateno = 1401
trigger10 = stateno = 1402
trigger11 = stateno = 1411
trigger12 = stateno = 1412
trigger13 = stateno = 1413
trigger14 = stateno = 1421
trigger15 = stateno = 1422
trigger16 = stateno = 1423
trigger17 = stateno = 1424
trigger18 = stateno = 1200
trigger19 = StateNo = 900 && PrevStateNo != [150,154]
trigger20 = StateNo = 920 && PrevStateNo != [150,154]
trigger21 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Super Optic Blast
[State -1]
type = ChangeState
value = 3500
triggerall = power >= 1000
triggerall = !var(7)
triggerall = statetype != A
triggerall = command = "SuperOpticBlast"
trigger1 = ctrl
trigger2 = stateno = [200,201]
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = [230,231]
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 251
trigger9 = stateno = 400
trigger10 = stateno = 410
trigger11 = stateno = 420
trigger12 = stateno = 430
trigger13 = stateno = 440
trigger14 = stateno = 450
trigger15 = ((stateno = 1000) && (AnimElem = 11, < 0))
trigger16 = ((stateno = 1001) && (AnimElem = 13, < 0))
trigger17 = ((stateno = 1002) && (AnimElem = 15, < 0))
trigger18 = ((stateno = 1050) && (AnimElem = 6, < 0))
trigger19 = stateno = 1400
trigger20 = ((stateno = 1201) && (AnimElem = 9, < 0))
trigger21 = stateno = [1300,1303]
trigger22 = StateNo = 900 && PrevStateNo != [150,154]
trigger23 = StateNo = 920 && PrevStateNo != [150,154]
trigger24 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Kuuchu Super Optic Blast
[State -1]
type = ChangeState
value = 3600
triggerall = power >= 1000
triggerall = !var(7)
triggerall = statetype = A
triggerall = command = "SuperOpticBlast"
trigger1 = ctrl
trigger2 = stateno = 600
trigger3 = stateno = 610 || stateno = 611
trigger4 = stateno = 620 || stateno = 621
trigger5 = stateno = 630 || stateno = 631
trigger6 = stateno = 640 || stateno = 641
trigger7 = stateno = 650 || stateno = 651
trigger8 = ((stateno = 1010) && (AnimElem = 14, < 0))
trigger9 = stateno = 1401
trigger10 = stateno = 1402
trigger11 = stateno = 1411
trigger12 = stateno = 1412
trigger13 = stateno = 1413
trigger14 = stateno = 1421
trigger15 = stateno = 1422
trigger16 = stateno = 1423
trigger17 = stateno = 1424
trigger18 = stateno = 1200
trigger19 = StateNo = 900 && PrevStateNo != [150,154]
trigger20 = StateNo = 920 && PrevStateNo != [150,154]
trigger21 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
;--------------------------------Dashes-------------------------------------
;---------------------------------------------------------------------------

;RunBack
[State -1]
type = ChangeState
value = 105
triggerall = (command = "holdback2" && command = "TwoPunch") || (StateType != A && command = "BB")
triggerall = StateType != A
trigger1 = StateNo != [100,109]
trigger1 = ctrl
trigger2 = StateNo = 900 && PrevStateNo != [150,154]
trigger3 = StateNo = 920 && PrevStateNo != [150,154]
trigger4 = StateNo = 940 && PrevStateNo != [150,154]

;RunFwd
[State -1]
type = ChangeState
value = 100
triggerall = (command = "TwoPunch") || (StateType != A && command = "FF")
triggerall = StateType != A
trigger1 = StateNo != [100,109]
trigger1 = ctrl
trigger2 = StateNo = 900 && PrevStateNo != [150,154]
trigger3 = StateNo = 920 && PrevStateNo != [150,154]
trigger4 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
;-------------------------------Specials------------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Gene Splice X
[State -1]
type = ChangeState
value = 1400
triggerall = !var(7)
triggerall = statetype != A
triggerall = command = "GeneSpliceX"
trigger1 = ctrl
trigger2 = stateno = [200,201]
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = [230,231]
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 251
trigger9 = stateno = 400
trigger10 = stateno = 410
trigger11 = stateno = 420
trigger12 = stateno = 430
trigger13 = stateno = 440
trigger14 = stateno = 450
trigger15 = StateNo = 900 && PrevStateNo != [150,154]
trigger16 = StateNo = 920 && PrevStateNo != [150,154]
trigger17 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Gene Splice Y
[State -1]
type = ChangeState
value = 1410
triggerall = !var(7)
triggerall = statetype != A
triggerall = command = "GeneSpliceY"
trigger1 = ctrl
trigger2 = stateno = [200,201]
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = [230,231]
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 251
trigger9 = stateno = 400
trigger10 = stateno = 410
trigger11 = stateno = 420
trigger12 = stateno = 430
trigger13 = stateno = 440
trigger14 = stateno = 450
trigger15 = StateNo = 900 && PrevStateNo != [150,154]
trigger16 = StateNo = 920 && PrevStateNo != [150,154]
trigger17 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Gene Splice Z
[State -1]
type = ChangeState
value = 1420
triggerall = !var(7)
triggerall = statetype != A
triggerall = command = "GeneSpliceZ"
trigger1 = ctrl
trigger2 = stateno = [200,201]
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = [230,231]
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 251
trigger9 = stateno = 400
trigger10 = stateno = 410
trigger11 = stateno = 420
trigger12 = stateno = 430
trigger13 = stateno = 440
trigger14 = stateno = 450
trigger15 = StateNo = 900 && PrevStateNo != [150,154]
trigger16 = StateNo = 920 && PrevStateNo != [150,154]
trigger17 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Rushing Punches
[State -1]
type = ChangeState
value = 1300
triggerall = !var(7)
triggerall = statetype != A
triggerall = command = "RushingPunches"
trigger1 = ctrl
trigger2 = stateno = [200,201]
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = [230,231]
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 251
trigger9 = stateno = 400
trigger10 = stateno = 410
trigger11 = stateno = 420
trigger12 = stateno = 430
trigger13 = stateno = 440
trigger14 = stateno = 450
trigger15 = StateNo = 900 && PrevStateNo != [150,154]
trigger16 = StateNo = 920 && PrevStateNo != [150,154]
trigger17 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Optic Blast X
[State -1]
type = ChangeState
value = 1000
triggerall = !var(7)
triggerall = statetype != A
triggerall = command = "OpticBlastX"
trigger1 = ctrl
trigger2 = stateno = [200,201]
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = [230,231]
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 251
trigger9 = stateno = 400
trigger10 = stateno = 410
trigger11 = stateno = 420
trigger12 = stateno = 430
trigger13 = stateno = 440
trigger14 = stateno = 450
trigger15 = StateNo = 900 && PrevStateNo != [150,154]
trigger16 = StateNo = 920 && PrevStateNo != [150,154]
trigger17 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Optic Blast Y
[State -1]
type = ChangeState
value = 1001
triggerall = !var(7)
triggerall = statetype != A
triggerall = command = "OpticBlastY"
trigger1 = ctrl
trigger2 = stateno = [200,201]
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = [230,231]
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 251
trigger9 = stateno = 400
trigger10 = stateno = 410
trigger11 = stateno = 420
trigger12 = stateno = 430
trigger13 = stateno = 440
trigger14 = stateno = 450
trigger15 = StateNo = 900 && PrevStateNo != [150,154]
trigger16 = StateNo = 920 && PrevStateNo != [150,154]
trigger17 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Optic Blast Z
[State -1]
type = ChangeState
value = 1002
triggerall = !var(7)
triggerall = statetype != A
triggerall = command = "OpticBlastZ"
trigger1 = ctrl
trigger2 = stateno = [200,201]
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = [230,231]
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 251
trigger9 = stateno = 400
trigger10 = stateno = 410
trigger11 = stateno = 420
trigger12 = stateno = 430
trigger13 = stateno = 440
trigger14 = stateno = 450
trigger15 = StateNo = 900 && PrevStateNo != [150,154]
trigger16 = StateNo = 920 && PrevStateNo != [150,154]
trigger17 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Kuuchu Optic Blast
[State -1]
type = ChangeState
value = 1100
triggerall = !var(7)
triggerall = statetype = A
triggerall = command = "OpticBlastX" || command = "OpticBlastY" || command = "OpticBlastZ"
triggerall = Pos Y <= -20
trigger1 = ctrl
trigger2 = stateno = 600
trigger3 = stateno = 610 || stateno = 611
trigger4 = stateno = 620 || stateno = 621
trigger5 = stateno = 630 || stateno = 631
trigger6 = stateno = 640 || stateno = 641
trigger7 = stateno = 650 || stateno = 651
trigger8 = StateNo = 900 && PrevStateNo != [150,154]
trigger9 = StateNo = 920 && PrevStateNo != [150,154]
trigger10 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Optic Sweep
[State -1]
type = ChangeState
value = 1050
triggerall = !var(7)
triggerall = statetype != A
triggerall = command = "OpticSweep"
trigger1 = ctrl
trigger2 = stateno = [200,201]
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = [230,231]
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 251
trigger9 = stateno = 400
trigger10 = stateno = 410
trigger11 = stateno = 420
trigger12 = stateno = 430
trigger13 = stateno = 440
trigger14 = stateno = 450
trigger15 = StateNo = 900 && PrevStateNo != [150,154]
trigger16 = StateNo = 920 && PrevStateNo != [150,154]
trigger17 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Cyclone Kick
[State -1]
type = ChangeState
value = 1200
triggerall = !var(7)
triggerall = statetype != A
triggerall = command = "CycloneKick"
trigger1 = ctrl
trigger2 = stateno = [200,201]
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = [230,231]
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 251
trigger9 = stateno = 400
trigger10 = stateno = 410
trigger11 = stateno = 420
trigger12 = stateno = 430
trigger13 = stateno = 440
trigger14 = stateno = 450
trigger15 = StateNo = 900 && PrevStateNo != [150,154]
trigger16 = StateNo = 920 && PrevStateNo != [150,154]
trigger17 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Rushing Slam
[State -1]
type = ChangeState
value = 1500
triggerall = !var(7)
triggerall = statetype != A
triggerall = command = "RushingSlam"
trigger1 = ctrl
trigger2 = stateno = [200,201]
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = [230,231]
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 251
trigger9 = stateno = 400
trigger10 = stateno = 410
trigger11 = stateno = 420
trigger12 = stateno = 430
trigger13 = stateno = 440
trigger14 = stateno = 450
trigger15 = StateNo = 900 && PrevStateNo != [150,154]
trigger16 = StateNo = 920 && PrevStateNo != [150,154]
trigger17 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
;--------------------------------Basics-------------------------------------
;---------------------------------------------------------------------------

;--|[ Throws ]}--
;---------------------------------------------------------------------------
; s. Strong Throw
[State -1]
type = ChangeState
value = 800
triggerall = !var(7)
triggerall = StateType = S
triggerall = p2StateType = S || p2StateType = C
triggerall = command = "holdfwd2" || command = "holdback2"
triggerall = command = "y"
triggerall = p2dist X <= 65
triggerall = p2dist X > 0
triggerall = p2dist Y <= 50
triggerall = p2dist Y > -50
triggerall = StateNo != 100
triggerall = enemyNear, StateNo != [120,159]
trigger1 = ctrl
trigger2 = StateNo = 900 && PrevStateNo != [150,154]
trigger3 = StateNo = 920 && PrevStateNo != [150,154]
trigger4 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; s. Fierce Throw
[State -1]
type = ChangeState
value = 820
triggerall = !var(7)
triggerall = StateType = S
triggerall = p2StateType = S || p2StateType = C
triggerall = command = "holdfwd2" || command = "holdback2"
triggerall = command = "z"
triggerall = p2dist X <= 65
triggerall = p2dist X > 0
triggerall = p2dist Y <= 50
triggerall = p2dist Y > -50
triggerall = StateNo != 100
triggerall = enemyNear, StateNo != [120,159]
trigger1 = ctrl
trigger2 = StateNo = 900 && PrevStateNo != [150,154]
trigger3 = StateNo = 920 && PrevStateNo != [150,154]
trigger4 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; s. Roundhouse Throw
[State -1]
type = ChangeState
value = 830
triggerall = !var(7)
triggerall = StateType = S
triggerall = p2StateType = S || p2StateType = C
triggerall = command = "holdfwd2"
triggerall = command = "c"
triggerall = p2dist X <= 65
triggerall = p2dist X > 0
triggerall = p2dist Y <= 50
triggerall = p2dist Y > -50
triggerall = StateNo != 100
triggerall = enemyNear, StateNo != [120,159]
trigger1 = ctrl
trigger2 = StateNo = 900 && PrevStateNo != [150,154]
trigger3 = StateNo = 920 && PrevStateNo != [150,154]
trigger4 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; s. Roundhouse Throw
[State -1]
type = ChangeState
value = 840
triggerall = !var(7)
triggerall = StateType = C
triggerall = p2StateType = S || p2StateType = C
triggerall = command = "holddownfwd"
triggerall = command = "c"
triggerall = p2dist X <= 65
triggerall = p2dist X > 0
triggerall = p2dist Y <= 50
triggerall = p2dist Y > -50
triggerall = enemyNear, StateNo != [120,159]
trigger1 = ctrl
trigger2 = StateNo = 900 && PrevStateNo != [150,154]
trigger3 = StateNo = 920 && PrevStateNo != [150,154]
trigger4 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; j. Fierce Throw Forward
[State -1]
type = ChangeState
value = 850
triggerall = !var(7)
triggerall = StateType = A
triggerall = p2StateType = A
triggerall = command = "holdfwd2" || command = "holdback2"
triggerall = command = "z"
triggerall = p2dist X <= 65
triggerall = p2dist X > 0
triggerall = p2dist Y <= 50
triggerall = p2dist Y > -50
triggerall = Pos Y < -80
triggerall = enemyNear, StateNo != [120,159]
trigger1 = ctrl
trigger2 = StateNo = 900 && PrevStateNo != [150,154]
trigger3 = StateNo = 920 && PrevStateNo != [150,154]
trigger4 = StateNo = 940 && PrevStateNo != [150,154]

;--|[ Standing ]|--
;---------------------------------------------------------------------------
; s. Jab
[State -1]
type = ChangeState
value = 200
triggerall = !var(7)
triggerall = statetype != A
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 = StateNo = 900 && PrevStateNo != [150,154]
trigger3 = StateNo = 920 && PrevStateNo != [150,154]
trigger4 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; s. Strong
[State -1]
type = ChangeState
value = 210
triggerall = !var(7)
triggerall = statetype != A
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 = stateno = [200,201]
trigger2 = MoveContact
trigger3 = stateno = [230,231]
trigger3 = MoveContact
trigger4 = stateno = 400
trigger4 = MoveContact
trigger5 = stateno = 430
trigger5 = MoveContact
trigger6 = StateNo = 900 && PrevStateNo != [150,154]
trigger7 = StateNo = 920 && PrevStateNo != [150,154]
trigger8 = StateNo = 940 && PrevStateNo != [150,154]

; Launcher followup jump
[State -1, Launcher followup]
type = ChangeState
value = 41
triggerall = command = "holdup" 
trigger1 = stateno = 210 && movehit
;---------------------------------------------------------------------------
; s. Fierce
[State -1]
type = ChangeState
value = 220
triggerall = !var(7)
triggerall = statetype != A
triggerall = NumProjId(221) = 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 = stateno = [200,201]
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveGuarded
trigger4 = stateno = [230,231]
trigger4 = MoveContact
trigger5 = stateno = 240
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveGuarded
trigger10 = StateNo = 900 && PrevStateNo != [150,154]
trigger11 = StateNo = 920 && PrevStateNo != [150,154]
trigger12 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; s. Short
[State -1]
type = ChangeState
value = 230
triggerall = !var(7)
triggerall = statetype != A
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 = stateno = [200,201]
trigger2 = MoveContact
trigger3 = stateno = 400
trigger3 = MoveContact
trigger4 = StateNo = 900 && PrevStateNo != [150,154]
trigger5 = StateNo = 920 && PrevStateNo != [150,154]
trigger6 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; s. Forward
[State -1]
type = ChangeState
value = 240
triggerall = !var(7)
triggerall = statetype != A
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 = stateno = [200,201]
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveGuarded
trigger4 = stateno = [230,231]
trigger4 = MoveContact
trigger5 = stateno = 400
trigger5 = MoveContact
trigger6 = stateno = 410
trigger6 = MoveContact
trigger7 = stateno = 430
trigger7 = MoveContact
trigger8 = StateNo = 900 && PrevStateNo != [150,154]
trigger9 = StateNo = 920 && PrevStateNo != [150,154]
trigger10 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; s. Roundhouse
[State -1]
type = ChangeState
value = 250
triggerall = !var(7)
triggerall = statetype != A
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 = stateno = [200,201]
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveGuarded
trigger4 = stateno = 220
trigger4 = MoveContact
trigger5 = stateno = [230,231]
trigger5 = MoveContact
trigger6 = stateno = 240
trigger6 = MoveContact
trigger7 = stateno = 400
trigger7 = MoveContact
trigger8 = stateno = 410
trigger8 = MoveContact
trigger9 = stateno = 420
trigger9 = MoveContact
trigger10 = stateno = 430
trigger10 = MoveContact
trigger11 = stateno = 440
trigger11 = MoveGuarded
trigger12 = StateNo = 900 && PrevStateNo != [150,154]
trigger13 = StateNo = 920 && PrevStateNo != [150,154]
trigger14 = StateNo = 940 && PrevStateNo != [150,154]

;--|[ Crouching ]|--
;---------------------------------------------------------------------------
; c. Jab
[State -1]
type = ChangeState
value = 400
triggerall = !var(7)
triggerall = statetype != A
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = ctrl
trigger2 = StateNo = 900 && PrevStateNo != [150,154]
trigger3 = StateNo = 920 && PrevStateNo != [150,154]
trigger4 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; c. Strong
[State -1]
type = ChangeState
value = 410
triggerall = !var(7)
triggerall = statetype != A
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = ctrl
trigger2 = stateno = [200,201]
trigger2 = MoveContact
trigger3 = stateno = [230,231]
trigger3 = MoveContact
trigger4 = stateno = 400
trigger4 = MoveContact
trigger5 = stateno = 430
trigger5 = MoveContact
trigger6 = StateNo = 900 && PrevStateNo != [150,154]
trigger7 = StateNo = 920 && PrevStateNo != [150,154]
trigger8 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; c. Fierce
[State -1]
type = ChangeState
value = 420
triggerall = !var(7)
triggerall = statetype != A
triggerall = NumProjId(221) = 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = ctrl
trigger2 = stateno = [200,201]
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveGuarded
trigger4 = stateno = [230,231]
trigger4 = MoveContact
trigger5 = stateno = 240
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveGuarded
trigger10 = StateNo = 900 && PrevStateNo != [150,154]
trigger11 = StateNo = 920 && PrevStateNo != [150,154]
trigger12 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; c. Short
[State -1]
type = ChangeState
value = 430
triggerall = !var(7)
triggerall = statetype != A
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = ctrl
trigger2 = stateno = [200,201]
trigger2 = MoveContact
trigger3 = stateno = 400
trigger3 = MoveContact
trigger4 = StateNo = 900 && PrevStateNo != [150,154]
trigger5 = StateNo = 920 && PrevStateNo != [150,154]
trigger6 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; c. Forward
[State -1]
type = ChangeState
value = 440
triggerall = !var(7)
triggerall = statetype != A
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = ctrl
trigger2 = stateno = [200,201]
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveGuarded
trigger4 = stateno = [230,231]
trigger4 = MoveContact
trigger5 = stateno = 400
trigger5 = MoveContact
trigger6 = stateno = 410
trigger6 = MoveContact
trigger7 = stateno = 430
trigger7 = MoveContact
trigger8 = StateNo = 900 && PrevStateNo != [150,154]
trigger9 = StateNo = 920 && PrevStateNo != [150,154]
trigger10 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; c. Roundhouse
[State -1]
type = ChangeState
value = 450
triggerall = !var(7)
triggerall = statetype != A
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = ctrl
trigger2 = stateno = [200,201]
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveGuarded
trigger4 = stateno = 220
trigger4 = MoveContact
trigger5 = stateno = [230,231]
trigger5 = MoveContact
trigger6 = stateno = 240
trigger6 = MoveContact
trigger7 = stateno = 400
trigger7 = MoveContact
trigger8 = stateno = 410
trigger8 = MoveContact
trigger9 = stateno = 420
trigger9 = MoveContact
trigger10 = stateno = 430
trigger10 = MoveContact
trigger11 = stateno = 440
trigger11 = MoveGuarded
trigger12 = StateNo = 900 && PrevStateNo != [150,154]
trigger13 = StateNo = 920 && PrevStateNo != [150,154]
trigger14 = StateNo = 940 && PrevStateNo != [150,154]

;--|[ Jumping ]|--
;---------------------------------------------------------------------------
; j. Jab
[State -1]
type = ChangeState
value = 600
triggerall = !var(7)
triggerall = statetype = A
triggerall = command = "x"
trigger1 = ctrl
trigger2 = StateNo = 900 && PrevStateNo != [150,154]
trigger3 = StateNo = 920 && PrevStateNo != [150,154]
trigger4 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; j. Strong Special
[State -1]
type = ChangeState
value = 611
triggerall = !var(7)
triggerall = statetype = A
triggerall = command = "down_y"
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = stateno = 630 || stateno = 631
trigger3 = MoveContact
trigger4 = StateNo = 900 && PrevStateNo != [150,154]
trigger5 = StateNo = 920 && PrevStateNo != [150,154]
trigger6 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; j. Strong
[State -1]
type = ChangeState
value = 610
triggerall = !var(7)
triggerall = statetype = A
triggerall = command = "y"
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = stateno = 630 || stateno = 631
trigger3 = MoveContact
trigger4 = StateNo = 900 && PrevStateNo != [150,154]
trigger5 = StateNo = 920 && PrevStateNo != [150,154]
trigger6 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; j. Fierce Special
[State -1]
type = ChangeState
value = 621
triggerall = !var(7)
triggerall = statetype = A
triggerall = command = "down_z"
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = stateno = 610 || stateno = 611
trigger3 = MoveContact
trigger4 = stateno = 630 || stateno = 631
trigger4 = MoveContact
trigger5 = stateno = 640 || stateno = 641
trigger5 = MoveContact
trigger6 = StateNo = 900 && PrevStateNo != [150,154]
trigger7 = StateNo = 920 && PrevStateNo != [150,154]
trigger8 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; j. Fierce
[State -1]
type = ChangeState
value = 620
triggerall = !var(7)
triggerall = statetype = A
triggerall = command = "z"
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = stateno = 610 || stateno = 611
trigger3 = MoveContact
trigger4 = stateno = 630 || stateno = 631
trigger4 = MoveContact
trigger5 = stateno = 640 || stateno = 641
trigger5 = MoveContact
trigger6 = StateNo = 900 && PrevStateNo != [150,154]
trigger7 = StateNo = 920 && PrevStateNo != [150,154]
trigger8 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; j. Short Special
[State -1]
type = ChangeState
value = 631
triggerall = !var(7)
triggerall = statetype = A
triggerall = command = "down_a"
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = StateNo = 900 && PrevStateNo != [150,154]
trigger4 = StateNo = 920 && PrevStateNo != [150,154]
trigger5 =StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; j. Short
[State -1]
type = ChangeState
value = 630
triggerall = !var(7)
triggerall = statetype = A
triggerall = command = "a"
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = StateNo = 900 && PrevStateNo != [150,154]
trigger4 = StateNo = 920 && PrevStateNo != [150,154]
trigger5 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; j. Forward Special
[State -1]
type = ChangeState
value = 641
triggerall = !var(7)
triggerall = statetype = A
triggerall = command = "down_b"
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = stateno = 610 || stateno = 611
trigger3 = MoveContact
trigger4 = stateno = 630 || stateno = 631
trigger4 = MoveContact
trigger5 = StateNo = 900 && PrevStateNo != [150,154]
trigger6 = StateNo = 920 && PrevStateNo != [150,154]
trigger7 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; j. Forward
[State -1]
type = ChangeState
value = 640
triggerall = !var(7)
triggerall = statetype = A
triggerall = command = "b"
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = stateno = 610 || stateno = 611
trigger3 = MoveContact
trigger4 = stateno = 630 || stateno = 631
trigger4 = MoveContact
trigger5 = StateNo = 900 && PrevStateNo != [150,154]
trigger6 = StateNo = 920 && PrevStateNo != [150,154]
trigger7 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; j. Roundhouse Special
[State -1]
type = ChangeState
value = 651
triggerall = !var(7)
triggerall = statetype = A
triggerall = command = "down_c"
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = stateno = 610 || stateno = 611
trigger3 = MoveContact
trigger4 = stateno = 620 || stateno = 621
trigger4 = MoveContact
trigger5 = stateno = 630 || stateno = 631
trigger5 = MoveContact
trigger6 = stateno = 640 || stateno = 641
trigger6 = MoveContact
trigger7 = StateNo = 900 && PrevStateNo != [150,154]
trigger8 = StateNo = 920 && PrevStateNo != [150,154]
trigger9 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; j. Roundhouse
[State -1]
type = ChangeState
value = 650
triggerall = !var(7)
triggerall = statetype = A
triggerall = command = "c"
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = stateno = 610 || stateno = 611
trigger3 = MoveContact
trigger4 = stateno = 620 || stateno = 621
trigger4 = MoveContact
trigger5 = stateno = 630 || stateno = 631
trigger5 = MoveContact
trigger6 = stateno = 640 || stateno = 641
trigger6 = MoveContact
trigger7 = StateNo = 900 && PrevStateNo != [150,154]
trigger8 = StateNo = 920 && PrevStateNo != [150,154]
trigger9 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
;Super Jump
[State -1]
type = ChangeState
value = 41
triggerall = !var(7)
trigger1 = command = "DU"
trigger1 = StateType = S
trigger1 = ctrl
trigger2 = command = "DU"
trigger2 = StateType = C
trigger2 = ctrl
trigger3 = command = "up"
trigger3 = stateno = 210 || stateno = 440
trigger3 = movehit = 1
trigger4 = command = "DUF"
trigger4 = StateType = S
trigger4 = ctrl
trigger5 = command = "DUF"
trigger5 = StateType = C
trigger5 = ctrl
trigger6 = command = "DUB"
trigger6 = StateType = S
trigger6 = ctrl
trigger7 = command = "DUB"
trigger7 = StateType = C
trigger7 = ctrl
trigger8 = command = "UF"
trigger8 = stateno = 210 || stateno = 440
trigger8 = movehit = 1
trigger9 = command = "UB"
trigger9 = stateno = 210 || stateno = 440
trigger9 = movehit = 1

;---------------------------------------------------------------------------
;Taunt
[State -1]
type = ChangeState
value = 195
triggerall = !var(7)
triggerall = command = "s"
triggerall = StateType != A
trigger1 = ctrl


;-|AI|-------------------------------------------------------------------------------

;-|Defense|-------------------------------------------------------------------------------

;-|Stand Guard|-
[State -1]
type = ChangeState
value = 130
triggerall = var(7) = 1
triggerall = ctrl
trigger1 = var(44) = 0
trigger1 = statetype != A
trigger1 = p2statetype != C
trigger1 = p2movetype = A
trigger2 = var(44) > 0
trigger2 = Random < 750
trigger2 = statetype != A
trigger2 = p2statetype != C
trigger2 = p2movetype = A

;-|Crouch Guard|-
[State -1]
type = ChangeState
value = 131
triggerall = var(7) = 1
triggerall = ctrl
trigger1 = var(44) = 0
trigger1 = statetype != A
trigger1 = p2statetype = C
trigger1 = p2movetype = A
trigger2 = var(44) > 0
trigger2 = Random < 750
trigger1 = statetype != A
trigger1 = p2statetype = C
trigger1 = p2movetype = A

;-|Air Guard|-
[State -1]
type = ChangeState
value = 132
triggerall = var(7) = 1
triggerall = ctrl
trigger1 = var(44) = 0
trigger1 = statetype = A
trigger1 = p2movetype = A
trigger2 = var(44) > 0
trigger2 = Random < 750
trigger2 = statetype = A
trigger2 = p2movetype = A

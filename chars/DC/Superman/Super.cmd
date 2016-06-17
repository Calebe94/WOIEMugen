; -| CPU Commands |------

[Command]
name = "IA1"
command = D, D, U, U, a
time = 1

[Command]
name = "IA2"
command = D, U, U, D, b
time = 1

[Command] 
name = "IA3"
command = D, D, D, U, c
time = 1

[Command]
name = "IA4"
command = D, D, U, U, x
time = 1

[Command]
name = "IA5"
command = D, U, U, D, y
time = 1

[Command]
name = "IA6"
command = D, D, D, U, z
time = 1

[Command]
name = "IA7"
command = D, D, U, U, a, a
time = 1

[Command]
name = "IA8"
command = D, U, U, D, a, b
time = 1

[Command]
name = "IA9"
command = D, D, D, U, a, c
time = 1

[Command]
name = "IA10"
command = D, D, D, U, a, x
time = 1

[Command]
name = "IA11"
command = D, D, U, B, a
time = 1

[Command]
name = "IA12"
command = D, U, U, B, b
time = 1

[Command]
name = "IA13"
command = D, D, D, B, c
time = 1

[Command]
name = "IA14"
command = D, D, U, B, x
time = 1

[Command]
name = "IA15"
command = D, U, U, B, y
time = 1

[Command]
name = "IA16"
command = D, D, D, B, z
time = 1

[Command]
name = "IA17"
command = D, D, U, B, a, a
time = 1

[Command]
name = "IA18"
command = D, U, U, B, a, b
time = 1

[Command]
name = "IA19"
command = D, D, D, B, a, c
time = 1

[Command]
name = "IA20"
command = D, D, D, B, a, x
time = 1

[Command]
name = "IA21"
command = D, D, U, F, a
time = 1

[Command]
name = "IA22"
command = D, U, U, F, b
time = 1

[Command]
name = "IA23"
command = D, D, D, F, c
time = 1

[Command]
name = "IA24"
command = D, D, U, F, x
time = 1

[Command]
name = "IA25"
command = D, U, U, F, y
time = 1

[Command]
name = "IA26"
command = D, D, D, F, z
time = 1

[Command]
name = "IA27"
command = D, D, U, F, a, a
time = 1

[Command]
name = "IA28"
command = D, U, U, F, a, b
time = 1

[Command]
name = "IA29"
command = D, D, D, F, a, c
time = 1

[Command]
name = "IA30"
command = D, D, D, F a, x
time = 1

[command]
name = "IA31"
command = B,B,U,U,F,F,b
time = 0

[command]
name = "IA32"
command = U,U,F,F,B,B,b
time = 0

[command]
name = "IA33"
command = UB,B,UB,B,U,U,b
time = 0

[command]
name = "IA34"
command = F,B,B,F,U,U,b
time = 0

[command]
name = "IA35"
command = B,U,B,U,F,F,b
time = 0

[command]
name = "IA36"
command = U,F,U,F,B,B,a,b
time = 0

[command]
name = "IA37"
command = B,B,U,U,F,F,a,b
time = 0

[command]
name = "IA38"
command = U,U,F,F,B,B,a,b
time = 0

[command]
name = "IA39"
command = UB,B,UB,B,U,U,a,b
time = 0

[command]
name = "IA40"
command = F,B,U,F
time = 0

[Command]
name = "IA41"
command = x,U,DB,y
time = 0

[command]
name = "IA42"
command = U,a,F,DB
time = 0

[command]
name = "IA43"
command = UB,B,UB,DB
time = 0

[command]
name = "IA44"
command = UF,B,z,F,U
time = 0

[command]
name = "IA45"
command = B,c,B,x,UF
time = 0

[command]
name = "IA46"
command = D,F,U,DF,y
time = 0

[command]
name = "IA47"
command = B,B,x,DF,c
time = 0

[command]
name = "IA48"
command = U,U,c,F,B
time = 0

[command]
name = "IA49"
command = a,z,D,UF,B
time = 0

[command]
name = "IA50"
command = b,b,x,x,UB
time = 0

[command]
name = "IA51"
command = x,a,y
time = 0


;---------------------------------

[Command]
name = "QCB2_X"
command = ~D, DB, B, y+z
time = 22

[Command]
name = "doublepunch"
command = F+z
time = 22


[Command]
name = "QCB2_Y"
command = ~D, DB, B, b+c
time = 22


[Command]
name = "QCB2_Z"
command = ~D, DB, B, z+c
time = 22


[Command]
name = "QCF2_X"
command = ~D, DF, F, D, DF, F, x
time = 22


[Command]
name = "QCF2_Y"
command = ~D, DF, F, y+x
time = 22


[Command]
name = "QCF2_Z"
command = ~D, DF, F, z+y
time = 22


[Command]
name = "QCF2_K"
command = ~D, DF, F, D, DF, F, a 
time = 22


[Command]
name = "QCF2_K"
command = ~D, DF, F, b+a
time = 22


[Command]
name = "QCF2_K"
command = ~D, DF, F, c+b
time = 22

[Command]
name = "QCF2_P"
command = ~D, DF, F, z+y
time = 22


[Command]
name = "QCF2_P"
command = ~D, DF, F, D, DF, F, y+x
time = 22


[Command]
name = "QCF2_P"
command = ~D, DF, F, D, DF, F, z+y
time = 22

;[Command]
;name = "Amalgam"
;command = ~D, DF, F, z+c
;time = 25

;[Command]
;name = "QCB_A"
;command = ~D, DB, B, a


;[Command]
;name = "QCB_B"
;command = ~D, DB, B, b


;[Command]
;name = "QCB_C"
;command = ~D, DB, B, c


[Command]
name = "HCB_A" ;Quick Super Flight Attack
command = ~D, DF, F, a


[Command]
name = "HCB_B" ;Diagonal Super Flight Attack
command = ~D, DF, F, b


[Command]
name = "HCB_C" ;Horizontal Super Flight Attack
command = ~D, DF, F, c


[Command]
name = "HCF_X" ;Heatvision
command = ~D, DF, F, x
time = 30


[Command]
name = "HCF_Y" ;Heatvision
command = ~D, DF, F, y
time = 30


[Command]
name = "HCF_Z" ;Heatvision
command = ~D, DF, F, z
time = 30


[Command]
name = "Slide_Kick_C" ;Slide Kick & Wind Toss
command = ~F, B, F, x ;~45$B, F, x
time = 22

[Command]
name = "Slide_Punch_Z" ;Super Punch
command = ~F, B, F, y ;~45$B, F, y
time = 22

[Command]
name = "Super Combo" ;Super Combo
command = ~F, B, F, z ;~45$B, F, z
time = 22



[Command]
name = "Freeze_X" ;Arctic Breath
command = ~D, DB, B, x
time = 25

[Command]
name = "Freeze_Y" ;Pushback Breath
command = ~D, DB, B, y
time = 25

[Command]
name = "Freeze_Z"  ;Tornado Breath
command = ~D, DB, B, z
time = 25


[Command]
name = "DRILL_A" ;Drill Punch close
command = ~D, DB, B, a

[Command]
name = "DRILL_B" ;Drill Punch Mid
command = ~D, DB, B, b

[Command]
name = "DRILL_C" ;Drill Punch Far
command = ~D, DB, B, c

;[Command]
;name = "Flight attack" ;Flight Attack
;command = ~F, B, F, c ;~45$B, F, z
;time = 22


[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10


[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "zc"
command = z+c
time = 1

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
name = "down_x"
command = /$D,x
time = 1


[Command]
name = "down_y"
command = /$D,y
time = 1


[Command]
name = "down_z"
command = /$D,z
time = 1


[Command]
name = "fwd_y"
command = /F,y
time = 1


[Command]
name = "fwd_z"
command = /F,z
time = 1


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
name = "SuperJump"
command = ~D, U
time = 10


[Command]
name = "holdfwd"
command = /$F
time = 1


[Command]
name = "holdback"
command = /$B
time = 1


[Command]
name = "holdup"
command = /$U
time = 1


[Command]
name = "holddown"
command = /$D
time = 1


[Command]
name = "holdx"
command = /$x
time = 10

[Command]
name = "holdy"
command = /$y
time = 10


;[Command]
;name = "2_Kick" ;Fly
;command = a+b



;------------------------------------------------
[Statedef -1]

;Enable w/ flymode codes inserted for FLYMODE
;FLYMODE 123
;To enable Fly mode delete the ";" of the state below and the [Command] above named "2_Kick"

;[State -1,25]
;type = ChangeState
;value = 9000
;triggerall = !var(59)
;triggerall = command = "2_Kick"
;trigger1 = ctrl = 1



[State -1,-1]
type = NotHitBy
triggerall = IsHelper = 0
trigger1 = Var(1) > 0
value = SCA, HTP

[State -1,0]
type = VarAdd
trigger1 = Var(1) > 0
V = 1
value = -1

[State -1,1]
type = VarAdd
trigger1 = Var(5) > 0
V = 5
value = -1

[State -1,2]
type = VarSet
triggerall = P2StateNo = 1080
trigger1 = NumHelper(040) = 1
trigger2 = NumHelper(050) = 1
trigger3 = NumHelper(060) = 1
trigger4 = NumHelper(070) = 1
V = 3
Value = 1

[State -1,3]
type = VarSet
triggerall = Var(3) = 1
trigger1 = NumHelper(040) = 0
trigger1 = NumHelper(050) = 0
trigger1 = NumHelper(060) = 0
trigger1 = NumHelper(070) = 0
V = 3
Value = 0

[State -1,4]
type = VarAdd
trigger1 = Var(4) > 0
V = 4
value = -1

;[State -1,21] ;Cpt America Amalgam Hyper
;type = ChangeState
;value = 7500
;triggerall = command = "Amalgam"
;triggerall = !var(59)
;trigger1 = var(3) = 0
;trigger1 = power = 3000 ;Level 3
;trigger1 = statetype = S
;trigger1 = ctrl = 1

[State -1,78]
Type = Changestate
value = 2525
triggerall = command = "Super Combo"
triggerall = !var(59)
trigger1 = var(3) = 0
trigger1 = statetype = S
trigger1 = Var(1) = 0
trigger1 = ctrl = 1


[State -1,5]
type = ChangeState
value = 3001
triggerall = command = "QCB2_Z"
triggerall = !var(59)
trigger1 = power = 3000 ;Level 3
trigger1 = var(3) = 0
trigger1 = statetype = S
trigger1 = Var(1) = 0
trigger1 = ctrl = 1

[State -1,6]
type = ChangeState
value = 71001
triggerall = command = "QCB2_Z"
triggerall = !var(59)
trigger1 = power >= 3000 ;Level 3
trigger1 = var(3) != 0
trigger1 = statetype = S
trigger1 = Var(1) = 0
trigger1 = ctrl = 1



[State -1,9]
type = ChangeState
value = 7001
triggerall = command = "QCB2_Y"
triggerall = !var(59)
trigger1 = power >= 2000 ;Level 2
trigger1 = var(3) = 0
trigger1 = statetype = S
trigger1 = Var(1) = 0
trigger1 = ctrl = 1

[State -1,10]
type = ChangeState
value = 31142
triggerall = command = "QCB2_Y"
triggerall = !var(59)
trigger1 = power >= 2000 ;Level 2
trigger1 = var(3) != 0
trigger1 = statetype = S
trigger1 = Var(1) = 0
trigger1 = ctrl = 1

[State -1,15]
type = ChangeState ;Super Ground Breaker
value = 3100
triggerall = command = "QCF2_Y"
triggerall = !var(59)
triggerall = power >= 1000 ;Level 1
triggerall = statetype != A
trigger1 = var(3) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1,14]  ;LV3 Super Ground Breaker BIZZARO
type = ChangeState
value = 31136
triggerall = command = "QCF2_Z"
triggerall = !var(59)
triggerall = power >= 3000 ;Level 3
triggerall = statetype != A
trigger1 = var(3) != 0
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1,12]   ;Super Ground Breaker BIZZARO
type = Changestate
value = 31135
triggerall = command = "QCF2_X"
triggerall = !var(59)
triggerall = power >= 1000 ;Level 1
triggerall = statetype != A
trigger1 = var(3) != 0
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1,16]  ;Super Ground Breaker BIZZARO
type = ChangeState
value = 31137
triggerall = command = "QCF2_Y"
triggerall = !var(59)
triggerall = power >= 2000 ;Level 2
triggerall = statetype != A
trigger1 = var(3) != 0
trigger1 = statetype = S
trigger1 = ctrl = 1



[State -1,17]
type = ChangeState
value = 3200
triggerall = command = "QCF2_K"
triggerall = !var(59)
triggerall = power >= 2000 ;Level 2
trigger1 = var(3) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1,18]
type = ChangeState
value = 31130
triggerall = command = "QCF2_K"
triggerall = !var(59)
triggerall = power >= 2000 ;Level 2
triggerall = var(3) != 0
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1,19]
type = ChangeState
value = 3204
triggerall = command = "QCF2_K"
triggerall = !var(59)
triggerall = power >= 1000 ;Level 2
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 604
trigger2 = movecontact



[State -1,20]
type = ChangeState
value = 738
triggerall = command = "QCF2_P"
triggerall = !var(59)
trigger1 = power >= 1000 ;Level 1
trigger1 = statetype = A
trigger1 = ctrl = 1


[State -1,22]
type = ChangeState
value = 712
triggerall = !var(59)
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "HCB_A"


[State -1,45]
type = ChangeState
value = 713
triggerall = Command = "HCB_A"
triggerall = !var(59)
trigger1 = StateType = a
trigger1 = Ctrl = 1
trigger2 = stateno = 604
trigger2 = movecontact
trigger2 = time < 20


[State -1,23]
type = ChangeState
value = 709
triggerall = !var(59)
triggerall = command = "HCB_B"
triggerall = ctrl = 1
trigger1 = statetype = S


[State -1,24]
type = ChangeState
value = 710
triggerall = !var(59)
triggerall = command = "HCB_C"
triggerall = ctrl = 1
trigger1 = statetype = S


[State -1,27]
type = ChangeState
value = 1010
triggerall = !var(59)
triggerall = command = "HCF_X"
triggerall = ctrl = 1
trigger1 = statetype = S


[State -1,28]
type = ChangeState
value = 1610
triggerall = !var(59)
triggerall = command = "HCF_X"
triggerall = ctrl = 1
trigger1 = statetype = A


[State -1,29]
type = ChangeState
value = 1012
triggerall = !var(59)
triggerall = command = "HCF_Y"
triggerall = ctrl = 1
trigger1 = statetype = S


[State -1,30]
type = ChangeState
value = 1612
triggerall = !var(59)
triggerall = command = "HCF_Y"
triggerall = ctrl = 1
trigger1 = statetype = A


[State -1,31]
type = ChangeState
value = 1014
triggerall = command = "HCF_Z"
triggerall = !var(59)
triggerall = ctrl = 1
trigger1 = statetype = S


[State -1,32]
type = ChangeState
value = 1614
triggerall = command = "HCF_Z"
triggerall = !var(59)
triggerall = ctrl = 1
trigger1 = statetype = A




;------------------------------------------------


[State -1,33]
type = ChangeState
value = 1033
triggerall = !var(59)
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "Slide_Punch_Z"

[State -1,34]
type = ChangeState
value = 703
triggerall = !var(59)
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "Slide_Kick_C"

[State -1,35]
type = ChangeState
value = 720
triggerall = !var(59)
triggerall = p2stateno != 223
triggerall = p2stateno != 722
triggerall = p2stateno != 723
triggerall = command = "Freeze_X"
triggerall = ctrl = 1
trigger1 = statetype = S

[State -1,36]
type = ChangeState
value = 725
triggerall = command = "Freeze_Y"
triggerall = !var(59)
triggerall = ctrl = 1
trigger1 = statetype = S

[State -1,37]
type = ChangeState
value = 730
triggerall = command = "Freeze_Z"
triggerall = !var(59)
triggerall = ctrl = 1
trigger1 = statetype = S

[State -1,38]
type = ChangeState
value = 1040
triggerall = command = "DRILL_A"
triggerall = !var(59)
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 202

[State -1,39]
type = ChangeState
value = 1042
triggerall = command = "DRILL_B"
triggerall = !var(59)
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 202

[State -1,40]
type = ChangeState
value = 1044
triggerall = command = "DRILL_C"
triggerall = !var(59)
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 202


[State -1,44]
type = ChangeState
value = 145
triggerall = Command = "HCB_B"
triggerall = !var(59)
trigger1 = StateType = A
trigger1 = Ctrl = 1
trigger2 = stateno = 604
trigger2 = movecontact
trigger2 = time < 25


[State -1,47]
type = ChangeState
value = 711
triggerall = !var(59)
triggerall = Command = "HCB_C"
trigger1 = pos y < -10
trigger1 = StateType = A
trigger1 = Ctrl = 1


[State -1,52]
type = ChangeState
value = 100
triggerall = !var(59)
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1,53]
type = ChangeState
value = 105
triggerall = !var(59)
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1,54]
type = ChangeState
value = 210
triggerall = !var(59)
trigger1 = p2bodydist Y >=-20
trigger1 = p2bodydist X < 20 ;Near P2
trigger1 = command = "fwd_y"
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1,55]
type = ChangeState
value = 220
triggerall = !var(59)
triggerall = command = "fwd_z"
triggerall = p2bodydist Y >=-20
triggerall = p2bodydist X < 20 ;Near P2
triggerall = ctrl = 1
triggerall = IsHelper(007) = 0
trigger1 = statetype = S


[State -1,56]
type = ChangeState
value = 620
triggerall = !var(59)
triggerall = command = "fwd_z"
triggerall = p2bodydist Y <=25
triggerall = p2bodydist Y >=-25
triggerall = p2bodydist X < 20 ;Near P2
triggerall = ctrl = 1
triggerall = IsHelper(007) = 0
trigger1 = statetype = A


[State -1,57]
type = ChangeState
value = 201
triggerall = !var(59)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time > 9
trigger3 = MoveContact
trigger3 = stateno = 200
trigger4 = stateno = 100
trigger5 = stateno = 105


[State -1,58]
type = ChangeState
value = 203
triggerall = !var(59)
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 200
trigger3 = MoveContact
trigger3 = stateno = 201
trigger4 = MoveContact
trigger4 = stateno = 401
trigger5 = MoveContact
trigger5 = stateno = 400
trigger6 = stateno = 100
trigger7 = stateno = 105




[State -1,59]
type = ChangeState
value = 205
triggerall = !var(59)
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 200
trigger3 = MoveContact
trigger3 = stateno = 201
trigger4 = MoveContact
trigger4 = stateno = 400
trigger5 = MoveContact
trigger5 = stateno = 401
trigger6 = MoveContact
trigger6 = stateno = 402
trigger7 = MoveContact
trigger7 = stateno = 403
trigger8 = stateno = 100
trigger9 = stateno = 105
trigger10 = stateno =203
trigger10 = Movecontact


[State -1,60]
type = ChangeState
value = 200
triggerall = !var(59)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = time > 9
trigger3 = stateno = 100
trigger4 = stateno = 105


[State -1,61]
type = ChangeState
value = 202
triggerall = !var(59)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 200
trigger3 = MoveContact
trigger3 = stateno = 201
trigger4 = MoveContact
trigger4 = stateno = 401
trigger5 = MoveContact
trigger5 = stateno = 400
trigger6 = stateno = 100
trigger7 = stateno = 105



[State -1,62]
type = ChangeState
value = 204
triggerall = !var(59)
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 201
trigger3 = MoveContact
trigger3 = stateno = 203
trigger4 = MoveContact
trigger4 = stateno = 400
trigger5 = MoveContact
trigger5 = stateno = 401
trigger6 = MoveContact
trigger6 = stateno = 402
trigger7 = stateno = 100
trigger8 = stateno = 105
trigger9 = Movecontact
trigger9 = stateno = 202






[State -1,63]
type = ChangeState
value = 401
triggerall = !var(59)
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 401
trigger2 = time > 6
trigger3 = MoveContact
trigger3 = stateno = 400
trigger4 = MoveContact
trigger4 = stateno = 201
trigger5 = MoveContact
trigger5 = stateno = 200




[State -1,64]
type = ChangeState
value = 403
triggerall = !var(59)
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 401
trigger3 = MoveContact
trigger3 = stateno = 400
trigger4 = MoveContact
trigger4 = stateno = 201
trigger5 = MoveContact
trigger5 = stateno = 200



[State -1,65]
type = ChangeState
value = 405
triggerall = !var(59)
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 401
trigger3 = MoveContact
trigger3 = stateno = 400
trigger4 = MoveContact
trigger4 = stateno = 201
trigger5 = MoveContact
trigger5 = stateno = 200


[State -1,66]
type = ChangeState
value = 400
triggerall = !var(59)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = time > 9
trigger3 = MoveContact
trigger3 = stateno = 200


[State -1,67]
type = ChangeState
value = 402
triggerall = !var(59)
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 401
trigger3 = MoveContact
trigger3 = stateno = 400
trigger4 = MoveContact
trigger4 = stateno = 201
trigger5 = MoveContact
trigger5 = stateno = 200

[State -1,68]
type = ChangeState
value = 404
triggerall = !var(59)
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 401
trigger3 = MoveContact
trigger3 = stateno = 400
trigger4 = MoveContact
trigger4 = stateno = 201
trigger5 = MoveContact
trigger5 = stateno = 200
trigger6 = MoveContact
trigger6 = stateno = 202
trigger7 = MoveContact
trigger7 = stateno = 403
trigger8 = MoveContact
trigger8 = stateno = 4032
trigger9 = MoveContact
trigger9 = stateno = 402


[State -1,69]
type = ChangeState
value = 601
triggerall = !var(59)
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = MoveContact
Trigger3 = Stateno = 5400


[State -1,70]
type = ChangeState
value = 603
triggerall = !var(59)
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 601
trigger3 = MoveContact
trigger3 = stateno = 600
trigger4 = MoveContact
trigger4 = stateno = 602
Trigger5 = Stateno = 5400


[State -1,71]
type = ChangeState
value = 605
triggerall = !var(59)
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 601
trigger3 = MoveContact
trigger3 = stateno = 600
trigger4 = MoveContact
trigger4 = stateno = 603
trigger5 = MoveContact
trigger5 = stateno = 602
trigger6 = MoveContact
trigger6 = stateno = 604
Trigger7 = Stateno = 5400



[State -1,72]
type = ChangeState
value = 600
triggerall = !var(59)
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
Trigger2 = Stateno = 5400


[State -1,73]
type = ChangeState
value = 602
triggerall = !var(59)
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 601
trigger3 = MoveContact
trigger3 = stateno = 600
Trigger4 = Stateno = 5400


[State -1,74]
type = ChangeState
value = 604
triggerall = !var(59)
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 601
trigger3 = MoveContact
trigger3 = stateno = 600
trigger4 = MoveContact
trigger4 = stateno = 603
trigger5 = MoveContact
trigger5 = stateno = 602
Trigger6 = Stateno = 5400


[State -1,75]
type = ChangeState
value = 197
triggerall = !var(59)
triggerall = command = "s"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1,76]
Type = Changestate
value = 5400
triggerall = !var(59)
triggerall = command = "SuperJump"
triggerall = statetype != A
Trigger1 = Ctrl = 1
trigger2 = stateno = 100
trigger3 = stateno = 105


[State -1,77]
Type = Changestate
value = 5400
triggerall = !var(59)
triggerall = command = "holdup"
trigger1 = MoveContact
trigger1 = stateno = 404
trigger3 = (StateNo = 404) && (MoveHit = 1)



;-| AI by tunglashor |-----------------------------------------------------
[state -1, Activate AI]
type = varset
v = 59
trigger1 = command = "IA1"
trigger2 = command = "IA2"
trigger3 = command = "IA3"
trigger4 = command = "IA4"
trigger5 = command = "IA5"
trigger6 = command = "IA6"
trigger7 = command = "IA7"
trigger8 = command = "IA8"
trigger9 = command = "IA9"
trigger10 = command = "IA10"
trigger11 = command = "IA11"
trigger12 = command = "IA12"
trigger13 = command = "IA13"
trigger14 = command = "IA14"
trigger15 = command = "IA15"
trigger16 = command = "IA16"
trigger17 = command = "IA17"
trigger18 = command = "IA18"
trigger19 = command = "IA19"
trigger20 = command = "IA20"
trigger21 = command = "IA21"
trigger22 = command = "IA22"
trigger23 = command = "IA23"
trigger24 = command = "IA24"
trigger25 = command = "IA25"
trigger26 = command = "IA26"
trigger27 = command = "IA27"
trigger28 = command = "IA28"
trigger29 = command = "IA29"
trigger30 = command = "IA30"
trigger31 = command = "IA31"
trigger32 = command = "IA32"
trigger33 = command = "IA33"
trigger34 = command = "IA34"
trigger35 = command = "IA35"
trigger36 = command = "IA36"
trigger37 = command = "IA37"
trigger38 = command = "IA38"
trigger39 = command = "IA39"
trigger40 = command = "IA40"
trigger41 = command = "IA41"
trigger42 = command = "IA42"
trigger43 = command = "IA43"
trigger44 = command = "IA44"
trigger45 = command = "IA45"
trigger46 = command = "IA46"
trigger47 = command = "IA47"
trigger48 = command = "IA48"
trigger49 = command = "IA49"
trigger50 = command = "IA50"
value = 1

[state -1, Enable AI]
type = varset
v = 58
trigger1 = 1
value = ifelse(roundstate = 2, var(59), 0)

[state -1, enemy frozen?]
type = varset
v = 57
trigger1 = var(58)
value = ifelse((p2stateno = 722) || (p2stateno = [223,225]), 1, 0)

;-| AI blocking |---------------------------------------------------------------
[state -1, AI block]
type = changestate
value = ifelse(StateType = A, 132, ifelse((enemynear,HitDefAttr = SA,AA,AT,AP), 130, 131))
triggerall = var(58)
triggerall = ctrl
triggerall = stateno != [120,155]
triggerall = !NumHelper(009)
trigger1 = inguarddist



;-| AI grabs |------------------------------------------------------------------
[State -1, AI grab/throw]
type = ChangeState
value = ifelse((IsHelper(007) != 0) || random < 500, 210, 220)
triggerall = var(58)
triggerall = ctrl || (stateno = 9001)
triggerall = statetype = S
triggerall = p2movetype != H
triggerall = p2bodydist Y >=-20
triggerall = p2bodydist X = [0,20] ;Near P2
trigger1 = random < 450

[State -1, AI aerial grab]
type = ChangeState
value = 620
triggerall = var(58) && ctrl
triggerall = statetype = A
triggerall = !IsHelper(007)
triggerall = p2movetype != H
triggerall = p2bodydist Y = [-25, 25]
triggerall = p2bodydist X = [0, 20] ;Near P2
trigger1 = random < 150

;-| AI misc |-------------------------------------------------------------------
[State -1, AI Taunt]
type = ChangeState
value = 197
triggerall = var(58)
triggerall = statetype = S
triggerall = ctrl
trigger1 = P2BodyDist X > 170
trigger1 = (life - P2life) > 250
trigger1 = life > 400
trigger1 = (enemynear, stateno = 5110) && (enemynear, statetype = L)
trigger1 = random < 80

[state -1, AI run fwd]
type =  changestate
value = 100
triggerall = var(58) && ctrl
triggerall = statetype = S
triggerall = P2BodyDist X > 120
triggerall = enemynear, numproj = 0
triggerall = stateno != [100,105]
trigger1 = p2movetype != A
trigger1 = p2stateno != 5050
trigger1 = random < 200 - ifelse(life < 150, 100, 0)
trigger2 = p2movetype = A
trigger2 = random < 200 + ifelse(life < 400, 50, 0)

[state -1, AI run back]
type =  changestate
value = 105
triggerall = var(58) && ctrl
triggerall = statetype = S
triggerall = P2BodyDist X = [0, 80]
trigger1 = p2movetype = A
trigger1 = random < 80 + ifelse(life < 200, 30, 0)

[State -1, AI jump]
type = changestate
value = ifelse((p2bodydist y < -110) && (random < 52), 5400, 40)
triggerall = var(58)
triggerall = ctrl
triggerall = statetype = S
triggerall = enemynear, vel x >= 0
triggerall = enemynear, vel y <= 0
trigger1 = vel x || (random < 52) || (p2movetype = H)
trigger1 = p2bodydist X = [0, 120]
trigger1 = p2bodydist Y < -20
trigger1 = enemynear, ctrl
trigger1 = random < 52 + ifelse(p2movetype = H, 100, 0)


;Super Jump
[State -1, AI_SuperJump]
type = ChangeState
value = 5400
triggerall = (StateType != A) && var(59)
trigger1 = (StateNo = 404) && (MoveHit = 1)

[State -1, Airdash Fwd]
type = ChangeState
triggerall = statetype = A
trigger1 = stateno != 100 && stateno != 2999 && stateno != 107
trigger1 = PrevStateNo != 107
trigger1 = command = "FF"
trigger1 = ctrl
value = 107
persistent = 0

[State -1, Airdash Back]
type = ChangeState
triggerall = statetype = A
trigger1 = stateno != 100 && stateno != 2999 && stateno != 108
trigger1 = PrevStateNo != 108
trigger1 = command = "BB"
trigger1 = ctrl
value = 108
persistent = 0


;-| AI flight |------------------------------------------------------------------
;NO FLY MODE AI AT THE MOMENT

;[State -1, AI fly]
;type = ChangeState
;value = 9000
;triggerall = var(58) && ctrl
;triggerall = statetype = S
;trigger1 = p2bodydist y < -110
;trigger1 = enemynear, vel y <= 0
;trigger1 = random < 10
;trigger2 = enemynear, vel x < 0
;trigger2 = random < 10

;[State -1, AI FLY grab]
;type = ChangeState
;value = 99220
;triggerall = var(58) && ctrl
;triggerall = statetype = A
;triggerall = !IsHelper(007)
;triggerall = p2movetype != H
;triggerall = p2bodydist Y = [-25, 25]
;triggerall = p2bodydist X = [0, 20] ;Near P2
;trigger1 = p2bodydist y < -110
;trigger1 = enemynear, vel y <= 0
;trigger1 = random < 10


;-| AI Super Motions |----------------------------------------------------------
[State -1, AI Super Uppercut]
type = ChangeState
value = ifelse(var(3), 71001, 3001) ; var(3) = bizarro mode
triggerall = var(58)
triggerall = power = 3000 ;Level 3
triggerall = ctrl
triggerall = statetype = S
triggerall = p2stateno != [120,155]
triggerall = p2bodydist x > 100
triggerall = p2statetype != L
triggerall = enemynear, numproj = 0
trigger1 = p2statetype = S
trigger1 = random < 850



[State -1,AI Super Tsunami]
type = ChangeState
value = ifelse(var(3), 31142, 7001) ; var(3) = bizarro mode
triggerall = var(58)
triggerall = power >= 2000 ;Level 2
triggerall = ctrl
triggerall = statetype = S
triggerall = Var(1) = 0
triggerall = p2stateno != [50,100]
triggerall = enemynear, numproj = 0
trigger1 = p2stateno = 5050
trigger1 = random < 40
trigger2 = p2movetype = H
trigger2 = p2statetype = A
trigger2 = (p2bodydist x = [-200, -50]) || (p2bodydist x = [50, 200])
trigger2 = p2bodydist y < -80
trigger2 = random < 50
trigger3 = p2movetype = A
trigger3 = p2statetype = A
trigger3 = p2bodydist x > 180
trigger3 = random < 50


[State -1,AI Super Ground Breaker]
type = ChangeState
value = ifelse(var(3), 31137, 3100) ; var(3) = bizarro mode
triggerall = var(58)
triggerall = power >= 1000 ;Level 1
triggerall = ctrl
triggerall = statetype = S
triggerall = p2stateno != [120,155]
triggerall = p2statetype != L
trigger1 = p2bodydist x = [120, 160]
trigger1 = p2statetype = S || p2statetype = C
trigger1 = random < 90
trigger2 = p2stateno = 5050
trigger2 = random < 90
trigger3 = var(57)
trigger3 = random < 90

[State -1,AI Super Speed]
type = ChangeState
value = ifelse(var(3), 31130, 3200) ; var(3) = bizarro mode
triggerall = var(58)
triggerall = power >= 2000 ;Level 2
triggerall = ctrl
triggerall = statetype = S
triggerall = p2stateno != [120,155]
triggerall = p2bodydist x > 100
triggerall = p2statetype != L
triggerall = enemynear, numproj = 0
trigger1 = p2statetype = S
trigger1 = random < 90
trigger2 = p2bodydist y = [-70, -20]
trigger2 = enemynear, vel y >= 0
trigger2 = random < 90 + ifelse(p2stateno = 5050, 50, 0)

[State -1,AI Aerial Deep Impact]
type = ChangeState
value = 3204
triggerall = var(58)
triggerall = power >= 1000 ;Level 1
triggerall = p2stateno != [120,155]
triggerall = p2bodydist x > 10
triggerall = p2bodydist y > 10
triggerall = p2statetype != L
triggerall = enemynear, numproj = 0
triggerall = random < 130 + ifelse(p2stateno = 5050, 70, 0)
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = random < 160
trigger2 = Stateno = 604
trigger2 = Movecontact && random < 150


[State -1,AI Aerial Super Heat Vision]
type = ChangeState
value = 738
triggerall = var(58)
triggerall = power >= 1000 ;Level 1
triggerall = p2stateno != [120,155]
triggerall = p2statetype != L
triggerall = (enemynear, ctrl) || (p2movetype != H) || var(57) || (p2stateno = 5050)
triggerall = statetype = A
trigger1 = p2bodydist x > 70
trigger1 = p2bodydist y > 70
trigger1 = ctrl
trigger1 = random < 180
trigger2 = Stateno = 604
trigger2 = Movecontact && random < 200

;[State -1,AI Amalgam]
;type = ChangeState
;value = 7500
;triggerall = var(58)
;triggerall = power >= 3000 ;Level 3
;triggerall = !var(3)
;triggerall = ctrl
;triggerall = p2stateno != [120,155]
;triggerall = statetype = S
;triggerall = p2statetype != L
;triggerall = enemynear, numproj = 0
;trigger1 = p2movetype = H
;trigger1 = p2statetype = A
;trigger1 = p2bodydist y = [-50, 0]
;trigger1 = random < 40
;trigger2 = p2stateno = 5050
;trigger2 = random < 25
;trigger3 = var(57)
;trigger3 = random < 30



;-| AI Special Motions |----------------------------------------------------------
[State -1, AI flight kick light]
type = ChangeState
value = 712
triggerall = var(58)
triggerall = statetype = S
triggerall = p2statetype != L
triggerall = ctrl = 1
triggerall = (enemynear, vel x >= 0) || (p2bodydist x < 50)
trigger1 = p2bodydist x = [220, 250]
trigger1 = p2bodydist y = [-20, 0]
trigger1 = enemynear, vel y <= 0
trigger1 = random < 140
trigger2 = p2bodydist x = [70, 200]
trigger2 = p2bodydist y = [-40, -20]
trigger2 = random < 140


[State -1, AI flight kick medium]
type = ChangeState
value = 709
triggerall = var(58)
triggerall = statetype = S
triggerall = p2statetype != L
triggerall = ctrl = 1
triggerall = (enemynear, vel x >= 0) || (p2bodydist x < 50)
trigger1 = p2bodydist x = [220, 250]
trigger1 = p2bodydist y = [-20, 0]
trigger1 = enemynear, vel y <= 0
trigger1 = random < 120
trigger2 = p2bodydist x = [70, 200]
trigger2 = p2bodydist y = [-40, -20]
trigger2 = random < 120
trigger3 = random < 20

[State -1, AI flight kick heavy]
type = ChangeState
value = 710
triggerall = var(58)
triggerall = statetype = S
triggerall = p2statetype != C && p2statetype != L
triggerall = ctrl = 1
trigger1 = p2bodydist x - p2bodydist y = [170, 250]
trigger1 = enemynear, numproj = 0
trigger1 = enemynear, vel y > -1
trigger1 = random < 140

[State -1, AI aerial heat vision close]
type = ChangeState
value = ifelse(stateno = 9001, 8010, 1610)
triggerall = var(58)
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = ctrl || (stateno = 9001)
triggerall = P2BodyDist X / (P2BodyDist Y + 1) = [0, 2]
triggerall = p2bodydist X > 20
trigger1 = random < 120 + ifelse(p2statetype = C, 15, 0)
trigger2 = enemynear, vel y > 1
trigger2 = random < 120
trigger3 = Stateno = 604
trigger3 = Movecontact && random < 900


[State -1, AI aerial heat vision medium]
type = ChangeState
value = ifelse(stateno = 9001, 8012, 1612)
triggerall = var(58)
triggerall = statetype = A
triggerall = ctrl || (stateno = 9001)
triggerall = p2statetype != L
triggerall = P2BodyDist X / (P2BodyDist Y + 1) = [2, 3]
triggerall = p2bodydist Y > 20
trigger1 = random < 120
trigger2 = enemynear, vel y > 1
trigger2 = random < 120
trigger3 = Stateno = 604
trigger3 = Movecontact && random < 500

[State -1, AI aerial heat vision horiz]
type = ChangeState
value = ifelse(stateno = 9001, 8014, 1614)
triggerall = var(58)
triggerall = statetype = A
triggerall = ctrl || (stateno = 9001)
triggerall = p2statetype != L
trigger1 = p2bodydist Y = [-40, 5]
trigger1 = (p2bodydist X > 80) || var(57)
trigger1 = random < 140


[State -1, AI heat vision light]
type = ChangeState
value = 1010
triggerall = var(58)
triggerall = statetype = S
triggerall = ctrl
triggerall = p2statetype != L
trigger1 = P2BodyDist Y > -80
trigger1 = (P2BodyDist X > 90) || var(57)
trigger1 = random < 90

[State -1, AI heat vision medium]
type = ChangeState
value = 1012
triggerall = var(58)
triggerall = statetype = S
triggerall = ctrl
triggerall = p2statetype != L
trigger1 = P2BodyDist Y > -80
trigger1 = (P2BodyDist X > 130) || var(57)
trigger1 = random < 90

[State -1, AI heat vision strong]
type = ChangeState
value = 1014
triggerall = var(58)
triggerall = statetype = S
triggerall = ctrl
triggerall = p2statetype != L
trigger1 = P2BodyDist Y = [-80, 0]
trigger1 = P2BodyDist X > 150
trigger1 = random < 90
trigger2 = (p2stateno = 5050) || var(57)
trigger2 = P2BodyDist Y = [-80, 0]
trigger2 = random < 90

[State -1, AI slide punch]
type = ChangeState
value = 1033
triggerall = var(58)
triggerall = statetype = S
triggerall = p2statetype != C && p2statetype != L
triggerall = ctrl = 1
trigger1 = p2bodydist x = [0, 140]
trigger1 = p2bodydist y = [-40, 0]
trigger1 = enemynear, numproj = 0
trigger1 = enemynear, vel y >= -1
trigger1 = !(enemynear, ctrl)
trigger1 = random < 150 + ifelse(var(57), 40, 0) + ifelse(p2stateno = 5050, 50, 0)
trigger2 = p2bodydist x = [0, 140]
trigger2 = p2bodydist y = [-40, 0]
trigger2 = random < 150

[State -1, AI slide kick]
type = ChangeState
value = 703
triggerall = var(58)
triggerall = statetype = S
triggerall = p2statetype != L
triggerall = ctrl = 1
triggerall = p2bodydist y = [-10, 0]
triggerall = p2bodydist x = [20, 80]
triggerall = enemynear, numproj = 0
triggerall = enemynear, vel y >= 0
triggerall = enemynear, vel x >= 0
trigger1 = random < 130 + ifelse(p2statetype = C, 30, 0) + ifelse(var(57), 40, 0)
trigger2 = enemynear,HitDefAttr = SA,AA,AT
trigger2 = random < 130

[State -1, AI Ice Breath - Freeze]
type = ChangeState
value = 720
triggerall = var(58)
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = !var(57)
triggerall = p2statetype != C && p2statetype != L
trigger1 = p2bodydist x = [65, 160]
trigger1 = p2bodydist y > -70
trigger1 = enemynear, vel x >= 0
trigger1 = enemynear, vel y > -1
trigger1 = random < 120

[State -1, AI Ice Breath - Push back]
type = ChangeState
value = 725
triggerall = var(58)
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = !var(57)
triggerall = p2statetype != C && p2statetype != L
trigger1 = p2bodydist x = [75, 130]
trigger1 = p2bodydist y > -70
trigger1 = enemynear, vel x >= 0
trigger1 = enemynear, vel y >= 0
trigger1 = random < 90 + ifelse(p2stateno = 100, 25, 0)

[State -1, AI Ice Breath - popup]
type = ChangeState
value = 730
triggerall = var(58)
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2statetype != C && p2statetype != L
triggerall = p2bodydist x = [65, 130]
triggerall = p2bodydist y = [-110, 0]
trigger1 = enemynear, vel x >= 0
trigger1 = enemynear, vel y >= 0
trigger1 = random < (p2bodydist x / 3)
trigger2 = p2bodydist y < 0
trigger2 = p2bodydist X > 90
trigger2 = enemynear, numproj = 0
trigger2 = random < 100

[State -1, AI Drill close]
type = ChangeState
value = 1040
triggerall = var(58)
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2statetype != L
trigger1 = (p2bodydist x = [0, 80]) && (enemynear, vel x > -1)
trigger1 = (p2bodydist y > -50) && (enemynear, vel y > -1)
trigger1 = random < (180 - p2bodydist x)
trigger2 = stateno = 202
trigger2 = random < 270

[State -1, AI Drill middle]
type = ChangeState
value = 1042
triggerall = var(58)
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2statetype != L
trigger1 = (p2bodydist x = [0, 120]) && (enemynear, vel x > 0)
trigger1 = (p2bodydist y > -50) && (enemynear, vel y > -1)
trigger1 = random < 500
trigger2 = stateno = 202
trigger2 = random < 260

[State -1, AI Drill far]
type = ChangeState
value = 1044
triggerall = var(58)
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2statetype != L
trigger1 = (p2bodydist x = [100, 200]) && (enemynear, vel x > 0)
trigger1 = (p2bodydist y > -50) && (enemynear, vel y > -1)
trigger1 = random < (p2bodydist x - 90) + 500
trigger2 = stateno = 202
trigger2 = random < 300

[State -1, AI aerial flight kick light]
type = ChangeState
value = 713
triggerall = var(58)
triggerall = ctrl = 1
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = (enemynear, ctrl) || (p2movetype != H)
trigger1 = p2bodydist x = [100, 200]
trigger1 = p2bodydist y = [0, 70]
trigger1 = enemynear, vel x = [-0.5, 0.5]
trigger1 = random < 140
trigger2 = p2bodydist x = [30, 200]
trigger2 = p2bodydist y = [-10, 20]
trigger2 = random < 140
trigger3 = Stateno = 604
trigger3 = Movecontact && random < 250


[State -1, AI aerial flight kick medium]
type = ChangeState
value = 145
triggerall = var(58)
triggerall = ctrl = 1
triggerall = p2stateno != [120,155]
triggerall = (enemynear, ctrl) || (p2movetype != H) || var(57) || (p2stateno = 5050)
triggerall = statetype = A
trigger1 = p2bodydist x > 70
trigger1 = p2bodydist y > 70
trigger1 = random < 150
trigger2 = MoveContact
trigger2 = stateno = 604
trigger2 = random < 550
trigger3 = enemynear, numproj = 0
trigger3 = p2bodydist x / (p2bodydist y + 1) = [1, 3 - ifelse(p2statetype = C, 1.2, 0)]
trigger3 = random < (p2bodydist y / 1.5) + 150


[State -1,AI Aerial Flight Kick medium 2]
type = ChangeState
value = 145
triggerall = var(58)
triggerall = p2stateno != [120,155]
triggerall = p2statetype != L
triggerall = (enemynear, ctrl) || (p2movetype != H) || var(57) || (p2stateno = 5050)
triggerall = statetype = A
trigger1 = p2bodydist x > 70
trigger1 = p2bodydist y > 70
trigger1 = ctrl
trigger1 = random < 900
trigger2 = Stateno = 604
trigger2 = Movecontact && random < 900

[State -1, AI flight kick heavy]
type = ChangeState
value = 711
triggerall = var(58)
triggerall = ctrl = 1
triggerall = statetype = A
triggerall = p2statetype != C && p2statetype != L
triggerall = (enemynear, ctrl) || (p2movetype != H) || var(57) || (p2stateno = 5050)
trigger1 = p2bodydist y = [-20, 20]
trigger1 = enemynear, numproj = 0
trigger1 = random < 350 + ifelse(p2stateno = 5050, 30, 0)

[State -1, AI Super Combo]
Type = Changestate
value = 2525
triggerall = var(58)
triggerall = var(3) = 0
triggerall = statetype = S
triggerall = Var(1) = 0
triggerall = ctrl = 1
triggerall = (p2movetype != H) || var(57) || (p2stateno = 5050)
trigger1 = P2BodyDist Y = [-40, 30]
trigger1 = P2BodyDist X > 70
trigger1 = enemynear, vel y = [-1, 1]
trigger1 = random < 280 + ifelse(var(57) || (p2stateno = 5050), 20, 0)
trigger2 = (p2stateno = 5050) || var(57)
trigger2 = P2BodyDist Y = [-80, 0]
trigger2 = random < 180



;-| AI Basic Motions |----------------------------------------------------------
[State -1, AI standing light kick]
type = ChangeState
value = 201
triggerall = var(58)
triggerall = p2bodydist x = [0, 45]
triggerall = (p2bodydist y = [-5, 0]) && (enemynear, vel y >= 0)
triggerall = p2statetype != L
trigger1 = (ctrl && statetype = S) || stateno = 100 || stateno = 105
trigger1 = (p2movetype != H) || var(57)
trigger1 = random < 150 + ifelse(p2statetype = C, 40, 0)
trigger2 = stateno = 201
trigger2 = time > 9
trigger2 = random < 150
trigger3 = MoveContact
trigger3 = stateno = 200
trigger3 = random < 170

[State -1, AI standing middle kick]
type = ChangeState
value = 203
triggerall = var(58)
triggerall = p2bodydist x = [0, 70]
triggerall = enemynear, vel y >= 0
triggerall = p2bodydist y = [ifelse(p2bodydist x < 60, -60, -10), 0]
triggerall = p2statetype != L
trigger1 = (p2movetype != H) || var(57)
trigger1 = random < p2bodydist x + 180
trigger1 = (ctrl && statetype = S) || stateno = 100 || stateno = 105
trigger2 = MoveContact
trigger2 = stateno = 200
trigger2 = random < 120
trigger3 = MoveContact
trigger3 = stateno = 201
trigger3 = random < 120
trigger4 = MoveContact
trigger4 = stateno = 401
trigger4 = random < 120
trigger5 = MoveContact
trigger5 = stateno = 400
trigger5 = random < 120

[State -1, AI standing heavy kick]
type = ChangeState
value = 205
triggerall = var(58)
triggerall = p2bodydist x = [0, 100]
triggerall = enemynear, vel y >= 0
triggerall = p2bodydist y = [ifelse(p2bodydist x < 50, -50, -10), 0]
triggerall = p2statetype != L
trigger1 = (p2movetype != H) || var(57)
trigger1 = random < ifelse(p2bodydist x < 30, 290, p2bodydist x + 140)
trigger1 = (ctrl && statetype = S) || stateno = 100 || stateno = 105
trigger2 = MoveContact
trigger2 = stateno = 200
trigger2 = random < 130
trigger3 = MoveContact
trigger3 = stateno = 201
trigger3 = random < 130
trigger4 = MoveContact
trigger4 = stateno = 400
trigger4 = random < 130
trigger5 = MoveContact
trigger5 = stateno = 401
trigger5 = random < 130
trigger6 = MoveContact
trigger6 = stateno = 402
trigger6 = random < 130
trigger7 = MoveContact
trigger7 = stateno = 403
trigger7 = random < 130

[State -1,AI standing light punch]
type = ChangeState
value = 200
triggerall = var(58)
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2statetype != L
trigger1 = (p2bodydist x = [0, 70]) && (enemynear, vel x > -1)
trigger1 = (p2bodydist y > -60) && (enemynear, vel y > -1)
trigger1 = random < (300 - p2bodydist x)
trigger2 = stateno = 200
trigger2 = MoveContact
trigger2 = random < 300
trigger3 = stateno = 201
trigger3 = MoveContact
trigger3 = random < 350
trigger4 = MoveContact
trigger4 = stateno = 401
trigger4 = random < 500
trigger5 = MoveContact
trigger5 = stateno = 400
trigger5 = random < 500


[State -1, AI standing middle punch]
type = ChangeState
value = 202
triggerall = var(58)
triggerall = p2bodydist x = [0, 80]
triggerall = enemynear, vel y >= 0
triggerall = p2bodydist y = [ifelse(p2bodydist x < 65, -80, 0), 0]
triggerall = p2statetype != L && p2statetype != C
trigger1 = random < ifelse(p2statetype != A, p2bodydist x + 250, 400)
trigger1 = (ctrl && statetype = S) || stateno = 100 || stateno = 105
trigger2 = stateno = 200
trigger2 = MoveContact
trigger2 = random < 600
trigger3 = MoveContact
trigger3 = stateno = 201
trigger3 = random < 400
trigger4 = MoveContact
trigger4 = stateno = 400
trigger4 = random < 400

[State -1, AI standing heavy punch]
type = ChangeState
value = 204
triggerall = var(58)
triggerall = p2bodydist x = [0, 80]
triggerall = enemynear, vel y >= 0
triggerall = p2bodydist y = [ifelse(p2bodydist x < 70, -80, 0), 0]
triggerall = p2statetype != L
trigger1 = random < ifelse(p2statetype != A, p2bodydist x + 250, 350)
trigger1 = (ctrl && statetype = S) || stateno = 100 || stateno = 105
trigger2 = MoveContact
trigger2 = stateno = 200
trigger2 = random < 120
trigger3 = MoveContact
trigger3 = stateno = 201
trigger3 = random < 120
trigger4 = MoveContact
trigger4 = stateno = 203
trigger4 = random < 120
trigger5 = MoveContact
trigger5 = stateno = 202
trigger5 = random < 120
trigger6 = MoveContact
trigger6 = stateno = 401
trigger6 = random < 120
trigger7 = MoveContact
trigger7 = stateno = 402
trigger7 = random < 120

[State -1, AI crouching light kick]
type = ChangeState
value = 401
triggerall = var(58)
triggerall = p2bodydist x = [0, 45]
triggerall = p2statetype = S || p2statetype = C
triggerall = (p2movetype != H)
trigger1 = random < (300 - p2bodydist x) + ifelse(p2stateno = 150, 60, 0)
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 401
trigger2 = random < 300
trigger3 = MoveContact
trigger3 = stateno = 400
trigger3 = random < 330
trigger4 = MoveContact
trigger4 = stateno = 201
trigger4 = random < 310
trigger5 = MoveContact
trigger5 = stateno = 200
trigger5 = random < 300

[State -1, AI crouching middle kick]
type = ChangeState
value = 403
triggerall = var(58)
triggerall = p2bodydist x = [10, 60]
triggerall = (p2movetype != H)
trigger1 = random < (300 + p2bodydist x) + ifelse(p2stateno = 150, 60, 0)
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 401
trigger2 = random < 750
trigger3 = MoveContact
trigger3 = stateno = 400
trigger3 = random < 750
trigger4 = MoveContact
trigger4 = stateno = 201
trigger4 = random < 750
trigger5 = MoveContact
trigger5 = stateno = 200
trigger5 = random < 600

[State -1, AI crouching heavy kick]
type = ChangeState
value = 405
triggerall = var(58)
triggerall = p2bodydist x = [10, 60]
triggerall = p2statetype = S || p2statetype = C
triggerall = (p2movetype != H) || var(57)
trigger1 = random < (310 + p2bodydist x) + ifelse(p2stateno = 150, 50, 0)
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 401
trigger2 = random < 360
trigger3 = MoveContact
trigger3 = stateno = 400
trigger3 = random < 300
trigger4 = MoveContact
trigger4 = stateno = 201
trigger4 = random < 300
trigger5 = MoveContact
trigger5 = stateno = 200
trigger5 = random < 290
trigger6 = ctrl
trigger6 = enemynear,HitDefAttr = SA,AA,AT
trigger6 = statetype != A
trigger6 = random < 250

[State -1, AI crouching light punch]
type = ChangeState
value = 400
triggerall = var(58)
triggerall = p2bodydist x = [0, 40]
triggerall = p2statetype = S || p2statetype = C
triggerall = (p2movetype != H)
trigger1 = random < (380 - p2bodydist x) + ifelse(p2stateno = 150, 60, 0)
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = time > 9
trigger2 = random < 150
trigger3 = MoveContact
trigger3 = stateno = 200
trigger3 = random < 300
trigger4 = ctrl
trigger4 = enemynear,HitDefAttr = SA,AA,AT
trigger4 = statetype != A
trigger4 = random < 200

[State -1, AI crouching medium punch]
type = ChangeState
value = 402
triggerall = var(58)
triggerall = p2bodydist x = [0, 60]
triggerall = p2statetype = S || p2statetype = C
triggerall = (p2movetype != H)
trigger1 = random < (300 + p2bodydist x) + ifelse(p2stateno = 150, 40, 0)
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 401
trigger2 = random < 150
trigger3 = MoveContact
trigger3 = stateno = 400
trigger3 = random < 400
trigger4 = MoveContact
trigger4 = stateno = 201
trigger4 = random < 200
trigger5 = MoveContact
trigger5 = stateno = 200
trigger5 = random < 200
trigger6 = ctrl
trigger6 = enemynear,HitDefAttr = SA,AA,AT
trigger6 = statetype != A
trigger6 = random < 200

[State -1, AI crouching heavy punch]
type = ChangeState
value = 404
triggerall = var(58)
triggerall = p2bodydist x = [0, 80]
triggerall = enemynear, vel y >= 0
triggerall = p2bodydist y = [ifelse(p2bodydist x < 70, -80, 0), 0]
triggerall = p2statetype != L
trigger1 = random < ifelse(p2statetype != A, p2bodydist x + 250, 350)
trigger1 = (ctrl && statetype = S) || stateno = 100 || stateno = 105
trigger2 = MoveContact
trigger2 = stateno = 202
trigger2 = random < 600
trigger3 = MoveContact
trigger3 = stateno = 402
trigger3 = random < 600
trigger4 = stateno = 201
trigger4 = random < 600
trigger5 = MoveContact
trigger5 = stateno = 403
trigger5 = random < 750


[State -1, AI aerial light punch]
type = ChangeState
value = 600 + ifelse(stateno = 9001, 99000, 0)
triggerall = var(58)
triggerall = statetype = A
triggerall = p2bodydist x = [0, 50]
triggerall = p2bodydist y = [-20, 50];[-20, 50]
triggerall = p2statetype != L
trigger1 = ctrl || (stateno = 5400) || (stateno = 9001)
trigger1 = ((vel x >=0) && (p2bodydist x < 50)) || (random < 500)
trigger1 = random < 900


[State -1, AI aerial medium punch]
type = ChangeState
value = 602
triggerall = var(59) = 1 && RoundState = 2 && stateno != 100 && statetype = A
; (chain combos)
trigger1 = stateno = 600 && movecontact


[State -1, AI aerial strong punch]
type = ChangeState
value = 604
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A
;(chain combos)
trigger1 = stateno = 602 && movecontact
trigger2 = stateno = 603 && movecontact

[State -1, AI aerial light kick]
type = ChangeState
value = 601 + ifelse(stateno = 9001, 99000, 0)
triggerall = var(58)
triggerall = statetype = A
triggerall = p2bodydist x = [0, 50]
triggerall = p2bodydist y = [-20, 50]
triggerall = p2statetype != L
trigger1 = ctrl || (stateno = 5400) || (stateno = 9001)
trigger1 = random < 150

[State -1, AI aerial medium kick]
type = ChangeState
value = 603 + ifelse((stateno = 9001) || (stateno = [99600, 99602]), 99000, 0)
triggerall = var(58)
triggerall = statetype = A
triggerall = p2bodydist x = [0, 80]
triggerall = p2bodydist y = [-50, 30]
triggerall = p2statetype != L
trigger1 = ctrl || (stateno = 5400) || (stateno = 9001)
trigger1 = random < 150
trigger1 = ((vel x >=0) && (p2bodydist x < 50)) || (random < 100)


[State -1, AI aerial strong kick]
type = ChangeState
value = 605 + ifelse((stateno = 9001) || (stateno = [99601, 99604]), 99000, 0)
triggerall = var(58)
triggerall = statetype = A
triggerall = p2bodydist x = [0, 60]
triggerall = p2bodydist y = [10, 90]
triggerall = p2statetype != L
trigger1 = ctrl || (stateno = 5400) || (stateno = 9001)
trigger1 = ((vel x < 0) && (p2bodydist x < 40)) || (random < 100)
trigger1 = random < 150


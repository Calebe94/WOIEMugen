[Command]
name = "QCB2_P"
command = ~D, DB, B, D, DB, B, x
time = 22


[Command]
name = "QCB2_P"
command = ~D, DB, B, D, DB, B, y
time = 22


[Command]
name = "QCB2_P"
command = ~D, DB, B, D, DB, B, z
time = 22


[Command]
name = "QCF2_X"
command = ~D, DF, F, D, DF, F, x
time = 22


[Command]
name = "QCF2_P"
command = ~D, DF, F, D, DF, F, y
time = 22


[Command]
name = "QCF2_Z"
command = ~D, DF, F, D, DF, F, z
time = 22


[Command]
name = "QCF2_K"
command = ~D, DF, F, D, DF, F, a
time = 22


[Command]
name = "QCF2_K"
command = ~D, DF, F, D, DF, F, b
time = 22


[Command]
name = "QCF2_K"
command = ~D, DF, F, D, DF, F, c
time = 22

[Command]
name = "QCB_K"
command = ~D, DB, B, a


[Command]
name = "QCB_K"
command = ~D, DB, B, b


[Command]
name = "QCB_K"
command = ~D, DB, B, c


[Command]
name = "HCB_K"
command = ~F, DF, D, DB, B, a


[Command]
name = "HCB_K"
command = ~F, DF, D, DB, B, b


[Command]
name = "HCB_K"
command = ~F, DF, D, DB, B, c


[Command]
name = "HCF_X"
command = ~D, DF, F, x
time = 25


[Command]
name = "HCF_Y"
command = ~D, DF, F, y
time = 25


[Command]
name = "HCF_Z"
command = ~D, DF, F, z
time = 25


[Command]
name = "QCF_X"
command = ~U, UF, F, x

[Command]
name = "QCF_Y"
command = ~U, UF, F, y

[Command]
name = "QCF_Z"
command = ~U, UF, F, z


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





;------------------------------------------------
[Statedef -1]
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



[State -1,5]
type = ChangeState
value = 3001
trigger1 = command = "QCB2_P"
trigger1 = power >= 2000 ;Level 2
trigger1 = statetype = S
trigger1 = Var(1) = 0
trigger1 = ctrl = 1


[State -1,6]
type = Changestate
value = 31009
triggerall = command = "QCF2_X"
triggerall = power >= 1000 ;Level 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 200
trigger3 = movecontact = 1
trigger3 = stateno = 202
trigger4 = movecontact = 1
trigger4 = stateno = 204
trigger5 = movecontact = 1
trigger5 = stateno = 201
trigger6 = movecontact = 1
trigger6 = stateno = 203
trigger7 = movecontact = 1
trigger7 = stateno = 205
trigger8 = movecontact = 1
trigger8 = stateno = 400
trigger9 = movecontact = 1
trigger9 = stateno = 402
trigger10 = movecontact = 1
trigger10 = stateno = 404
trigger11 = movecontact = 1
trigger11 = stateno = 401
trigger12 = movecontact = 1
trigger12 = stateno = 403
trigger13 = movecontact = 1
trigger13 = stateno = 405
trigger14 = stateno = 100
trigger15 = stateno = 105
trigger16 = command = "QCF2_P"
trigger16 = power >= 1000 
trigger17 = command = "QCF2_Z"
trigger17 = power >= 1000


[State -1,7]
type = ChangeState
value = 31008
triggerall = command = "QCF2_Z"
triggerall = power >= 3000 ;Level 3
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 200
trigger3 = movecontact = 1
trigger3 = stateno = 202
trigger4 = movecontact = 1
trigger4 = stateno = 204
trigger5 = movecontact = 1
trigger5 = stateno = 201
trigger6 = movecontact = 1
trigger6 = stateno = 203
trigger7 = movecontact = 1
trigger7 = stateno = 205
trigger8 = movecontact = 1
trigger8 = stateno = 400
trigger9 = movecontact = 1
trigger9 = stateno = 402
trigger10 = movecontact = 1
trigger10 = stateno = 404
trigger11 = movecontact = 1
trigger11 = stateno = 401
trigger12 = movecontact = 1
trigger12 = stateno = 403
trigger13 = movecontact = 1
trigger13 = stateno = 405
trigger14 = stateno = 100
trigger15 = stateno = 105
trigger16 = command = "QCF2_X"
trigger16 = power >= 3000 
trigger17 = command = "QCF2_P"
trigger17 = power >= 3000 

[State -1]
type = ChangeState
value = 3100
triggerall = command = "QCF2_P"
triggerall = power >= 2000 ;Level 2
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 200
trigger3 = movecontact = 1
trigger3 = stateno = 202
trigger4 = movecontact = 1
trigger4 = stateno = 204
trigger5 = movecontact = 1
trigger5 = stateno = 201
trigger6 = movecontact = 1
trigger6 = stateno = 203
trigger7 = movecontact = 1
trigger7 = stateno = 205
trigger8 = movecontact = 1
trigger8 = stateno = 400
trigger9 = movecontact = 1
trigger9 = stateno = 402
trigger10 = movecontact = 1
trigger10 = stateno = 404
trigger11 = movecontact = 1
trigger11 = stateno = 401
trigger12 = movecontact = 1
trigger12 = stateno = 403
trigger13 = movecontact = 1
trigger13 = stateno = 405
trigger14 = stateno = 100
trigger15 = stateno = 105
trigger16 = command = "QCF2_X"
trigger16 = power >= 2000 
trigger17 = command = "QCF2_Z"
trigger17 = power >= 2000 

[State -1,8]
type = ChangeState
value = 3200
triggerall = command = "QCF2_K"
triggerall = power >= 1000 ;Level 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 200
trigger3 = movecontact = 1
trigger3 = stateno = 202
trigger4 = movecontact = 1
trigger4 = stateno = 204
trigger5 = movecontact = 1
trigger5 = stateno = 201
trigger6 = movecontact = 1
trigger6 = stateno = 203
trigger7 = movecontact = 1
trigger7 = stateno = 205
trigger8 = movecontact = 1
trigger8 = stateno = 400
trigger9 = movecontact = 1
trigger9 = stateno = 402
trigger10 = movecontact = 1
trigger10 = stateno = 404
trigger11 = movecontact = 1
trigger11 = stateno = 401
trigger12 = movecontact = 1
trigger12 = stateno = 403
trigger13 = movecontact = 1
trigger13 = stateno = 405



[State -1,9]
type = ChangeState
value = 1030
triggerall = NumHelper(040) = 0
triggerall = NumHelper(050) = 0
triggerall = NumHelper(060) = 0
triggerall = NumHelper(070) = 0
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "HCB_K"



[State -1,10]
type = ChangeState
value = 1031
triggerall = NumHelper(040) = 0
triggerall = NumHelper(050) = 0
triggerall = NumHelper(060) = 0
triggerall = NumHelper(070) = 0
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = command = "HCB_K"


[State -1,11]
type = ChangeState
value = 9000
triggerall = command = "QCB_K"
trigger1 = ctrl = 1


[State -1,12]
type = ChangeState
value = 1010
triggerall = command = "HCF_X"
triggerall = ctrl = 1
trigger1 = statetype = S


[State -1,13]
type = ChangeState
value = 1610
triggerall = command = "HCF_X"
triggerall = ctrl = 1
trigger1 = statetype = A


[State -1,14]
type = ChangeState
value = 1012
triggerall = command = "HCF_Y"
triggerall = ctrl = 1
trigger1 = statetype = S


[State -1,15]
type = ChangeState
value = 1612
triggerall = command = "HCF_Y"
triggerall = ctrl = 1
trigger1 = statetype = A


[State -1,16]
type = ChangeState
value = 1014
triggerall = command = "HCF_Z"
triggerall = ctrl = 1
trigger1 = statetype = S


[State -1,17]
type = ChangeState
value = 1614
triggerall = command = "HCF_Z"
triggerall = ctrl = 1
trigger1 = statetype = A


[State -1,18]
type = ChangeState
value = 1000
triggerall = Command = "QCF_X"
trigger1 = StateType = A
trigger1 = Ctrl = 1


[State -1,19]
type = ChangeState
value = 1001
triggerall = Command = "QCF_Y"
trigger1 = StateType = A
trigger1 = Ctrl = 1


[State -1,20]
type = ChangeState
value = 1002
triggerall = Command = "QCF_Z"
trigger1 = StateType = A
trigger1 = Ctrl = 1


[State -1,21]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1,22]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1




[State -1,23]
type = ChangeState
value = 210
trigger1 = p2bodydist Y >=-20
trigger1 = p2bodydist X < 20 ;Near P2
trigger1 = command = "fwd_y"
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1,24]
type = ChangeState
value = 220
triggerall = p2bodydist Y >=-20
triggerall = p2bodydist X < 20 ;Near P2
triggerall = command = "fwd_z"
triggerall = ctrl = 1
triggerall = IsHelper(007) = 0
trigger1 = statetype = S


[State -1,25]
type = ChangeState
value = 620
triggerall = p2bodydist Y <=25
triggerall = p2bodydist Y >=-25
triggerall = p2bodydist X < 20 ;Near P2
triggerall = command = "fwd_z"
triggerall = ctrl = 1
triggerall = IsHelper(007) = 0
trigger1 = statetype = A


[State -1,26]
type = ChangeState
value = 201
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time > 9
trigger3 = movecontact = 1
trigger3 = stateno = 200
trigger4 = stateno = 100
trigger5 = stateno = 105


[State -1,27]
type = ChangeState
value = 203
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 200
trigger3 = movecontact = 1
trigger3 = stateno = 201
trigger4 = movecontact = 1
trigger4 = stateno = 401
trigger5 = movecontact = 1
trigger5 = stateno = 400
trigger6 = stateno = 100
trigger7 = stateno = 105


[State -1,28]
type = ChangeState
value = 205
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 200
trigger3 = movecontact = 1
trigger3 = stateno = 201
trigger4 = movecontact = 1
trigger4 = stateno = 400
trigger5 = movecontact = 1
trigger5 = stateno = 401
trigger6 = movecontact = 1
trigger6 = stateno = 402
trigger7 = movecontact = 1
trigger7 = stateno = 403
trigger8 = stateno = 100
trigger9 = stateno = 105


[State -1,29]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = time > 9
trigger3 = stateno = 100
trigger4 = stateno = 105



[State -1,30]
type = ChangeState
value = 202
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 200
trigger3 = movecontact = 1
trigger3 = stateno = 201
trigger4 = movecontact = 1
trigger4 = stateno = 401
trigger5 = movecontact = 1
trigger5 = stateno = 400
trigger6 = stateno = 100
trigger7 = stateno = 105


[State -1,31]
type = ChangeState
value = 204
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 200
trigger3 = movecontact = 1
trigger3 = stateno = 201
trigger4 = movecontact = 1
trigger4 = stateno = 203
trigger5 = movecontact = 1
trigger5 = stateno = 400
trigger6 = movecontact = 1
trigger6 = stateno = 401
trigger7 = movecontact = 1
trigger7 = stateno = 402
trigger8 = stateno = 100
trigger9 = stateno = 105


[State -1,32]
type = ChangeState
value = 401
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 401
trigger2 = time > 6
trigger3 = movecontact = 1
trigger3 = stateno = 400
trigger4 = movecontact = 1
trigger4 = stateno = 201
trigger5 = movecontact = 1
trigger5 = stateno = 200


[State -1,33]
type = ChangeState
value = 403
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 401
trigger3 = movecontact = 1
trigger3 = stateno = 400
trigger4 = movecontact = 1
trigger4 = stateno = 201
trigger5 = movecontact = 1
trigger5 = stateno = 200



[State -1,34]
type = ChangeState
value = 405
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 401
trigger3 = movecontact = 1
trigger3 = stateno = 400
trigger4 = movecontact = 1
trigger4 = stateno = 201
trigger5 = movecontact = 1
trigger5 = stateno = 200


[State -1,35]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = time > 9
trigger3 = movecontact = 1
trigger3 = stateno = 200


[State -1,36]
type = ChangeState
value = 402
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 401
trigger3 = movecontact = 1
trigger3 = stateno = 400
trigger4 = movecontact = 1
trigger4 = stateno = 201
trigger5 = movecontact = 1
trigger5 = stateno = 200


[State -1,37]
type = ChangeState
value = 404
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 401
trigger3 = movecontact = 1
trigger3 = stateno = 400
trigger4 = movecontact = 1
trigger4 = stateno = 201
trigger5 = movecontact = 1
trigger5 = stateno = 200


[State -1,38]
type = ChangeState
value = 601
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact = 1
Trigger3 = Stateno = 5400


[State -1,39]
type = ChangeState
value = 603
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 601
trigger3 = movecontact = 1
trigger3 = stateno = 600
trigger4 = movecontact = 1
trigger4 = stateno = 602
Trigger5 = Stateno = 5400


[State -1,40]
type = ChangeState
value = 605
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 601
trigger3 = movecontact = 1
trigger3 = stateno = 600
trigger4 = movecontact = 1
trigger4 = stateno = 603
trigger5 = movecontact = 1
trigger5 = stateno = 602
trigger6 = movecontact = 1
trigger6 = stateno = 604
Trigger7 = Stateno = 5400



[State -1,41]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
Trigger2 = Stateno = 5400


[State -1,42]
type = ChangeState
value = 602
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 601
trigger3 = movecontact = 1
trigger3 = stateno = 600
Trigger4 = Stateno = 5400


[State -1,43]
type = ChangeState
value = 604
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 601
trigger3 = movecontact = 1
trigger3 = stateno = 600
trigger4 = movecontact = 1
trigger4 = stateno = 603
trigger5 = movecontact = 1
trigger5 = stateno = 602
Trigger6 = Stateno = 5400


[State -1,44]
type = ChangeState
value = 197
triggerall = command = "s"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1,45]
Type = Changestate
value = 5400
triggerall = command = "SuperJump"
trigger1 = statetype != A
Trigger1 = Ctrl = 1
trigger2 = stateno = 100
trigger3 = stateno = 105


[State -1,46]
Type = Changestate
value = 5400
triggerall = command = "holdup"
trigger1 = movecontact = 1
trigger1 = stateno = 404
trigger2 = movecontact = 1
trigger2 = stateno = 202




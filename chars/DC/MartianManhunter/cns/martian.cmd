;Criado no Z-CharCAD
;www.zcharcad.kit.net
;zmugen@yahoo.com.br
;----------------------------------

;----------------------------------
;Jhonny_DC
;http://groups.msn.com/JusticeLeagueMugenJ-L-M
;mangafahn@hotmail.com
;----------------------------------
; The CMD file.
;-| Super Motions |--------------------------------------------------------
;
;VS Style
[Command]
name = "photon_nova"
command = ~D, DB, B, x+y
time = 30


[Command]
name = "photon_nova"
command = ~D, DB, B, x+z
time = 30


[Command]
name = "photon_nova"
command = ~D, DB, B, y+z
time = 30


[Command]
name = "mega_photon"
command = ~D, DF, F, x+y
time = 30


[Command]
name = "mega_photon"
command = ~D, DF, F, x+z
time = 30


[Command]
name = "mega_photon"
command = ~D, DF, F, y+z
time = 30


[Command]
name = "photon_explosion"
command = ~D, DF, F, a+b
time = 30


[Command]
name = "photon_explosion"
command = ~D, DF, F, a+c
time = 30


[Command]
name = "photon_explosion"
command = ~D, DF, F, b+c
time = 30


[Command]
name = "QCF_PK"
command = ~D, DF, F, a+x
time = 20


[Command]
name = "QCF_PK"
command = ~D, DF, F, b+y
time = 20


[Command]
name = "QCF_PK"
command = ~D, DF, F, c+z
time = 20


[Command]
name = "qcf_2p"
command = ~D, DB, B, a+b


[Command]
name = "qcf_2p"
command = ~D, DB, B, a+c


[Command]
name = "qcf_2p"
command = ~D, DB, B, b+c

;-| Special Motions |------------------------------------------------------
[Command]
name = "fly"
command = a+b+c
time = 30


[Command]
name = "fly"
command = a+c+b
time = 30


[Command]
name = "fly"
command = b+c+a
time = 30


[Command]
name = "SonicToss"
command = ~D, DB, B, a
time = 60


[Command]
name = "SonicToss"
command = ~D, DB, B, b
time = 60


[Command]
name = "SonicToss"
command = ~D, DB, B, c
time = 60


[Command]
name = "speed_punch"
command = ~F, B, F, x
time = 20


[Command]
name = "speed_punch"
command = ~F, B, F, y
time = 20


[Command]
name = "speed_punch"
command = ~F, B, F, z
time = 20


[Command]
name = "photon_x"
command = ~D, DF, F, x


[Command]
name = "photon_y"
command = ~D, DF, F, y


[Command]
name = "photon_z"
command = ~D, DF, F, z


[Command]
name = "charge_a"
command = ~F, B, F, a


[Command]
name = "charge_b"
command = ~F, B, F, b


[Command]
name = "charge_c"
command = ~F, B, F, c


[Command]
name = "ball_x"
command = ~D, DB, B, x


[Command]
name = "ball_y"
command = ~D, DB, B, y


[Command]
name = "ball_z"
command = ~D, DB, B, z


[Command]
name = "Teleportation"
command = x+a

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10


[Command]
name = "BB"
command = B, B
time = 10

;-| Super Jump Commands |---------------------------------------------------
[Command]
name = "DU"
command = D, U
time = 10


[Command]
name = "DU"
command = D, UB
time = 10


[Command]
name = "DU"
command = D, UF
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1


[Command]
name = "guardpush"
command = x+y
time = 1


[Command]
name = "guardpush"
command = x+z
time = 1


[Command]
name = "guardpush"
command = z+y
time = 1


[Command]
name = "DU"
command = a+b+c
time = 1


[Command]
name = "run"
command = x+y+z
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1


[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
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
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
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

;---------------------------------------------------------------------------
[Statedef -1]

;Counter
[State -1, Counter]
type = ChangeState
value = 8100
trigger1 = command = "ball_x" || command = "ball_y" || command = "ball_z"
trigger1 = stateno = [150, 151]
trigger1 = statetype != A
trigger1 = power >= 1000


;Guard Push
[State -1, Guard Push]
type = ChangeState
value = 8200
triggerall = command = "guardpush"
triggerall = statetype = S
trigger1 = stateno = [150,153]


;Roll Forward
[State -1, Roll Forward]
type = ChangeState
value = 8300
triggerall = command = "holdfwd"
triggerall = time = 1
trigger1 = (stateno = 5120) && (alive = 1)


;Roll Back
[State -1, Roll Back]
type = ChangeState
value = 8305
triggerall = command = "holdback"
triggerall = time = 1
trigger1 = (stateno = 5120) && (alive = 1)


;---------------------------------------------------------------------------
;Fly Mode ON
[State -1, Fly Mode]
type = ChangeState
value = 8000
triggerall = command = "fly"
trigger1 = var(10) = -1
trigger1 = ctrl


;Fly Mode OFF
[State -1, Fly Mode]
type = ChangeState
value = 8002
triggerall = command = "fly"
trigger1 = var(10) > 0
trigger1 = ctrl


;---Sonic Toss----------------------------
[State -1, Sonic Toss]
type = ChangeState
value = 1200
triggerall = Command = "SonicToss"
trigger1 = StateType = S
trigger1 = StateNo !=100
trigger1 = P2BodyDist X < 50
trigger1 = P2MoveType != H
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 220
trigger3 = MoveContact
trigger3 = StateNo = 230
trigger4 = MoveContact
trigger4 = StateNo = 240
trigger5 = MoveContact
trigger5 = StateNo = 250
trigger6 = MoveContact
trigger6 = StateNo = 400
trigger7 = MoveContact
trigger7 = StateNo = 410
trigger8 = MoveContact
trigger8 = StateNo = 420
trigger9 = MoveContact
trigger9 = StateNo = 430
trigger10 = MoveContact
trigger10 = StateNo = 440
trigger11 = MoveContact
trigger11 = StateNo = 450
trigger12 = MoveContact
trigger12 = StateNo = 200 || StateNo = 210


;---------------------------------------------------------------------------
;Photon Nova
[State -1, Photon Nova]
type = ChangeState
value = 2020
triggerall = command = "photon_nova"
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = power >= 1000


;Mega Photon
[State -1, Mega Photon]
type = ChangeState
value = 2000
triggerall = command = "mega_photon"
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = power >= 1000


;Photon Explosion
[State -1, Photon Explosion]
type = ChangeState
value = 2010
triggerall = command = "photon_explosion"
trigger1 = statetype != A 
trigger1 = ctrl
trigger1 = power >= 1000


;Martian Super (uses one super bar)
[State -1, Martian Super]
type = ChangeState
value = 3100
triggerall = command = "QCF_PK"
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact


;SuperAmalgam:Marco Xavier
[State -1, BFG]
type = ChangeState
value = 3300
triggerall = power >= 1000&& !Var(12)
triggerall = StateType != A
triggerall = MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = NumHelper(3305) = 0
trigger1 = command = "qcf_2p"


;===========================================================================
;Photon Beam X
[State -1, Beam X]
type = ChangeState
value = 1000
triggerall = command = "photon_x"
trigger1 = statetype != A
trigger1 = ctrl


;Photon Beam Y
[State -1, Beam Y]
type = ChangeState
value = 1010
triggerall = command = "photon_y"
trigger1 = statetype != A
trigger1 = ctrl


;Photon Beam Z
[State -1, Beam Z]
type = ChangeState
value = 1020
triggerall = command = "photon_z"
trigger1 = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Air Photon Beam X
[State -1, Air_Beam X]
type = ChangeState
value = 1005
triggerall = command = "photon_x"
trigger1 = statetype = A
trigger1 = stateno != 105
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 630
trigger4 = movecontact = 1
trigger5 = stateno = 640
trigger5 = movecontact = 1


;Air Photon Beam Y
[State -1, Air_Beam Y]
type = ChangeState
value = 1015
triggerall = command = "photon_y"
trigger1 = statetype = A
trigger1 = stateno != 105
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 630
trigger4 = movecontact = 1
trigger5 = stateno = 640
trigger5 = movecontact = 1


;Air Photon Beam Z
[State -1, Air_Beam Z]
type = ChangeState
value = 1025
triggerall = command = "photon_z"
trigger1 = statetype = A
trigger1 = stateno != 105
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 630
trigger4 = movecontact = 1
trigger5 = stateno = 640
trigger5 = movecontact = 1


;---------------------------------------------------------------------------
;Photon Ball X
[State -1, Ball X]
type = ChangeState
value = 1050
triggerall = command = "ball_x"
trigger1 = statetype != A
trigger1 = ctrl


;Photon Ball Y
[State -1, Ball Y]
type = ChangeState
value = 1060
triggerall = command = "ball_y"
trigger1 = statetype != A
trigger1 = ctrl


;Photon Ball Z
[State -1, Ball Z]
type = ChangeState
value = 1070
triggerall = command = "ball_z"
trigger1 = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Teleportation
[State -1, [State -1]
type = ChangeState
value = 7777
triggerall = command = "Teleportation"
triggerall = power >= 25
triggerall = NumProjID(2001) = 0
triggerall = StateNo != [1090, 1098]
trigger1 = statetype = S         
trigger2 = stateno = 2000  


;---------------------------------------------------------------------------
;Speed Light Punch
[State -1, SpeedLight Punch]
type = ChangeState
value = 1100
triggerall = command = "speed_punch"
trigger1 = statetype != A 
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1


;---------------------------------------------------------------------------
;Charge A
[State -1, Charge A]
type = ChangeState
value = 1150
triggerall = command = "charge_a"
trigger1 = statetype = A || statetype = S 
trigger1 = stateno != 105
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 630
trigger4 = movecontact = 1
trigger5 = stateno = 640
trigger5 = movecontact = 1


;Charge B
[State -1, Charge B]
type = ChangeState
value = 1160
triggerall = command = "charge_b"
trigger1 = statetype = A || statetype = S
trigger1 = stateno != 105
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 630
trigger4 = movecontact = 1
trigger5 = stateno = 640
trigger5 = movecontact = 1


;Charge C
[State -1, Charge C]
type = ChangeState
value = 1170
triggerall = command = "charge_c"
trigger1 = statetype = A || statetype = S
trigger1 = stateno != 105
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 630
trigger4 = movecontact = 1
trigger5 = stateno = 640
trigger5 = movecontact = 1


;===========================================================================
;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 41
trigger1 = command = "DU"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = command = "holdup"
trigger2 = stateno = 420
trigger2 = movecontact = 1


;---------------------------------------------------------------------------
;Run Forward
[State -1, Dash Fwd]
type = ChangeState
value = 100
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 105
triggerall = stateno != 100
trigger1 = command = "FF"
trigger2 = command = "run"


;Dash Forward (Air)
[State -1, Dash Fwd Air]
type = ChangeState
value = 101
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 105
triggerall = stateno != 101
trigger1 = command = "FF"
trigger2 = command = "run"


;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "BB"


;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger5 = stateno = 430
trigger5 = movecontact = 1


;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 240
trigger5 = movecontact = 1
trigger6 = stateno = 400
trigger6 = movecontact = 1
trigger7 = stateno = 410
trigger7 = movecontact = 1
trigger8 = stateno = 430
trigger8 = movecontact = 1
trigger9 = stateno = 440
trigger9 = movecontact = 1


;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 400
trigger3 = movecontact = 1


;---------------------------------------------------------------------------
;Standing Medium Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 400
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 430
trigger7 = movecontact = 1


;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 410
trigger8 = movecontact = 1
trigger9 = stateno = 420
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = movecontact = 1
trigger11 = stateno = 440
trigger11 = movecontact = 1


;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = stateno != 195
trigger1 = ctrl


;---------------------------------------------------------------------------
;Agarre
[State -1, Agarre Telepatico]
type = ChangeState
value = 270
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl 


;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger5 = stateno = 430
trigger5 = movecontact = 1


;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 240
trigger5 = movecontact = 1
trigger6 = stateno = 400
trigger6 = movecontact = 1
trigger7 = stateno = 410
trigger7 = movecontact = 1
trigger8 = stateno = 430
trigger8 = movecontact = 1
trigger9 = stateno = 440
trigger9 = movecontact = 1


;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 400
trigger3 = movecontact = 1


;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 400
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 430
trigger7 = movecontact = 1


;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 410
trigger8 = movecontact = 1
trigger9 = stateno = 420
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = movecontact = 1
trigger11 = stateno = 440
trigger11 = movecontact = 1


;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7


;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 630
trigger3 = movecontact = 1


;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 630
trigger4 = movecontact = 1


;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact = 1


;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 630
trigger4 = movecontact = 1


;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 620
trigger4 = movecontact = 1



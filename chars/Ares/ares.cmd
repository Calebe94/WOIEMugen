; The CMD file.

;-| SUPER MOVIMIENTOS |------------------------------------------------------
[Command]
Name= "triple ken"
command = ~D, DF, F, a+z
time = 20

[Command]
Name= "hacha"
command = ~D, DB, B, x+y
time = 20

[Command]
Name= "espada"
command = ~D, DB, B, y+z
time = 20

[Command]
Name= "rampage"
command = ~D, DB, B, x+z
time = 20

[Command]
Name= "axe_rage"
command = ~D, DF, F, x+z
time = 20

[Command]
Name= "uzi"
command = ~D, DF, F, c+z
time = 20

[Command]
Name= "patada_larga"
command = ~D, DF, F, a
time = 20

[Command]
Name= "patada_congiro"
command = ~D, DF, F, b
time = 20

[Command]
Name= "patada_fuerte"
command = ~D, DF, F, c
time = 20

[Command]
Name= "puñocongiro"
command = ~D, DF, F, x
time = 20

[Command]
Name= "embestidasimple"
command = ~D, DF, F, y
time = 20

[Command]
Name= "embestidaconescudo"
command = ~D, DF, F, z
time = 20

[Command]
Name= "cargar vida"
command = a+b+c
time = 20

[Command]
name = "Eris"
command = a+x
time = 1

;-| Double Tap |------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| 2/3 Button Combination |------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1


;-| Dir + Button |----------------------------------------------
[Command]
name = "fwd_x"
command = /F,x
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
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "downfwd_a"
command = /DF,a
time = 1

[Command]
name = "downfwd_b"
command = /DF,b
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
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
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
time = 1

;-| Single Button |-----------------------------------------------
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
name = "burla"
command = s
time = 1

;-| Hold Button |---------------------------------------------
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

;-| Hold Dir |-------------------------------------------------
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

;---------------------------------------------------------
;--------------| State Entry |------------------------------
;---------------------------------------------------------
; Jamas quites la siguiente linea. Es requerida por el CMD standard.
[Statedef -1]

;==================================================================
;Cargar Vida
[State -1]
type = ChangeState
value = 6000
trigger1=command="cargar vida"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RunBack 	;Correr hacia atras
[State -1, [State -1]
type = ChangeState
value = 105
trigger1=command="BB"
trigger1 = statetype = S
trigger1 = ctrl

;-------------------------------------------------------------
;RunFwd		;Correr hacia adelante
[State -1, [State -1]
type = ChangeState
value = 100
trigger1=command="FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Taunt
[State -1]
type = ChangeState
value = 195
trigger1 = command = "burla"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;=============================================================
; GOLPES ESPECIALES
;=============================================================
;Triple Ken
[State -1]
type = ChangeState
value = 1010
trigger1=command="triple ken"
triggerall = power >= 1500 ;Level 2
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Hachazo
[State -1]
type = ChangeState
value = 1000
trigger1=command="hacha"
triggerall = power >= 1000 ;Level 1
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Espadazo
[State -1]
type = ChangeState
value = 1001
trigger1=command="espada"
triggerall = power >= 1000 ;Level 1
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Rampage
[State -1]
type = ChangeState
value = 1002
trigger1=command="rampage"
triggerall = power >= 1000 ;Level 1
triggerall = p2bodydist X > 80
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Axe Rage
[State -1]
type = ChangeState
value = 1006
trigger1=command="axe_rage"
triggerall = power >= 1500 ;Level 2
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Ametralladora
[State -1]
type = ChangeState
value = 1004
triggerall=command="uzi"
triggerall = power >= 1000
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [200, 450]
trigger2 = MoveContact

;---------------------------------------------------------------------------
;Patada Especial 1
[State -1]
type = ChangeState
value = 1003
trigger1=command="patada_larga"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Patada Especial 2
[State -1]
type = ChangeState
value = 1009
trigger1=command="patada_congiro"
triggerall = power >= 150
triggerall = p2bodydist X > 70
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Patada Especial 3
[State -1]
type = ChangeState
value = 1011
trigger1=command="patada_fuerte"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Puño con Giro a la Ken Master
[State -1]
type = ChangeState
value = 1007
trigger1=command="puñocongiro"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Embestida sin Escudo
[State -1]
type = ChangeState
value = 1013
trigger1=command="embestidasimple"
triggerall = power >= 1000 ;Level 1
triggerall = p2bodydist X > 60
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Embestida con Escudo
[State -1]
type = ChangeState
value = 1008
trigger1=command="embestidaconescudo"
triggerall = power >= 1200 ;Level 2
triggerall = p2bodydist X > 60
trigger1 = statetype = S
trigger1 = ctrl = 1

;-----------------------------------------
;Helper Eris
[State -1,48]
type = ChangeState
value = 195201
triggerall = NumHelper(9520) = 0
triggerall = power >= 1000
trigger1 = command = "Eris"
trigger1 = statetype != A && ctrl



;=============================================================
;GOLPES NORMALES
;=============================================================
;Agarre Puñetazo
[State -1]
type = ChangeState
value = 800
triggerall = command = "holdfwd"
triggerall = command =  "y"
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = p2statetype = S
trigger1 = P2bodydist X <= 10
trigger1 = P2movetype!= H
trigger1 = ctrl = 1

;Agarre Pisoton
[State -1, Throw]
type = ChangeState
value = 850
triggerall = P2BodyDist X < 30
triggerall = (Command = "a" || Command = "b") && (Command = "holdfwd" || Command = "holdback")
triggerall = StateType = S
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Golpe corto de pie
[State -1, [State -1]
type = ChangeState
value = 200
triggerall=command="x"
triggerall=command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = time > 7

;---------------------------------------------------------------
;Golpe medio de pie
[State -1, [State -1]
type = ChangeState
value = 210
triggerall=command="y"
triggerall=command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = time > 7

;----------------------------------------------------------------
;Golpe largo de pie
[State -1, [State -1]
type = ChangeState
value = 220
triggerall=command="z"
triggerall=command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact

;---------------------------------------------------------------------------
;patada corta de pie
[State -1]
type = ChangeState
value = 230
triggerall=command="a"
triggerall=command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 230
trigger2 = time > 7

;---------------------------------------------------------------------------
;patada media de pie
[State -1]
type = ChangeState
value = 240
triggerall=command="b"
triggerall=command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 230
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;patada larga de pie
[State -1]
type = ChangeState
value = 250
triggerall=command="c"
triggerall=command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 230
trigger2 = movecontact = 1
trigger3 = stateno = 240
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Golpe Corto Agachado
[State -1]
type = ChangeState
value = 400
triggerall=command="x"
triggerall=command="holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = time > 7

;---------------------------------------------------------------------------
;Golpe Medio Agachado
[State -1]
type = ChangeState
value = 410
triggerall=command="y"
triggerall=command="holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Golpe Fuerte Agachado
[State -1]
type = ChangeState
value = 420
triggerall=command="z"
triggerall=command="holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger3 = stateno = 410
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Patada corta agachada
[State -1]
type = ChangeState
value = 430
triggerall=command="a"
triggerall=command="holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 430
trigger2 = time > 7

;---------------------------------------------------------------------------
;Patada media agachada
[State -1]
type = ChangeState
value = 440
triggerall=command="b"
triggerall=command="holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 430
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Patada larga agachado
[State -1]
type = ChangeState
value = 450
triggerall=command="c"
triggerall=command="holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 430
trigger2 = MoveContact
trigger3 = stateno = 440
trigger3 = MoveContact

;---------------------------------------------------------------------------
;Puño corto aereo
[State -1]
type = ChangeState
value = 600
trigger1=command="x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Puño medio aereo
[State -1]
type = ChangeState
value = 610
trigger1=command="y"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Puño largo aereo
[State -1]
type = ChangeState
value = 620
trigger1=command="z"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Patada corta aerea
[State -1]
type = ChangeState
value = 630
trigger1=command="a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Patada media aerea
[State -1]
type = ChangeState
value = 640
trigger1=command="b"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Patada larga aerea
[State -1]
type = ChangeState
value = 650
trigger1=command="c"
trigger1 = statetype = A
trigger1 = ctrl = 1


; Lobo's CMD file

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "DU"
command = D, U
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "3P"
command = x+y+z
time = 1

[Command]
name = "3K"
command = a+b+c
time = 1

[Command]
name = "recovery roll"
command = a+b
time = 1

[Command]
name = "recovery roll"
command = b+c
time = 1

[Command]
name = "recovery roll"
command = a+c
time = 1

[Command]
name = "pushblock"
command = x+y
time = 5

[Command]
name = "pushblock"
command = x+z
time = 5

[Command]
name = "pushblock"
command = y+z
time = 5

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

[Command]
name = "hold-start"
command = /s
time = 1

[Command]
name = "release-start"
command = ~s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1


;-| Supers |-----------------------------------------------------------
[Command] ; Amalgam (Quarter circle forward + hard punch & hard kick)
name = "Amalgam"
command = ~D, DF, F, z+c
time = 40

[Command]
name = "qcf_2p"
command = ~D, DF, F, x+y

[Command]
name = "qcf_2p"
command = ~D, DF, F, x+z

[Command]
name = "qcf_2p"
command = ~D, DF, F, y+z

[Command]
name = "qcb_2p"
command = ~D, DB, B, x+y

[Command]
name = "qcb_2p"
command = ~D, DB, B, x+z

[Command]
name = "qcb_2p"
command = ~D, DB, B, y+z

[Command]
name = "qcf_2k"
command = ~D, DF, F, a+b

[Command]
name = "qcf_2k"
command = ~D, DF, F, a+c

[Command]
name = "qcf_2k"
command = ~D, DF, F, b+c

[Command]
name = "qcb_2k"
command = ~D, DB, B, a+b

[Command]
name = "qcb_2k"
command = ~D, DB, B, a+c

[Command]
name = "qcb_2k"
command = ~D, DB, B, b+c


;-| Specials |-----------------------------------------------------------
[Command]
name = "hcb_x"
command = ~F, D, B, x

[Command]
name = "hcb_x"
command = ~F, DF, D, DB, B, x

[Command]
name = "hcb_y"
command = ~F, D, B, y

[Command]
name = "hcb_y"
command = ~F, DF, D, DB, B, y

[Command]
name = "hcb_z"
command = ~F, D, B, z

[Command]
name = "hcb_z"
command = ~F, DF, D, DB, B, z

[Command]
name = "qcf_x"
command = ~D, DF, F, x

[Command]
name = "qcf_y"
command = ~D, DF, F, y

[Command]
name = "qcf_z"
command = ~D, DF, F, z

[Command]
name = "anti_x"
command = ~F, D, F, x

[Command]
name = "anti_y"
command = ~F, D, F, y

[Command]
name = "anti_z"
command = ~F, D, F, z

[Command]
name = "qcf_a"
command = ~D, DF, F, a

[Command]
name = "qcf_b"
command = ~D, DF, F, b

[Command]
name = "qcf_c"
command = ~D, DF, F, c

[Command]
name = "qcb_a"
command = ~D, DB, B, a

[Command]
name = "qcb_b"
command = ~D, DB, B, b

[Command]
name = "qcb_c"
command = ~D, DB, B, c

[Command]
name = "qcb_x"
command = ~D, DB, B, x

[Command]
name = "qcb_y"
command = ~D, DB, B, y

[Command]
name = "qcb_z"
command = ~D, DB, B, z

[Command]
name = "frag1"
command = ~D, DF, F, x  ;x, x
time = 40

[Command]
name = "frag2"
command = ~D, DF, F, y  ;y, y
time = 40

[Command]
name = "frag3"
command = ~D, DF, F, z  ;z, z
time = 40


;---------------------------------------------------------------------------
; 2. State entry
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]


;===========================================================================

;---------------------------------------------------------------------------
; Amalgam Hyper (The Main Mallard)
[State -1, Amalgam]
type = ChangeState
value = 4000
triggerall = power >= 5000
triggerall = StateType != A
triggerall = MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "Amalgam"


;---------------------------------------------------------------------------
; Main Man Airlines Hyper
[State -1, MainManAir]
type = ChangeState
value = 3600
triggerall = power >= 1000
triggerall = StateType != A
triggerall = MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcf_2k"


;---------------------------------------------------------------------------
; Big Friggin' Gun
[State -1, MegaFrag]
type = ChangeState
value = 3300
triggerall = power >= 1000
triggerall = StateType != A
triggerall = MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcf_2p"


;---------------------------------------------------------------------------
; Main Men Hyper
[State -1, MainMen]
type = ChangeState
value = 3100
triggerall = command = "qcb_2k"
triggerall = power >= 1000
triggerall = StateType != A
triggerall = MoveType != H
triggerall = NumHelper(10) = 0
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
; Lights Out, Clyde! (Hook & Chain Hyper)
[State -1, LightsOut]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = StateType != A
triggerall = MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcb_2p"


;---------------------------------------------------------------------------
; Fraggaboom!
[State -1, Grenade]
type = ChangeState
value = 2500
triggerall = StateType != A
triggerall = MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = NumHelper(10) = 0
triggerall = NumHelper(25) = 0
;trigger1 = (command = "anti_x") || (command = "anti_y") || (command = "anti_z")
trigger1 = (command = "qcf_a") || (command = "qcf_b") || (command = "qcf_c")


;---------------------------------------------------------------------------
; Fraggaboom! (air)
[State -1, GrenadeAir]
type = ChangeState
value = 2600
triggerall = StateType = A
triggerall = MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = NumHelper(10) = 0
triggerall = NumHelper(25) = 0
;trigger1 = (command = "anti_x") || (command = "anti_y") || (command = "anti_z")
trigger1 = (command = "qcf_a") || (command = "qcf_b") || (command = "qcf_c")


;---------------------------------------------------------------------------
; RotGut
[State -1, RotGut]
type = ChangeState
value = 2000
triggerall = StateType != A
triggerall = MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = Var(21) = 0
trigger1 = (command = "qcb_a") || (command = "qcb_b") || (command = "qcb_c")


;---------------------------------------------------------------------------
; Mr. Hook
[State -1, MrHook]
type = ChangeState
value = 1200
triggerall = StateType != A
triggerall = MoveType != H
triggerall = P2BodyDist X > 50
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = NumHelper(10) = 0
trigger1 = (command = "qcb_x") || (command = "qcb_y") || (command = "qcb_z")


;---------------------------------------------------------------------------
; Frag! (ground, weak)
[State -1, Frag]
type = ChangeState
value = 1000
triggerall = StateType != A
triggerall = MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = NumHelper(10) = 0
trigger1 = (command = "frag1")

; Frag! (ground, medium)
[State -1, Frag]
type = ChangeState
value = 1001
triggerall = StateType != A
triggerall = MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = NumHelper(10) = 0
trigger1 = (command = "frag2")

; Frag! (ground, strong)
[State -1, Frag]
type = ChangeState
value = 1002
triggerall = StateType != A
triggerall = MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = NumHelper(10) = 0
trigger1 = (command = "frag3")

;---------------------------------------------------------------------------
; Frag! (air)
[State -1, FragAir]
type = ChangeState
value = 1100
triggerall = StateType = A
triggerall = MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = NumHelper(10) = 0
trigger1 = (command = "qcf_x") || (command = "qcf_y") || (command = "qcf_z")


;---------------------------------------------------------------------------
; Standing Push Block (AKA advancing guard)
[State -1, SPushBlock]
type = ChangeState
value = 750
triggerall = command = "pushblock" && StateType = S
trigger1 = StateNo = 130
trigger2 = StateNo = [150, 151]

;---------------------------------------------------------------------------
; Crouching Push Block
[State -1, CPushBlock]
type = ChangeState
value = 752
triggerall = command = "pushblock" && StateType = C
trigger1 = StateNo = 131
trigger2 = StateNo = [152, 153]

;---------------------------------------------------------------------------
; Air Push Block
[State -1, APushBlock]
type = ChangeState
value = 754
triggerall = command = "pushblock" && StateType = A
trigger1 = StateNo = 132
trigger2 = StateNo = [154, 155]

;---------------------------------------------------------------------------
;Fwd Dash
[State -1, FwdDash]
type = ChangeState
value = 100
triggerall = command != "holdback"
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "FF"
trigger2 = command = "3P"

;---------------------------------------------------------------------------
;Back Dash
[State -1, BackDash]
type = ChangeState
value = 105
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "BB"
trigger2 = command = "holdback"
trigger2 = command = "3P"

;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 700
triggerall = (StateType != A) && (Var(0) = 0)
triggerall = Var(20) != 2
trigger1 = (command = "DU") && (Ctrl)
trigger2 = (command = "3K") && (Ctrl)
trigger3 = (command = "holdup") && ((StateNo = 455) || (PrevStateNo = 455)) && (MoveHit = 1)


;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "start"


;---------------------------------------------------------------------------
; Throws
; 
; Standing : 810
; Air : 850
;---------------------------------------------------------------------------
; Standing throw
[State -1, Throw1]
type = ChangeState
value = 810
triggerall = (command = "z") && ((command = "holdfwd") || (command = "holdback"))
triggerall = statetype = S
trigger1 = (ctrl = 1) && (P2BodyDist X <= 25) ;&& (P2statetype != A)

; Air throw
[State -1, AirThrow1]
type = ChangeState
value = 850
triggerall = (command = "z") && ((command = "holdfwd") || (command = "holdback"))
triggerall = StateType = A
trigger1 = (ctrl = 1) && (P2BodyDist X <= 25) && (P2statetype = A)


;---------------------------------------------------------------------------
; Alternate standing basics
; 
; Headbutt : 310
; Double-handed uppercut (launcher) : 320
;---------------------------------------------------------------------------
; Headbutt (close-range medium punch)
[State -1, Headbutt]
type = ChangeState
value = 310
triggerall = (command = "y") && (statetype = S)
trigger1 = (ctrl = 1) && (P2statetype != A) && (P2BodyDist X <= 25)

; Double-handed uppercut (close-range hard punch)
[State -1, doubleuppercut]
type = ChangeState
value = 320
triggerall = (command = "z") && (statetype = S) && !Alive
trigger1 = (ctrl = 1) && (P2BodyDist X <= 35) ;&& (P2statetype != A) 


;---------------------------------------------------------------------------
; Standing basics
; 
; Punches: 210, 230, 250
; Kicks: 220, 240, 260
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 210
triggerall = (command = "x") && (statetype = S)
trigger1 = ctrl = 1

; superspeed combo
trigger2 = Var(20)=3

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 220
triggerall = (command = "a") && (statetype = S)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = (StateNo = 210) && (MoveContact = 1)

; superspeed combo
trigger3 = Var(20)=3

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 230
triggerall = (command = "y") && (statetype = S)
trigger1 = ctrl = 1

; standard medium punch at close range, P2 in air (can't headbutt a flying Superman =P)
trigger2 = (ctrl = 1) && ((P2BodyDist X <= 25) && (P2statetype = A))

; (chain combos)
trigger3 = ((stateno = 210) || (stateno = 220)) && (movecontact = 1)

; superspeed combo
trigger4 = Var(20)=3

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = (command = "b") && (statetype = S)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 210) || (stateno = 220) || (stateno = 230)) && (movecontact = 1)

; superspeed combo
trigger3 = Var(20)=3

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 250
triggerall = (command = "z") && (statetype = S)
trigger1 = (ctrl = 1) ;&& (P2BodyDist X > 35)

; (chain combos)
trigger2 = ((stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240)) && (movecontact = 1)

; superspeed combo
trigger3 = Var(20)=3

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 260
triggerall = (command = "c") && (statetype = S)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) || (stateno = 250)) && (movecontact = 1)

; superspeed combo
trigger3 = Var(20)=3

;---------------------------------------------------------------------------
; Crouching basics
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 410
triggerall = command = "x"
triggerall = statetype = C
trigger1 = ctrl = 1

; superspeed combo
trigger2 = Var(20)=3

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 420
triggerall = command = "a"
triggerall = statetype = C
trigger1 = ctrl = 1

; (chain combos)
trigger2 = (StateNo = 410) && (MoveContact = 1)

; superspeed combo
trigger3 = Var(20)=3

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 430
triggerall = command = "y"
triggerall = statetype = C
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 410) || (stateno = 420)) && (movecontact = 1)

; superspeed combo
trigger3 = Var(20)=3

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = (command = "b") && (statetype = C)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 410) || (stateno = 420) || (stateno = 430)) && (movecontact = 1)

; superspeed combo
trigger3 = Var(20)=3

;---------------------------------------------------------------------------
; Crouch Hard Punch (1-2 punch, for combos)
[State -1, Crouch Hard Punch]
type = ChangeState
value = 450
triggerall = (command = "z") && (statetype = C)

; (chain combos)
trigger1 = ((stateno = 410) || (stateno = 420) || (stateno = 430) || (stateno = 440)) && (movecontact = 1)

; superspeed combo
trigger2 = Var(20)=3

;---------------------------------------------------------------------------
; Crouch Hard Punch (alternate; launcher)
[State -1, Crouch launcher]
type = ChangeState
value = 455
triggerall = (command = "z") && (statetype = C)
trigger1 = ctrl = 1

; superspeed combo
trigger2 = Var(20)=3

;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 460
triggerall = command = "c"
triggerall = statetype = C
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 410) || (stateno = 420) || (stateno = 430) || (stateno = 440) || (stateno = 450)) && (movecontact = 1)

; superspeed combo
trigger3 = Var(20)=3

;---------------------------------------------------------------------------
; Air basics
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 610
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl = 1

; superspeed combo
trigger2 = Var(20)=3

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 620
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl = 1

; (chain combos)
trigger2 = (stateno = 610) && (movecontact = 1)

; superspeed combo
trigger3 = Var(20)=3

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 630
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 610) || (stateno = 620)) && (movecontact = 1)

; superspeed combo
trigger3 = Var(20)=3

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 610) || (stateno = 620) || (stateno = 630)) && (movecontact = 1)

; superspeed combo
trigger3 = Var(20)=3

;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 650
triggerall = (command = "z") && (statetype = A)
trigger1 = ctrl = 1  ; && (P2BodyDist X > 25)

; (chain combos)
trigger2 = ((stateno = 610) || (stateno = 620) || (stateno = 630) || (stateno = 640)) && (movecontact = 1)

; superspeed combo
trigger3 = Var(20)=3

;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 660
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 610) || (stateno = 620) || (stateno = 630) || (stateno = 640) || (stateno = 650)) && (movecontact = 1)

; superspeed combo
trigger3 = Var(20)=3

;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------


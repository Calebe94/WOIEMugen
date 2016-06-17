; Lobo's CMD file
;-| AI |-------------------------------------------------------------
[Command]
name = "CPU1"
command = U, D, F
time = 1

[Command]
name = "CPU2"
command = U, B, F
time = 1

[Command]
name = "CPU3"
command = U, D, D
time = 1

[Command]
name = "CPU4"
command = F, B, U
time = 1

[Command]
name = "CPU5"
command = U, F, U, B
time = 1

[Command]
name = "CPU6"
command = U, D, B
time = 1

[Command]
name = "CPU7"
command = F, F, B
time = 1

[Command]
name = "CPU8"
command = U, D, U
time = 1

[Command]
name = "CPU9"
command = F, B, B
time = 1

[Command]
name = "CPU10"
command = F, F, B, B
time = 1

[Command]
name = "CPU11"
command = U, U, F
time = 1

[Command]
name = "CPU12"
command = U, B, B
time = 1

[Command]
name = "CPU13"
command = U, B, F, F
time = 1

[Command]
name = "CPU14"
command = U, F, B, U
time = 1

[Command]
name = "CPU15"
command = U, B, F, U
time = 1

[Command]
name = "CPU16"
command = U, B, B, B
time = 1

[Command]
name = "CPU17"
command = U, D, B, F
time = 1

[Command]
name = "CPU18"
command = U, D, B, D
time = 1

[Command]
name = "CPU19"
command = U, D, F, U
time = 1

[Command]
name = "CPU20"
command = U, D, U, B
time = 1

[Command]
name = "CPU21"
command = U, D, F, F
time = 1

[Command]
name = "CPU22"
command = F, F, F, F
time = 1

[Command]
name = "CPU23"
command = U, U, U, D
time = 1

[Command]
name = "CPU24"
command = B, B, B
time = 1

[Command]
name = "CPU25"
command = D, D, D, D
time = 1

[Command]
name = "CPU26"
command = D, D, D
time = 1

[Command]
name = "CPU27"
command = F, F, F
time = 1

[Command]
name = "CPU28"
command = U, U, U
time = 1

[Command]
name = "CPU29"
command = U, U, B, B
time = 1

[Command]
name = "CPU30"
command = D, D, F, F
time = 1

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


;-| Hypers |-----------------------------------------------------------
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
[State -1, AIActivate]
type = VarSet
triggerall = var(12) != 1
triggerall = RoundState != 3
trigger1  = IsHelper(10) || IsHelper(11)
;trigger1  = command = "CPU1"
trigger2  = command = "CPU2"
trigger3  = command = "CPU3"
trigger4  = command = "CPU4"
trigger5  = command = "CPU5"
trigger6  = command = "CPU6"
trigger7  = command = "CPU7"
trigger8  = command = "CPU8"
trigger9  = command = "CPU9"
trigger10  = command = "CPU10"
trigger11  = command = "CPU11"
trigger12  = command = "CPU12"
trigger13  = command = "CPU13"
trigger14  = command = "CPU14"
trigger15  = command = "CPU15"
trigger16  = command = "CPU16"
trigger17  = command = "CPU17"
trigger18  = command = "CPU18"
trigger19  = command = "CPU19"
trigger20  = command = "CPU20"
trigger21  = command = "CPU21"
trigger22  = command = "CPU22"
trigger23  = command = "CPU23"
trigger24  = command = "CPU24"
trigger25  = command = "CPU25"
trigger26  = command = "CPU26"
trigger27  = command = "CPU27"
trigger28  = command = "CPU28"
trigger29  = command = "CPU29"
trigger30  = command = "CPU30"
var(12) = 1

;======================================================================
;User Input Attacks
;----------------------------------------------------------------------
; Amalgam Hyper (The Main Mallard)
[State -1, Amalgam]
type = ChangeState
value = 4000
triggerall = power >= 5000 && !Var(12)
triggerall = StateType != A && MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "Amalgam"


;---------------------------------------------------------------------------
; Main Man Airlines Hyper
[State -1, MainManAir]
type = ChangeState
value = 3600
triggerall = power >= 1000&& !Var(12)
triggerall = StateType != A && MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcf_2k"


;---------------------------------------------------------------------------
; Big Friggin' Gun
[State -1, BFG]
type = ChangeState
value = 3300
triggerall = power >= 1000&& !Var(12)
triggerall = StateType != A && MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = NumHelper(3305) = 0
trigger1 = command = "qcf_2p"


;---------------------------------------------------------------------------
; Main Men Hyper
[State -1, MainMen]
type = ChangeState
value = 3100
triggerall = command = "qcb_2k"&& !Var(12)
triggerall = power >= 1000
triggerall = StateType != A && MoveType != H
triggerall = NumHelper(10) = 0
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
; Lights Out, Clyde! (Hook & Chain Hyper)
[State -1, LightsOut]
type = ChangeState
value = 3000
triggerall = power >= 1000&& !Var(12)
triggerall = StateType != A && MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcb_2p"


;---------------------------------------------------------------------------
; Fraggaboom!
[State -1, Grenade]
type = ChangeState
value = 2500
triggerall = !Var(12)
triggerall = StateType != A && MoveType != H
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
triggerall = !Var(12)
triggerall = StateType != S && MoveType != H
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
triggerall = !Var(12)
triggerall = StateType != A && MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = Var(21) = 0
trigger1 = (command = "qcb_a") || (command = "qcb_b") || (command = "qcb_c")


;---------------------------------------------------------------------------
; Mr. Hook
[State -1, MrHook]
type = ChangeState
value = 1200
triggerall = !Var(12)
triggerall = StateType != A && MoveType != H
triggerall = P2BodyDist X > 50
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = NumHelper(10) = 0
triggerall = enemynear, stateno != 5300
trigger1 = (command = "qcb_x") || (command = "qcb_y") || (command = "qcb_z")


;---------------------------------------------------------------------------
; Frag! (ground, weak)
[State -1, Frag]
type = ChangeState
value = 1000
triggerall = !Var(12)
triggerall = StateType != A && MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = NumHelper(10) = 0
trigger1 = (command = "frag1")

; Frag! (ground, medium)
[State -1, Frag]
type = ChangeState
value = 1001
triggerall = !Var(12)
triggerall = StateType != A && MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = NumHelper(10) = 0
trigger1 = (command = "frag2")

; Frag! (ground, strong)
[State -1, Frag]
type = ChangeState
value = 1002
triggerall = !Var(12)
triggerall = StateType != A && MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = NumHelper(10) = 0
trigger1 = (command = "frag3")

;---------------------------------------------------------------------------
; Frag! (air)
[State -1, FragAir]
type = ChangeState
value = 1100
triggerall = !Var(12)
triggerall = StateType != S && MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = NumHelper(10) = 0
trigger1 = (command = "qcf_x") || (command = "qcf_y") || (command = "qcf_z")


;---------------------------------------------------------------------------
; Standing Push Block (AKA advancing guard)
[State -1, SPushBlock]
type = ChangeState
value = 750
triggerall = command = "pushblock" && StateType = S && !Var(12)
triggerall = !IsHelper
trigger1 = StateNo = 130
trigger2 = StateNo = [150, 151]

;---------------------------------------------------------------------------
; Crouching Push Block
[State -1, CPushBlock]
type = ChangeState
value = 752
triggerall = command = "pushblock" && StateType = C && !Var(12)
trigger1 = StateNo = 131
trigger2 = StateNo = [152, 153]

;---------------------------------------------------------------------------
; Air Push Block
[State -1, APushBlock]
type = ChangeState
value = 754
triggerall = command = "pushblock" && StateType = A && !Var(12)
trigger1 = StateNo = 132
trigger2 = StateNo = [154, 155]

;---------------------------------------------------------------------------
;Fwd Dash
[State -1, FwdDash]
type = ChangeState
value = 100
triggerall = command != "holdback" && !Var(12)
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "FF"
trigger2 = command = "3P"

;---------------------------------------------------------------------------
;Back Dash
[State -1, BackDash]
type = ChangeState
value = 105
triggerall = statetype = S && !Var(12)
triggerall = ctrl = 1
trigger1 = command = "BB"
trigger2 = command = "holdback"
trigger2 = command = "3P"

;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 700
triggerall = (StateType != A) && (Var(0) = 0) && !Var(12)
triggerall = Var(20) != 2
trigger1 = (command = "DU") && (Ctrl)
trigger2 = (command = "3K") && (Ctrl)
trigger3 = (command = "holdup") && ((StateNo = 455) || (PrevStateNo = 455)) && (MoveHit = 1)


;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = statetype = S && !Var(12)
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
triggerall = (command = "z") && ((command = "holdfwd") || (command = "holdback"))&& !Var(12)
triggerall = statetype = S
trigger1 = (ctrl = 1) && (P2BodyDist X <= 25) ;&& (P2statetype != A)

; Air throw
[State -1, AirThrow1]
type = ChangeState
value = 850
triggerall = (command = "z") && ((command = "holdfwd") || (command = "holdback"))
triggerall = StateType = A&& !Var(12)
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
triggerall = (command = "y") && (statetype = S)&& !Var(12)
trigger1 = (ctrl = 1) && (P2statetype != A) && (P2BodyDist X <= 25)

; Double-handed uppercut (close-range hard punch)
[State -1, doubleuppercut]
type = ChangeState
value = 320
triggerall = (command = "z") && (statetype = S) && !Alive&& !Var(12)
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
triggerall = (command = "x") && (statetype = S)&& !Var(12)
trigger1 = ctrl = 1

; superspeed combo
trigger2 = Var(20)=3

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 220
triggerall = (command = "a") && (statetype = S)&& !Var(12)
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
triggerall = (command = "y") && (statetype = S)&& !Var(12)
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
triggerall = (command = "b") && (statetype = S)&& !Var(12)
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
triggerall = (command = "z") && (statetype = S)&& !Var(12)
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
triggerall = command = "c"&& !Var(12)
triggerall = statetype = S
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
triggerall = command = "x"&& !Var(12)
triggerall = statetype = C
trigger1 = ctrl = 1

; superspeed combo
trigger2 = Var(20)=3

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 420
triggerall = command = "a"&& !Var(12)
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
triggerall = command = "y"&& !Var(12)
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
triggerall = (command = "b") && (statetype = C)&& !Var(12)
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
triggerall = (command = "z") && (statetype = C)&& !Var(12)

; (chain combos)
trigger1 = ((stateno = 410) || (stateno = 420) || (stateno = 430) || (stateno = 440)) && (movecontact = 1)

; superspeed combo
trigger2 = Var(20)=3

;---------------------------------------------------------------------------
; Crouch Hard Punch (alternate; launcher)
[State -1, Crouch launcher]
type = ChangeState
value = 455
triggerall = (command = "z") && (statetype = C)&& !Var(12)
trigger1 = ctrl = 1

; superspeed combo
trigger2 = Var(20)=3

;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 460
triggerall = command = "c"&& !Var(12)
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
triggerall = command = "x"&& !Var(12)
triggerall = statetype = A
trigger1 = ctrl = 1

; superspeed combo
trigger2 = Var(20)=3

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 620
triggerall = command = "a"&& !Var(12)
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
triggerall = command = "y"&& !Var(12)
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
triggerall = command = "b"&& !Var(12)
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
triggerall = (command = "z") && (statetype = A)&& !Var(12)
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
triggerall = command = "c"&& !Var(12)
triggerall = statetype = A
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 610) || (stateno = 620) || (stateno = 630) || (stateno = 640) || (stateno = 650)) && (movecontact = 1)

; superspeed combo
trigger3 = Var(20)=3



;======================================================================
; A.I Attacks


;----------------------------------------------------------------------
; Ground combo
[State -1, ChangeState]
type = ChangeState
triggerall = Var(12) && StateType = S
trigger1 = (StateNo = [210,230]) && (MoveContact)
value = IfElse(StateNo = 210,220,IfElse(StateNo = 220,230,240))
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = Var(12) && StateType = S
trigger1 = (StateNo = [240,250]) && (MoveContact)
value = IfElse(StateNo = 240,250,260)
persistent = 0

;----------------------------------------------------------------------
; crouching combo
[State -1, ChangeState]
type = ChangeState
triggerall = Var(12) && StateType = C
trigger1 = (StateNo = [410,430]) && (MoveContact)
value = IfElse(StateNo = 410,420,IfElse(StateNo = 420,430,440))
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = Var(12) && StateType = C
trigger1 = (StateNo = [440,450]) && (MoveContact)
value = IfElse(StateNo = 440,450,460)
persistent = 0

;----------------------------------------------------------------------
; Air combo
[State -1, ChangeState]
type = ChangeState
triggerall = Var(12) && StateType = A
trigger1 = (StateNo = [610,630]) && (MoveContact)
value = IfElse(StateNo = 610,620,IfElse(StateNo = 620,630,640))
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = Var(12) && StateType = A
trigger1 = (StateNo = [640,650]) && (MoveContact)
value = IfElse(StateNo = 640,650,660)
persistent = 0


;====================================================================
[State -1, StandGuard]
type = ChangeState
triggerall = (Var(12) = 1) && (StateType = S) && (Pos Y >= 0) && (P2BodyDist Y <= 0) && stateno != 130
triggerall = (P2BodyDist Y >= -120) && (P2StateType != C) && (P2MoveType = A)
trigger1 = (P2Dist X <= 10) && (Random <= 799) && (Ctrl)
trigger2 = (StateNo = [140, 155]) || (StateNo = [100, 105]) && ctrl
value = 130

[State -1, CrouchGuard]
type = ChangeState
triggerall = (Var(12) = 1) && (StateType != A) && (Pos Y >= 0) && (P2BodyDist Y <= 0) && stateno != 131
triggerall = (P2BodyDist Y >= -50) && (P2StateType = C) && (P2MoveType = A)
trigger1 = (P2BodyDist X <= 120) && (Random <= 799) && (Ctrl)
trigger2 = (StateNo = [140, 155]) || (StateNo = [100, 105])
value = 131

[State -1, AirGuard]
type = ChangeState
triggerall = Var(12) = 1 && StateType = A && Pos Y < 0 && P2BodyDist Y >= -120 && stateno != 132
trigger1 = P2BodyDist X <= 120 && (Ctrl || (StateNo = [140, 155])) && enemynear,movetype = A
value = 132

;---------------------------------------------------------------------------
; Standing Push Block (AKA advancing guard)
[State -1, SPushBlock]
type = ChangeState
value = 750
triggerall = backedgebodydist <= 9 && StateType = S && Var(12)
trigger1 = StateNo = 130&& !winko
trigger2 = StateNo = [150, 151]

;---------------------------------------------------------------------------
; Crouching Push Block
[State -1, CPushBlock]
type = ChangeState
value = 752
triggerall = backedgebodydist <= 9 && StateType = C && Var(12)
trigger1 = StateNo = 131
trigger2 = StateNo = [152, 153]

;---------------------------------------------------------------------------
; Air Push Block
[State -1, APushBlock]
type = ChangeState
value = 754
triggerall = backedgebodydist <= 9 && StateType = A && Var(12)
trigger1 = StateNo = 132
trigger2 = StateNo = [154, 155]



;----------------------------------------------------------------------
; Amalgam Hyper (The Main Mallard)
[State -1, Amalgam]
type = ChangeState
value = 4000
triggerall = power >= 5000 && Var(12) && ctrl
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
trigger1 = command = "Amalgam"


;---------------------------------------------------------------------------
; Main Man Airlines Hyper
[State -1, MainManAir]
type = ChangeState
value = 3600
triggerall = power >= 1000 && Var(12) && ctrl
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
triggerall = Var(21)= 0 && NumHelper(10) = 0 && NumHelper(25) = 0
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [750,850]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random >= 850


;---------------------------------------------------------------------------
; Big Friggin' Gun
[State -1, MegaFrag]
type = ChangeState
value = 3300
triggerall = power >= 1000 && Var(12) && ctrl
triggerall = StateType != A && MoveType != H && !winko && (!IsHelper)
triggerall = NumHelper(3305) = 0 && Var(21) = 0 && NumHelper(10) = 0
trigger1 = p2dist x >= 100 && enemynear, movetype = A && random < 500
trigger2 = enemynear, movetype = H && random <= 400


;---------------------------------------------------------------------------
; Main Men Hyper
[State -1, MainMen]
type = ChangeState
value = 3100
triggerall = Var(12) && power >= 1000 && ctrl
triggerall = StateType != A && MoveType != H && !winko && NumHelper(10) = 0
triggerall = Var(21) = 0
trigger1 = Life > 750 && random = [150,300]


;---------------------------------------------------------------------------
; Lights Out, Clyde! (Hook & Chain Hyper)
[State -1, LightsOut]
type = ChangeState
value = 3000
triggerall = power >= 1000 && Var(12) && ctrl
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
triggerall = NumHelper(3305) = 0 && NumHelper(10) = 0 && NumHelper(25) = 0
triggerall = p2bodydist X <= 120 && enemynear, statetype != A
trigger1 = enemynear, anim = 5300 && random = [300,800]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random < 500


;---------------------------------------------------------------------------
; Crouch Hard Punch (launcher)
[State -1, Crouch launcher]
type = ChangeState
value = 455
triggerall = Var(12) && ctrl
triggerall = StateType != A && MoveType != H && !winko
trigger1 = p2bodydist X <= 30 && (enemynear, anim = 5300)
trigger2 = p2bodydist X <= 30 && (enemynear, statetype != A) && Random = [150,850]

;---------------------------------------------------------------------------
; Fraggaboom!
[State -1, Grenade]
type = ChangeState
value = 2500
triggerall = Var(12) && ctrl
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
triggerall = NumHelper(10) = 0 && NumHelper(25) = 0 && Var(21) = 0
trigger1 = P2BodyDist X >= 100 && Random < 250


;---------------------------------------------------------------------------
; Fraggaboom! (air)
[State -1, GrenadeAir]
type = ChangeState
value = 2600
triggerall = Var(12) && ctrl
triggerall = StateType = A && MoveType != H && !winko && !IsHelper
triggerall = NumHelper(10) = 0
triggerall = NumHelper(25) = 0
trigger1 = Vel X < 0 && random > 500


;---------------------------------------------------------------------------
; RotGut
[State -1, RotGut]
type = ChangeState
value = 2000
triggerall = Var(12) && ctrl
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
triggerall = Var(21) = 0
trigger1 = p2dist x >= 180 && enemynear, MoveType = H && Random < 350


;---------------------------------------------------------------------------
; Mr. Hook
[State -1, MrHook]
type = ChangeState
value = 1200
triggerall = Var(12) && ctrl
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
triggerall = NumHelper(10) = 0
triggerall = enemynear, stateno != 5300
trigger1 = P2BodyDist X > 50 && enemynear, statetype = S && enemynear, numproj = 0


;---------------------------------------------------------------------------
; Frag! (ground, weak)
[State -1, Frag]
type = ChangeState
value = 1000
triggerall = Var(12) && ctrl
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
triggerall = NumHelper(10) = 0 && Var(5) >= 1 && Var(21) = 0
trigger1 = enemynear, p2dist x >= 180 && enemynear, movetype = A && random <= 350

; Frag! (ground, medium)
[State -1, Frag]
type = ChangeState
value = 1001
triggerall = Var(12) && ctrl
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
triggerall = NumHelper(10) = 0 && Var(5) >= 2 && Var(21) = 0
trigger1 = enemynear, p2dist x >= 180 && enemynear, movetype = A && random <= 400

; Frag! (ground, strong)
[State -1, Frag]
type = ChangeState
value = 1002
triggerall = Var(12) && ctrl
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
triggerall = NumHelper(10) = 0 && Var(5) >= 3 && Var(21) = 0
trigger1 = enemynear, p2dist x >= 180 && enemynear, movetype = A && random <= 500
trigger2 = p2bodydist x <= 50 && power < 1000 && random < 700


;---------------------------------------------------------------------------
; Frag! (air)
[State -1, FragAir]
type = ChangeState
value = 1100
triggerall = Var(12) && ctrl
triggerall = StateType = A && MoveType != H && !winko && !IsHelper
triggerall = NumHelper(10) = 0
trigger1 = enemynear, pos x > 140 && vel x < 0 && random < 450


;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = statetype = S && Var(12) && ctrl && !IsHelper
trigger1 = Var(5) = 0 && enemynear, movetype != A && enemynear, numproj = 0 && enemynear, p2dist x >= 180 && !winko


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
triggerall = Var(12) && !winko && ctrl
triggerall = statetype = S && enemynear, statetype != L && random < 200
trigger1 = (P2BodyDist X <= 25) && enemynear, statetype != C

; Air throw
[State -1, AirThrow1]
type = ChangeState
value = 850
triggerall = Var(12)&& !winko && ctrl
triggerall = statetype = A && enemynear, statetype != L && random < 200
trigger1 = (P2BodyDist X <= 25) && enemynear, p2dist Y > -3


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
triggerall = (statetype = S) && Var(12) && ctrl
trigger1 = (P2statetype != A) && enemynear, statetype != L && (P2BodyDist X <= 25) && random = [250,550]

; Double-handed uppercut (close-range hard punch)
[State -1, doubleuppercut]
type = ChangeState
value = 320
triggerall = (statetype = S) && !Alive && Var(12) && ctrl
trigger1 = P2BodyDist X <= 35 && random < 250

;---------------------------------------------------------------------------
;Fwd Dash
[State -1, FwdDash]
type = ChangeState
value = 100
triggerall = Var(12) = 1 && !WinKo && ctrl
triggerall = (statetype = S) && enemynear, p2dist X >= 100
triggerall = Var(20) != 3 && NumHelper(25) = 0 && p2bodydist x > 75
trigger1 = enemynear, movetype != A && enemynear, numproj = 0 && enemynear, statetype != L
trigger2 = enemynear, statetype = L && random <= 300 && enemy, numproj = 0

;---------------------------------------------------------------------------
;Back Dash
[State -1, BackDash]
type = ChangeState
value = 105
triggerall = statetype = S && Var(12) && ctrl
trigger1 = enemynear, p2dist x <= 100 && enemynear,movetype = A && random <= 300

;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 700
triggerall = (StateType != A) && (Var(0) = 0) && Var(12)
triggerall = Var(20) != 2
trigger1 = (StateNo = 455) && (MoveHit = 1)
trigger2 = (enemynear, Vel X >= 4) && ctrl


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
triggerall = (statetype = S) && Var(12) && p2statetype != L && !WinKo
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 90 && enemynear, movetype != A && Random <= 200)

; superspeed combo
;trigger2 = Var(20)=3 && (enemynear, p2dist x <= 90 && enemynear, movetype != A && Random <= 200)

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 220
triggerall =(statetype = S) && Var(12)&& p2statetype != L && !WinKo
trigger1 = (enemynear, p2dist x <= 90 && enemynear, movetype != A && (Random <= 400&& random >200)) && ctrl

; (chain combos)
trigger2 = (StateNo = 210) && (MoveContact = 1)

; superspeed combo
;trigger3 = Var(20)=3 && (enemynear, p2dist x <= 90 && enemynear, movetype != A && (Random <= 400&& random >200)) && ctrl

; (chain combos)
trigger4 = (StateNo = 210) && (MoveContact = 1) && Var(20)=3


;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 230
triggerall =(statetype = S) && Var(12)&& p2statetype != L && !WinKo
trigger1 = ((stateno = 210) || (stateno = 220)) && (movecontact = 1)

; standard medium punch at close range, P2 in air (can't headbutt a flying Superman =P)
trigger2 = (ctrl = 1) && ((P2BodyDist X <= 25) && (P2statetype = A))

; superspeed combo
;trigger3 = Var(20)=3

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = Var(12) = 1&& p2statetype != L && !WinKo
triggerall = statetype = S

; (chain combos)
trigger1= ((stateno = 210) || (stateno = 220) || (stateno = 230)) && (movecontact = 1)

; superspeed combo
;trigger2 = Var(20)=3 && ((stateno = 210) || (stateno = 220) || (stateno = 230)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 250
triggerall = Var(12) = 1&& p2statetype != L && !WinKo
triggerall = statetype = S

; (chain combos)
trigger1 = ((stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240)) && (movecontact = 1)

; superspeed combo
;trigger2 = Var(20)=3 && ((stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 260
triggerall = Var(12) = 1 && enemynear, statetype != L && !WinKo

; (chain combos)
trigger1 = ((stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) || (stateno = 250)) && (movecontact = 1)

; superspeed combo
;trigger2 = Var(20)=3 && ((stateno = 210) || (stateno = 220) || (stateno = 230) || (stateno = 240) || (stateno = 250)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Crouching basics
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 410
triggerall = Var(12) = 1 && statetype = C && !WinKo && ctrl
trigger1 = (enemynear, p2dist x <= 90 && enemynear, movetype != A && (Random <= 600&& random >400))

; superspeed combo
trigger2 = Var(20)=3 && movecontact

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 420
triggerall = Var(12) = 1 && statetype = C && !WinKo && ctrl
;triggerall = (enemynear, p2dist x <= 90 && enemynear, movetype != A && (Random <= 900&& random >600))

; (chain combos)
trigger1 = (stateno = 410) && movecontact

; superspeed combo
trigger2 = Var(20)=3 && movecontact

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 430
triggerall = Var(12) = 1 && statetype = C && !WinKo && ctrl

; (chain combos)
trigger1 = (stateno = 410 || stateno = 420) && movecontact

; superspeed combo
trigger2 = Var(20)=3 && movecontact

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = var(12) = 1 && statetype = C && !WinKo && ctrl

; (chain combos)
trigger1 = (stateno = 410 || stateno = 420 || stateno = 430) && movecontact

; superspeed combo
trigger2 = Var(20)=3 && movecontact

;---------------------------------------------------------------------------
; Crouch Hard Punch (1-2 punch, for combos)
[State -1, Crouch Hard Punch]
type = ChangeState
value = 450
triggerall = Var(12) = 1 && statetype != A && !WinKo

; (chain combos)
trigger1 = (stateno = 430) && movecontact

; superspeed combo
trigger2 = Var(20)=3 && movecontact

;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 460
triggerall = Var(12) = 1 && statetype != A && !WinKo

; (chain combos)
trigger1 = (stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440 || stateno = 450) && movecontact

; superspeed combo
trigger2 = Var(20)=3 && movecontact


;---------------------------------------------------------------------------
; Air basics
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 610
triggerall = Var(12) = 1 && !winko && stateno != 100 && statetype = A && ctrl
trigger1 = p2dist X < 115 && (p2dist Y > -3 && p2dist Y < 17)

; superspeed combo
trigger2 = Var(20)=3 && p2dist X < 80 && (p2dist Y > -3 && p2dist Y < 17) && enemynear, movetype != A

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 620
triggerall = Var(12) = 1 && !winko && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 610) && (movecontact = 1)

; superspeed combo
trigger2 = Var(20)=3 && movecontact

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 630
triggerall = Var(12) = 1 && !winko && stateno != 100 && statetype = A

; (chain combos)
trigger1 = stateno = 620 && movecontact

; superspeed combo
trigger2 = Var(20)=3 && movecontact

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = Var(12) = 1 && !winko && stateno != 100 && statetype = A

; (chain combos)
trigger1 = stateno = 630 && movecontact

; superspeed combo
trigger2 = Var(20)=3 && movecontact

;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 650
triggerall = Var(12) = 1 && !winko&& stateno != 100 && statetype = A

; (chain combos)
trigger1 = stateno = 640 && movecontact
trigger2 = enemynear, statetype = C && enemynear, movetype != A && enemynear, p2dist X <= 60 && ctrl

; superspeed combo
trigger3 = Var(20)=3 && movecontact

;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 660
triggerall = Var(12) = 1 && !winko && stateno != 100
triggerall = statetype = A && ctrl

; (chain combos)
trigger1 = stateno = 650 && movecontact
trigger2 = enemynear, p2dist X <= 100 && enemynear, movetype = A && enemynear, time <= 5 && enemy, numproj = 0 && ctrl

; superspeed combo
trigger3 = Var(20)=3 && movecontact


;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------


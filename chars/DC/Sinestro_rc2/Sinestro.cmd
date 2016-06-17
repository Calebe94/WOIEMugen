; Sinestro's CMD file

;-| AI Commands |----------------------------------------------------------

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
time = 8

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

[Command] ;Charge back, then forward + kick (a/b/c)
name = "charge_B_F_K"
command = ~30$B, F, a
time = 10

[Command] ;Charge back, then forward + kick (a/b/c)
name = "charge_B_F_K"
command = ~30$B, F, b
time = 10

[Command] ;Charge back, then forward + kick (a/b/c)
name = "charge_B_F_K"
command = ~30$B, F, c
time = 10

;---------------------------------------------------------------------------
; 2. State entry
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

[State -1, AIActivate]
type = VarSet
triggerall = var(59) != 1
triggerall = RoundState != 3
trigger1  = command = "CPU1"
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
var(59) = 1

;======================================================================
;===========================================================================
;======================================================================
; A.I Commands
;-----------------------------------------------------------------------

;====================================================================
;GUARD/BLOCK CODE
;====================================================================

[State -1, AI standGuard]
type = ChangeState
triggerall = var(59) && random <= 777
triggerall =(StateType != A) && (Ctrl)&& (enemynear, Facing != Facing)
trigger1 = (P2StateType != C) && (P2MoveType = A)
;trigger2 = inguarddist
value = 130

[State -1, AI airGuardHitBack]
type = ChangeState
triggerall = var(59) && random <= 777
triggerall =(StateType != A) && (enemynear, Facing != Facing)
triggerall = (P2StateType = C) && (P2MoveType = A)
trigger1 = StateNo = 150
;trigger2 = inguarddist
value = 152

[State -1, AI crouchGuard]
type = ChangeState
triggerall = var(59) && random <= 777
triggerall = (StateType != A) && (Ctrl) && (enemynear, Facing != Facing)
trigger1 = (P2StateType = C) && (P2MoveType = A)
;trigger2 = inguarddist
value = 131

[State -1, AI standGuardHitBack]
type = ChangeState
triggerall = var(59) && random <= 777
triggerall =(StateType != A) && (enemynear, Facing != Facing)
triggerall = (P2StateType != C) && (P2MoveType = A)
trigger1 = StateNo = 152
;trigger2 = inguarddist
value = 150

[State -1, AI airGuard]
type = ChangeState
triggerall = var(59) && random <= 777
triggerall = (StateType = A) && (Ctrl) && (enemynear, Facing != Facing)
trigger1 = P2MoveType = A
;trigger2 = inguarddist
value = 132

;====================================================================
; Main Hyper - Long Range
;====================================================================

; Fall Before Me
[State -1, AI longHyper]
type = ChangeState
value = 3200
triggerall = power >= 1000 && var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random >= 500

;---------------------------------------------------------------------------
;crouch Strong punch (launcher)
[State -1, AI Crouch launcher]
type = ChangeState
value = 450
triggerall = var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = p2bodydist X <= 20 && (enemynear, anim = 5300)
trigger2 = p2bodydist X <= 20 && (enemynear, statetype != A) && Random = [150,850]

;---------------------------------------------------------------------------
;Super Jump
[State -1, AI Super Jump]
type = ChangeState
value = 700
triggerall = (StateType != A) && Var(59)
trigger1 = (StateNo = 450) && MoveHit
trigger2 = (enemynear, Vel X >= 4) && ctrl


;====================================================================
; Main Standing Special
;====================================================================
; Deadly Gaze
[State -1, AI Deadly Gaze]
type = ChangeState
value = 1000
triggerall = var(59) && ctrl && prevstateno != 1000
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X > 70 && P2BodyDist X < 170 && Random < 250
trigger1 = P2BodyDist Y = [-50,50]

;---------------------------------------------------------------------------
; Fwd Dash
[State -1, AI FwdDash]
type = ChangeState
value = 100
triggerall = var(59) && RoundState = 2 && ctrl
triggerall = (statetype = S) && enemynear, p2dist X >= 75
triggerall = Var(20) != 3 && NumHelper(25) = 0 && p2bodydist x > 75
trigger1 = enemynear, movetype != A && enemynear, numproj = 0 && enemynear, statetype != L
trigger2 = enemynear, statetype = L && random <= 300 && enemy, numproj = 0

;====================================================================
; Stand, Crouch, Jump / Punch, Kick - NORMAL (only 3 punches/kicks)
;====================================================================

;---------------------------------------------------------------------------
; Standing basics
;
; Punches: 210, 230, 250
; Kicks: 220, 240, 260
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, AI Stand Light Punch]
type = ChangeState
value = 210
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState = 2
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && Random <= 200)

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, AI Stand Medium Punch]
type = ChangeState
value = 230
triggerall =(statetype = S) && var(59) && p2statetype != L && RoundState = 2

; (chain combos)
trigger1 = (stateno = 210) && movecontact

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, AI Stand Hard Punch]
type = ChangeState
value = 250
triggerall = var(59) && p2statetype != L && RoundState = 2
triggerall = statetype = S

; (chain combos)
trigger1 = ((stateno = 210) || (stateno = 230)) && movecontact

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, AI Stand Light Kick]
type = ChangeState
value = 220
triggerall =(statetype = S) && var(59) && p2statetype != L && RoundState = 2
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 400&& random >200)) && ctrl

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, AI Stand Medium Kick]
type = ChangeState
value = 240
triggerall = var(59) && p2statetype != L && RoundState = 2
triggerall = statetype = S

; (chain combos)
trigger1= (stateno = 220) && movecontact

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, AI Stand Hard Kick]
type = ChangeState
value = 260
triggerall = var(59) && enemynear, statetype != L && RoundState = 2

; (chain combos)
trigger1 = ((stateno = 220) || (stateno = 240)) && movecontact

;---------------------------------------------------------------------------
; Throws
;
; Standing : 800
; Air : 810
;---------------------------------------------------------------------------

;; Standing throw
;[State -1, Throw1]
;type = ChangeState
;value = ifelse(statetype=A,850,801)
;triggerall = var(59) && RoundState = 2 && ctrl
;triggerall = statetype = S && enemynear, statetype != L && random < 200
;trigger1 = (P2BodyDist X <= 25) && enemynear, statetype != C
;
;; Air throw
;;[State -1, AirThrow1]
;;type = ChangeState
;;value = 810
;;triggerall = var(59) && RoundState = 2 && ctrl
;;triggerall = statetype = A && enemynear, statetype != L && random < 200
;;trigger1 = (P2BodyDist X <= 25) && enemynear, p2dist Y > -3

;---------------------------------------------------------------------------
; Crouching basics
;
; Punches: 410, 430, 450
; Kicks: 420, 440, 460
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, AI Crouch Light Punch]
type = ChangeState
value = 410
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 600&& random >400))

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, AI Crouch Medium Punch]
type = ChangeState
value = 430
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl

; (chain combos)
trigger1 = (stateno = 410) && movecontact

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, AI Crouch Hard Punch]
type = ChangeState
value = 450
triggerall = var(59) && statetype != A && RoundState = 2

; (chain combos)
trigger1 = (stateno = 430) && movecontact

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, AI Crouch Light Kick]
type = ChangeState
value = 420
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
trigger1 = (enemynear, p2dist x <= 65 && enemynear, movetype != A && (Random <= 900&& random >600))

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, AI Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl

; (chain combos)
trigger1 = (stateno = 420) && movecontact

;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, AI Crouch Hard Kick]
type = ChangeState
value = 460
triggerall = var(59) && statetype != A && RoundState = 2

; (chain combos)
trigger1 = (stateno = 440) && movecontact

;---------------------------------------------------------------------------
; Air basics
;
; Punches: 610, 630, 650
; Kicks: 620, 640, 660
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, AI Air Light Punch]
type = ChangeState
value = 610
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A && ctrl
trigger1 = p2dist X < 60 && (p2dist Y > -3 && p2dist Y < 3)

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, AI Air Light Kick]
type = ChangeState
value = 620
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A
trigger1 = (stateno = 610) && movecontact

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, AI Air Medium Punch]
type = ChangeState
value = 630
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A
trigger1 = (stateno = 620) && movecontact

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, AI Air Medium Kick]
type = ChangeState
value = 640
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A
trigger1 = (stateno = 630) && movecontact

;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, AI Air Hard Punch]
type = ChangeState
value = 650
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A
trigger1 = (stateno = 640) && movecontact

;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, AI Air Hard Kick]
type = ChangeState
value = 660
triggerall = var(59) && RoundState = 2 && stateno != 100
triggerall = statetype = A && ctrl
trigger1 = (stateno = 650) && movecontact

;----------------------------------------------------------------------
; Air combo
[State -1, AI AirCombo]
type = ChangeState
triggerall = Var(59) && StateType = A
trigger1 = (StateNo = [600,620]) && (MoveContact)
value = IfElse(StateNo = 600,630,IfElse(StateNo = 610,640,650))
persistent = 0

[State -1, AI AirCombo2]
type = ChangeState
triggerall = Var(59) && StateType = A
trigger1 = (StateNo = [630,640]) && (MoveContact)
value = IfElse(StateNo = 630,610,620)


;======================================================================
;User Input Attacks

;---------------------------------------------------------------------------
; Amalgam hyper
[State -1, Amalgam]
type = null ;ChangeState
value = 4000
triggerall = command = "Amalgam"
triggerall = power >= 3000
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Hyper: Sinestro Corps (QCF+KK)
[State -1, Corps]
type = null ;ChangeState
value = 4000
triggerall = command = "qcf_2k"
triggerall = power >= 1000
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Hyper: Fall Before Me! (QCB+PP)
[State -1, Fall Before Me]
type = ChangeState
value = 3200
triggerall = command = "qcb_2p"
triggerall = power >= 1000
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Hyper: Needle Storm (QCF+PP)
[State -1, Needles]
type = ChangeState
value = 3000
triggerall = command = "qcf_2p"
triggerall = power >= 1000
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Special: Chains of Despair (QCB + P)
[State -1, Chains of Despair]
type = ChangeState
value = 1500
triggerall = (command = "qcb_x") || (command = "qcb_y") || (command = "qcb_z")
triggerall = StateType != A && MoveType != H && NumHelper(1505)=0
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Special: Sinister Spear (F,D,DF + P)
[State -1, Sinister Spear]
type = ChangeState
value = 1200
triggerall = (command = "anti_x") || (command = "anti_y") || (command = "anti_z")
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Special: Deadly Stare (QCF + P)
[State -1, Deadly Stare]
type = ChangeState
value = 1100
triggerall = (command = "qcf_x") || (command = "qcf_y") || (command = "qcf_z")
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Special: Ravenous Beam (QCF + K)
[State -1, Ravenous Beam]
type = ChangeState
value = 1000
triggerall = (command = "qcf_a") || (command = "qcf_b") || (command = "qcf_c")
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Fwd Dash
[State -1, Fwd Dash]
type = ChangeState
value = 100
triggerall = command != "holdback"
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "FF"
trigger2 = command = "3P"

;---------------------------------------------------------------------------
; Back Dash
[State -1, Back Dash]
type = ChangeState
value = 105
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "BB"
trigger2 = command = "holdback"
trigger2 = command = "3P"

;---------------------------------------------------------------------------
; Superjump
[State -1, Superjump]
type = ChangeState
value = 700
triggerall = (StateType != A)
trigger1 = (command = "DU") && (Ctrl)
trigger2 = (command = "3K") && (Ctrl)

;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "start"


;---------------------------------------------------------------------------
; Standing basics
; 
; Punches: 210, 230, 250
; Kicks: 220, 240, 260
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = IfElse((P2BodyDist X < 25), 210, 215)
triggerall = (command = "x") && (statetype = S)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 220
triggerall = (command = "a") && (statetype = S)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 230
triggerall = (command = "y") && (statetype = S)
trigger1 = ctrl = 1

; ('stronger' chain combo)
trigger2 = (stateno = 210) && movecontact
trigger3 = (stateno = 215) && movecontact

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = (command = "b") && (statetype = S)
trigger1 = ctrl = 1

; ('stronger' chain combo)
trigger2 = (stateno = 220) && movecontact
trigger3 = (stateno = 225) && movecontact

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 250
triggerall = (command = "z") && (statetype = S)
trigger1 = ctrl = 1

; ('stronger' chain combo)
trigger2 = (stateno = 210) && movecontact
trigger3 = (stateno = 215) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 235) && movecontact

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 260
triggerall = (command = "c") && (statetype = S)
trigger1 = ctrl = 1

; ('stronger' chain combo)
trigger2 = (stateno = 220) && movecontact
trigger3 = (stateno = 225) && movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 245) && movecontact


;---------------------------------------------------------------------------
; Crouching basics
;
; Punches: 410, 430, 450
; Kicks: 420, 440, 460
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 410
triggerall = command = "x"
triggerall = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 420
triggerall = command = "a"
triggerall = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 430
triggerall = command = "y"
triggerall = statetype = C
trigger1 = ctrl = 1

; ('stronger' chain combo)
trigger2 = (stateno = 410) && movecontact

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = statetype = C
trigger1 = ctrl = 1

; ('stronger' chain combo)
trigger2 = (stateno = 420) && movecontact

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 450
triggerall = command = "z"
triggerall = statetype = C
trigger1 = ctrl = 1

; ('stronger' chain combo)
trigger2 = (stateno = 410) && movecontact
trigger3 = (stateno = 430) && movecontact

;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 460
triggerall = command = "c"
triggerall = statetype = C
trigger1 = ctrl = 1

; ('stronger' chain combo)
trigger2 = (stateno = 420) && movecontact
trigger3 = (stateno = 440) && movecontact


;---------------------------------------------------------------------------
; Air basics
;
; Punches: 610, 630, 650
; Kicks: 620, 640, 660
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 610
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 620
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl = 1

; (zigzag chain combo)
trigger2 = (StateNo = 610) && MoveContact

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 630
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl = 1

; (zigzag chain combo)
trigger2 = (stateno = 610) && movecontact
trigger3 = (stateno = 620) && movecontact

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl = 1

; (zigzag chain combo)
trigger2 = (stateno = 610) && movecontact
trigger3 = (stateno = 620) && movecontact
trigger4 = (stateno = 630) && movecontact

;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 650
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl = 1

; (zigzag chain combo)
trigger2 = (stateno = 610) && movecontact
trigger3 = (stateno = 620) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact

;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 660
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl = 1

; (zigzag chain combo)
trigger2 = (stateno = 610) && movecontact
trigger3 = (stateno = 620) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6 = (stateno = 650) && movecontact

;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------

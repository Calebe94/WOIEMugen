;===========================================================================
;Super Marvel vs. Capcom - Eternity of Heroes - Commands Template
;===========================================================================
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 15
command.buffer.time = 1

;-| AvX Motions |--------------------------------------------------------

;[Command]
;name = "Pause"
;command = s
;time = 5

;[Command]
;name = "Taunt"
;command = ~D, DF, F, s
;time = 17

[Command]
name = "Taunt"
command =s; ~D, DB, B, s
time = 17

[Command]
name = "Down"
command = D
time = 5

[Command]
name = "Up"
command = U
time = 5


;---------------------------------------------------------------------------
;Hyper1

[Command]
name = "Hyper1"
command = ~D, DF, F, x+y

[Command]
name = "Hyper1"
command = ~D, DF, F, x+z

[Command]
name = "Hyper1"
command = ~D, DF, F, y+z

;---------------------------------------------------------------------------
;Hyper2

[Command]
name = "Hyper2"
command = ~D, DB, B, x+y

[Command]
name = "Hyper2"
command = ~D, DB, B, x+z

[Command]
name = "Hyper2"
command = ~D, DB, B, y+z

;---------------------------------------------------------------------------
;Hyper3
[Command]
name = "Hyper3"
command = ~D, DF, F, a+b

[Command]
name = "Hyper3"
command = ~D, DF, F, a+c

[Command]
name = "Hyper3"
command = ~D, DF, F, b+c

;---------------------------------------------------------------------------
;Hyper4

[Command]
name = "Hyper4"
command = ~D, DB, B, a+b

[Command]
name = "Hyper4"
command = ~D, DB, B, a+c

[Command]
name = "Hyper4"
command = ~D, DB, B, b+c

;-------------------------------------------------------------------------
; Devil's Knee

[Command]
name =   "DevilsKnee"
command = ~F,D,DF, a

[Command]
name =   "DevilsKnee"
command = ~F,D,DF, b

[Command]
name =   "DevilsKnee"
command = ~F,D,DF, c

;---------------------------------------------------------------------------
;Baton Drag In

[Command]
name =  "DragIn"
command = ~F,D,DF, x
time= 30
[Command]
name =  "DragIn"
command = ~F,D,DF, y
time= 30
[Command]
name =  "DragIn"
command = ~F,D,DF, z
time= 30
;---------------------------------------------------------------------------
; Onslaught

[Command]
name =  "OnslaughtA"
command = ~D,DB,B, x

[Command]
name =  "OnslaughtB"
command = ~D,DB,B, y

[Command]
name =  "OnslaughtC"
command = ~D,DB,B, z

;-------------------------------------------------------------------------
; Baton Throw

[Command]
name =   "LowBaton"
command = ~D,DF,F, x

[Command]
name =   "MedBaton"
command = ~D,DF,F, y

[Command]
name =   "HeavyBaton"
command = ~D,DF,F, z

;-------------------------------------------------------------------------
;Tornado kick

[Command]
name =    "TornadoA"
command = ~D,DF,F, a

[Command]
name =    "TornadoB"
command = ~D,DF,F, b

[Command]
name =    "TornadoC"
command = ~D,DF,F, c

;---------------------------------------------------------------------------
;Whirlwind Kick

[Command]
name =   "WhirlwindA"
command = ~D,DB,B, a

[Command]
name =   "WhirlwindB"
command = ~D,DB,B, b

[Command]
name =   "WhirlwindC"
command = ~D,DB,B, c


;---------------------------------------------------------------------------
;Double_Tap

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;---------------------------------------------------------------------------
;2/3 button combination

[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "guardpush"
command = x+y
time = 5

[Command]
name = "guardpush"
command = x+z
time = 5

[Command]
name = "guardpush"
command = y+z
time = 5

;---------------------------------------------------------------------------
;Dir + button

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "back_b"        ;Alternative button command
command = /$B,b
time = 1

[Command]
name = "back_c"        ;Alternative button command
command = /$B,c
time = 1

;---------------------------------------------------------------------------
;One button

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

;---------------------------------------------------------------------------
;Hold button

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdb"
command = /b
time = 1

;---------------------------------------------------------------------------
;Hold dir

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

[Command]
name = "SJ"
command = $D, $U

;-| AI Commands |----------------------------------------------------------


;===========================================================================
;Artificial Intelligence
;===========================================================================
[Statedef -1]
[State -1, AI Activation]
type = varset
triggerall = AILevel > 2
triggerall = (roundstate = 2) && (var(59) = 0)
trigger1 = Random <= ((AILevel-2)*100)
v = 59
value = 1

[State -1, AI Deactivation]
type = varset
triggerall = AIlevel < 7
triggerall = var(59) = 1
trigger1 = Random > ((AILevel-2)*100)
trigger2 = roundstate != 2
v = 59
value = 0

;===========================================================================
;===========================================================================
; A.I Commands
;-----------------------------------------------------------------------
[State -1, Combo Chooser]
type = VarRandom
trigger1 = var(59) = 1 && stateno = [5000,5300]
trigger2 = movetype != A
v = 48
range = 0,4 ;<---- Here, change the 7 to however many combos you have - Yin



[State -1, AI Forward Recovery Roll]
type = ChangeState
value = 890
triggerall = Var(59) = 1
triggerall = command = "holdfwd"
triggerall = time = 1
triggerall = life > 0
triggerall = random <= 100
trigger1 = stateno = 5120
trigger1 = alive = 1

[State -1, AI Backward Recovery Roll]
type = ChangeState
value = 895
triggerall =  Var(59) = 1
triggerall = command = "holdback"
triggerall = time = 1
triggerall = life > 0
triggerall = random <= 100
trigger1 = stateno = 5120
trigger1 = alive = 1

[State -1, AI Guard Push]
type = ChangeState
value = 890
triggerall = Var(59) = 1
triggerall = (StateType = S) && (StateType != L)
triggerall = P2life != 0
triggerall = random <= 100
trigger1 = StateNo = [150,153]
trigger1 = P2BodyDist X >= 71
trigger1 = Time >= 5

;===========================================================================
;===========================================================================
; A.I Commands
;-----------------------------------------------------------------------
[State -1, Combo Chooser]
type = VarRandom
trigger1 = var(59) = 1 && stateno = [5000,5300]
trigger2 = movetype != A
v = 48
range = 0,4

;---------------------------------------------------------------------------
; AI Defense
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = var(59) =1=1 && StateType != A && Ctrl
triggerall = Random <= 300
triggerall = roundstate = 2
trigger1 = P2bodydist X >= 100 && P2moveType != A
value = 100
persistent = 0

[State -1]
type = ChangeState
triggerall = var(59) =1 =1 && StateType != A && P2moveType = A
triggerall = Random <= 50
triggerall = roundstate = 2
trigger1 = Ctrl
value = 105
persistent = 0

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) )
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 130

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) )
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 131

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) )
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 132

; AI Combos Start-------------------------------------------------------------
; Stand light Punch
[State -1, Combo 1]
type = ChangeState
value = 200
triggerall = var(59) && var(48) = 6 && statetype != A && RoundState = 2 && ctrl && random > 500
triggerall = p2statetype != L
trigger1 = (p2bodydist x = [-40, 40]) && random > 300
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,40]
trigger2 = random <= 400

; Stand Med Punch
[State -1, Stand Med Punch]
type = ChangeState
value = 210
triggerall = var(59) && var(48) = 0 && RoundState = 2 && statetype != A
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 200) && movecontact

; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = var(59) && var(48) = 0 && RoundState = 2 && statetype != A
triggerall = p2bodydist x <= 40
trigger1 = (stateno = 210) && movecontact

;-------------------------------------------------------------------------------
; Stand light kick
[State -1, Combo 2]
type = ChangeState
value = 230
triggerall = var(59) && var(48) = 6 && statetype != A && RoundState = 2 && ctrl && random > 500
triggerall = p2statetype != L
trigger1 = (p2bodydist x = [-40, 40]) && random > 300
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,40]
trigger2 = random <= 400

; Stand Med kick
[State -1, Stand Med kick]
type = ChangeState
value = 240
triggerall = var(59) && var(48) = 0 && RoundState = 2 && statetype != A
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 230) && movecontact

; Stand Hard kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = var(59) && var(48) = 0 && RoundState = 2 && statetype != A
triggerall = p2bodydist x <= 40
trigger1 = (stateno = 240) && movecontact

;------------------------------------------------------------------------------
; Stand Med Kick
[State -1, Combo 3]
type = Changestate
value = 240
triggerall = var(59) && var(48) = 6 && statetype != A && RoundState = 2 && ctrl && random > 500
triggerall = p2statetype != L
trigger1 = (p2bodydist x = [-40, 40]) && random > 300
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,40]
trigger2 = random <= 400

; Stand ligh Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) && var(48) = 6 && RoundState = 2  && statetype != A
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 240) && movecontact

; Stan Medium Punch
[State -1, Stand Med Punch]
type = ChangeState
value = 210
triggerall = var(59) && var(48) = 6 && RoundState = 2 && statetype != A
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 200) && movecontact

; Stand light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) && var(48) = 6 && RoundState = 2 && statetype != A
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 210) && movecontact

; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(59) && var(48) = 6 && RoundState = 2 && statetype != A
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 230) && movecontact

; Stand Strong kick
[State -1, Stand Strong Kick]
type = ChangeState
value = 250
triggerall = var(59) && var(48) = 6 && RoundState = 2 && statetype != A
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 220) && movecontact

;------------------------------------------------------------------------------
; Stand Med Punch
[State -1, Combo 4]
type = Changestate
value = 210
triggerall = var(59) && var(48) = 6 && statetype = S && RoundState = 2 && ctrl && random > 500
triggerall = p2statetype != L
trigger1 = (p2bodydist x = [-40, 40]) && random > 300
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,40]
trigger2 = random <= 400

; Stand light kick
[State -1, Stand Light kick]
type = ChangeState
value = 230
triggerall = var(59) && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 210) && movecontact

; Stan Medium kick
[State -1, Stand Med kick]
type = ChangeState
value = 240
triggerall = var(59) && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 230) && movecontact

; Stand light punch
[State -1, Stand Light punch]
type = ChangeState
value = 200
triggerall = var(59) && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 240) && movecontact

; Stand Strong Punch
[State -1, Stand Strong kick]
type = ChangeState
value = 250
triggerall = var(59) && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 200) && movecontact

; Stand Strong kick
[State -1, Stand Strong punch]
type = ChangeState
value = 220
triggerall = var(59) && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 250) && movecontact

;---------------------------------------------------------------------------
; AI Launcher/Super jump/Throw
;---------------------------------------------------------------------------
;crouch Strong punch (launcher)
[State -1, Crouch launcher]
type = ChangeState
value = 420
triggerall = numenemy > 0
triggerall = var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = p2bodydist X <= 20 && (enemynear, anim = 5300) && (StateNo = 420) && movehit
trigger2 = p2bodydist X <= 20 && (enemynear, statetype != A) && Random = [150,850] ;&& (StateNo = 420) && (MoveHit = 1

;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = roundstate = 2
triggerall = Var(59)
triggerall = statetype!=A
trigger1 = MoveHit
trigger1 = stateno = 420
trigger2 = numenemy > 0
trigger2 = (enemynear, Vel X >= 4) && ctrl

[State -1, Air Dash]
type = ChangeState
triggerall = var(59) =1 && StateType = A && Ctrl
triggerall = Random <= 300
triggerall = roundstate = 2
trigger1 = P2bodydist X >= 100 && P2moveType != A
triggerall = !var(27)
value = 980
persistent = 0

[State -1, Wall Cling]
type = ChangeState
value = 997
triggerall = var(59) =1 && StateType = A && Ctrl
triggerall = Random <= 300
triggerall = roundstate = 2
trigger1 = P2bodydist X >= 100 && P2moveType != A
triggerall = !var(27)
persistent = 0

[State -1, Wall Leap]
type = ChangeState
triggerall = var(59) =1 && StateType = A && P2moveType != A
triggerall = Random <= 50
triggerall = roundstate = 2
trigger1 = Ctrl
value = 7730
persistent = 0

[State -1, Throw AI]
type = ChangeState
value = 800
triggerall = MoveType != H && RoundState = 2 && !IsHelper && var(23) = 10000
triggerall =  (p2bodydist x <= 15) && (p2bodydist y <= 10)
trigger1 = Random <= 150 && (statetype = S) && Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Crouching basics
; Punches: 400, 410, 420
; Kicks: 430, 440, 450
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 600&& random >400))

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl

; (chain combos)
trigger1 = (stateno = 400) && movecontact

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = var(59) && statetype != A && RoundState = 2

; (chain combos)
trigger1 = (stateno = 410) && movecontact

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
trigger1 = (enemynear, p2dist x <= 65 && enemynear, movetype != A && (Random <= 900&& random >600))

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl

; (chain combos)
trigger1 = (stateno = 430) && movecontact

;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = var(59) && statetype != A && RoundState = 2

; (chain combos)
trigger1 = (stateno = 440) && movecontact

;---------------------------------------------------------------------------
; Air basics
; Punches: 600, 610, 620
; Kicks: 630, 640, 650
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A && ctrl
trigger1 = p2dist X < 60 && (p2dist Y > -3 && p2dist Y < 3)
triggerall = !var(27)
;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A
triggerall = !var(27)
; (chain combos)
trigger1 = (stateno = 630) && movecontact

;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A
triggerall = !var(27)
; (chain combos)
trigger1 = stateno = 640 && movecontact

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A
triggerall = !var(27)
; (chain combos)
trigger1 = (stateno = 600) && (movecontact = 1)

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A
triggerall = !var(27)
; (chain combos)
trigger1 = (stateno = 610) && movecontact

;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = var(59) && RoundState = 2 && stateno != 100
triggerall = statetype = A && ctrl
triggerall = !var(27)
; (chain combos)
trigger1 = stateno = 620 && movecontact

;----------------------------------------------------------------------
; Air combo
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59) && StateType = A
trigger1 = (StateNo = [600,620]) && (MoveContact)
value = IfElse(StateNo = 600,630,IfElse(StateNo = 610,640,650))
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = Var(59) && StateType = A
trigger1 = (StateNo = [630,640]) && (MoveContact)
value = IfElse(StateNo = 630,610,620)

;-|-AI Special Attempt-|---------------------------------------------

[State -1, Artificial Intelligence]
type = ChangeState
value = 1000
triggerall = var(59) && ctrl && p2bodydist x > 80
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && enemynear, statetype != A && random < 50

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 70) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
trigger1 = stateno > 1100
value = 1100

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 70) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
trigger1 = stateno > 1100
value = 1101

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 70) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
trigger1 = stateno > 1100
value = 1102

[State -1, Artificial Intelligence]
type = ChangeState
value = 1200
triggerall = var(59) && ctrl && P2BodyDist X > 80
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && enemynear, statetype != A && random < 200

[State -1, Artificial Intelligence]
type = ChangeState
value = 1210
triggerall = var(59) && ctrl && P2BodyDist X > 80
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && enemynear, statetype != A && random < 200

[State -1, Artificial Intelligence]
type = ChangeState
value = 1220
triggerall = var(59) && ctrl && P2BodyDist X > 80
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && enemynear, statetype != A && random < 200

[State -1, Artificial Intelligence]
type = ChangeState
value = 1320
triggerall = var(59) && ctrl && P2BodyDist X > 80
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && enemynear, statetype != A && random < 200

[State -1, Artificial Intelligence]
type = ChangeState
value = 1400
triggerall = var(59) && ctrl && P2BodyDist X > 80
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && enemynear, statetype != A && random < 200

[State -1, Artificial Intelligence]
type = ChangeState
value = 1500
triggerall = var(59) && ctrl && P2BodyDist X > 80
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && enemynear, statetype != A && random < 200

[State -1, Artificial Intelligence]
type = ChangeState
value = 1510
triggerall = var(59) && ctrl && P2BodyDist X > 80
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && enemynear, statetype != A && random < 200

[State -1, Artificial Intelligence]
type = ChangeState
value = 1520
triggerall = var(59) && ctrl && P2BodyDist X > 80
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && enemynear, statetype != A && random < 200

;-|-AI Hyper Attempt|---------------------------------------------


[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (power > 1500) && (numproj = 0) && (random = [0,300]) && (statetype != A)
triggerall = !numexplod(3302)
value = 3300

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (power > 1500) && (numproj = 0) && (random = [0,300]) && (statetype != A)
triggerall = !numexplod(3302)
value = 3200

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 1500) && (numproj = 0) && (random = [0,300])
triggerall = !numexplod(3302)
value = 3100

[State -1, Artificial Intelligence]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 1500) && (numproj = 0) && (random = [0,300])
triggerall = !numexplod(3302)
value = 3000

;===========================================================================
;Commands
;===========================================================================

[State -1, Dash Forward]
type = ChangeState
value = 100
triggerall = StateType = S
triggerall = (Ctrl) && (StateNo != 100)
trigger1 = Command = "FF"

[State -1, Jump Back]
type = ChangeState
value = 105
triggerall = StateType = S
triggerall = (Ctrl) && (StateNo != 100)
trigger1 = Command = "BB"

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = Command = "Taunt"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)

;-------------------------------------------------------------------------


[State -1, Hyper3]
type = ChangeState
value = 3000
triggerall = !Var(59)
triggerall = command = "Hyper2"
triggerall = power >= 1000
triggerall = !numexplod(3302)
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && Movecontact


[State -1, Hyper2]
type = ChangeState
value = 3100
triggerall = !Var(59)
triggerall = command = "Hyper1"
triggerall = power >= 1000
triggerall = !numexplod(3302)
trigger1 = Statetype = S && ctrl
trigger2 = (StateType = S) && (HitdefAttr = SC, NA) && Movecontact


[State -1, Hyper1]
type = ChangeState
value = 3200
triggerall = !Var(59)
triggerall = command = "Hyper3"
triggerall = power >= 1000
triggerall = !numexplod(3302)
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && Movecontact


[State -1, Hyper4]
type = ChangeState
value = 3300
triggerall = !var(59)
triggerall = command = "Hyper4"
triggerall = power >= 1000
triggerall = !numexplod(3302)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;--------------------------------------------------------------------------

[State -1, Baton Drag In]
type = ChangeState
value =  1400
triggerall = stateno < 3000
triggerall = command = "DragIn"
triggerall = stateno != [1400,1401]
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 = Statetype != A && stateno = [200,250]

;---------------------------------------------------------------------------
;Devil's Knee

[State -1, DevilsKneeB]
type = ChangeState
value = 1320
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "DevilsKnee"

;--------------------------------------------------------------------------
;Baton Attacks
[State -1, Low Baton]
type = ChangeState
value = 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "LowBaton"

[State -1, Medium Baton]
type = ChangeState
value = 1010
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "MedBaton"

[State -1, Heavy Baton]
type = ChangeState
value = 1020
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "HeavyBaton"

[State -1, Aerial Baton]
type = ChangeState
value = 1030
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "LowBaton"

[State -1, Aerial Baton]
type = ChangeState
value = 1040
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "MedBaton"

[State -1, Aerial Baton]
type = ChangeState
value = 1050
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "HeavyBaton"

;--------------------------------------------------------------------------
;Onslaught Light
[State -1, Onslaught Light]
type = ChangeState
triggerall = statetype = S
triggerall = command = "OnslaughtA"
trigger1 = ctrl
value = 1500

;Onslaught Medium
[State -1, Onslaught Medium]
type = ChangeState
triggerall = statetype = S
triggerall = command = "OnslaughtB"
trigger1 = ctrl
value = 1510

;Onslaught Strong
[State -1, Onslaught Strong]
type = ChangeState
triggerall = statetype = S
triggerall = command = "OnslaughtC"
trigger1 = ctrl
value = 1520


;--------------------------------------------------------------------------
;Whirlwind Kick

[State -1, WhirlwindA]
type = ChangeState
value = 1200
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "WhirlwindA"

[State -1, WhirlwindB]
type = ChangeState
value = 1210
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "WhirlwindB"

[State -1, WhirlwindC]
type = ChangeState
value = 1220
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "WhirlwindC"

[State -1, WhirlwindA Aerial]
type = ChangeState
value = 1230
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "WhirlwindA"

[State -1, WhirlwindB Aerial]
type = ChangeState
value = 1230
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "WhirlwindB"

[State -1, WhirlwindC Aerial]
type = ChangeState
value = 1230
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "WhirlwindC"

;--------------------------------------------------------------------------
;Tornado kick(Light)

[State -1, TornadoA]
type = ChangeState
value = 1100
triggerall = (statetype != A) && (ctrl = 1)
trigger1 = command = "TornadoA"
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact

;---------------------------------------------------------------------------
;Tornado kick(Medium)

[State -1, TornadoB]
type = ChangeState
value = 1110
triggerall = (statetype != A) && (ctrl = 1)
trigger1 = command = "TornadoB"
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact

;---------------------------------------------------------------------------
;Tornado kick(Heavy)

[State -1, TornadoC]
type = ChangeState
value = 1120
triggerall = (statetype != A) && (ctrl = 1)
trigger1 = command = "TornadoC"
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact

;---------------------------------------------------------------------------
;Tornado kick(Aerial)

[State -1, Aerial Tornado kick]
type = ChangeState
value = 1130
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "TornadoA"


[State -1, Aerial Tornado kick]
type = ChangeState
value = 1130
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "TornadoB"


[State -1, Aerial Tornado kick]
type = ChangeState
value = 1130
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "TornadoC"
;--------------------------------------------------------------------------

[State -1, Throw]
type = ChangeState
value = 800
triggerall = !Var(59)
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S)
trigger2 = p2movetype != H

[State -1, Triangle Jump]
type = ChangeState
value = 7730
triggerall = enemynear, name != "helibonus"
triggerall = statetype = A
trigger1 = command = "holdfwd" && ctrl && var(59) = 0  && prevstateno !=  7730 &&  (backedgebodydist = 0) && (pos y < -80); && prevstateno != [600,650]
trigger2 = var(59) = 1 && ctrl && random >= 900 && vel y > 0 && (backedgebodydist = 0) && (pos y < -80); && prevstateno != [600,650]

 [State -1]
type = ChangeState
value = 832
triggerall = statetype != A
triggerall = command = "holdfwd"
triggerall = alive = 1
trigger1 = anim = 5120

;Air Dash
[State -1, Air Dash Forward]
type = ChangeState
value = 980
triggerall = command = "FF"
triggerall = !var(27)
trigger1 = ctrl && statetype = A

[State -1, Wall Cling]
type = ChangeState
value = 997
triggerall = var(59) = 0
triggerall = enemynear, name != "helibonus"
trigger1 = command = "holdfwd" && ctrl && var(59) = 0 && prevstateno != 998 && vel y > 0 && (backedgebodydist = [-10,10]) && (pos y < -80) && prevstateno != [600,650]
trigger2 = var(59) = 1 && ctrl && random >= 900 && vel y > 0 && (backedgebodydist = [-10,10]) && (pos y < -80) && prevstateno != [600,650]

;--------------------------------------------------------------------------
[State -1, Light Kick]
type = ChangeState
value = 200
triggerall = !Var(59)
triggerall = Command = "x"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)

[State -1, Medium Kick]
type = ChangeState
value = 210
triggerall = !Var(59)
triggerall = Command = "y"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && Movecontact
trigger3 = (StateNo = 230) && Movecontact

[State -1, Hard Kick]
type = ChangeState
value = 220
triggerall = !Var(59)
triggerall = Command = "z"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && Movecontact
trigger3 = (StateNo = 230) && Movecontact
trigger4 = (StateNo = 210) && Movecontact
trigger5 = (StateNo = 211) && Movecontact
trigger6 = (StateNo = 240) && Movecontact
trigger7 = (StateNo = 241) && Movecontact

[State -1, Light Kick]
type = ChangeState
value = 230
triggerall = !Var(59)
triggerall = Command = "a"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (Stateno = 200) && Movecontact

[State -1, Medium Kick]
type = ChangeState
value = 240
triggerall = !Var(59)
triggerall = Command = "b"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && Movecontact
trigger3 = (StateNo = 230) && Movecontact
trigger4 = (StateNo = 210) && Movecontact
trigger5 = (StateNo = 211) && Movecontact

[State -1, Hard Kick]
type = ChangeState
value = 250
triggerall = !Var(59)
triggerall = Command = "c"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && Movecontact
trigger3 = (StateNo = 230) && Movecontact
trigger4 = (StateNo = 210) && Movecontact
trigger5 = (StateNo = 211) && Movecontact
trigger6 = (StateNo = 240) && Movecontact
trigger7 = (StateNo = 241) && Movecontact
trigger8 = (StateNo = 221) && Movecontact
trigger9 = (StateNo = 220) && Movecontact

;--------------------------------------------------------------------------
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = !Var(59)
triggerall = Command = "x"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && Movecontact
trigger3 = (StateNo = 230) && Movecontact

[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = !Var(59)
triggerall = Command = "y"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && Movecontact
trigger3 = (StateNo = 230) && Movecontact
trigger4 = (StateNo = 400) && Movecontact
trigger5 = (StateNo = 430) && Movecontact
trigger6 = (StateNo = 210) && Movecontact
trigger7 = (StateNo = 211) && Movecontact

[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = !Var(59)
triggerall = Command = "z"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && Movecontact
trigger3 = (StateNo = 230) && Movecontact
trigger4 = (StateNo = 400) && Movecontact
trigger5 = (StateNo = 430) && Movecontact
trigger6 = (StateNo = 210) && Movecontact
trigger7 = (StateNo = 211) && Movecontact
trigger8 = (StateNo = 240) && Movecontact
trigger9 = (StateNo = 241) && Movecontact
trigger10 = (StateNo = 220) && Movecontact
trigger11 = (StateNo = 221) && Movecontact
trigger12 = (StateNo = 410) && Movecontact
trigger13 = (StateNo = 440) && Movecontact

[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = !Var(59)
triggerall = Command = "a"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (Stateno = 200) && Movecontact
trigger3 = (Stateno = 230) && Movecontact
trigger4 = (Stateno = 400) && Movecontact

[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = !Var(59)
triggerall = Command = "b"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && Movecontact
trigger3 = (StateNo = 230) && Movecontact
trigger4 = (StateNo = 410) && Movecontact
trigger5 = (StateNo = 430) && Movecontact
trigger6 = (StateNo = 210) && Movecontact
trigger7 = (StateNo = 211) && Movecontact
trigger8 = (StateNo = 240) && Movecontact
trigger9 = (StateNo = 241) && Movecontact
trigger10 = (StateNo = 220) && Movecontact
trigger11 = (StateNo = 221) && Movecontact

[State -1, C Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = !Var(59)
triggerall = Command = "c"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && Movecontact
trigger3 = (StateNo = 230) && Movecontact
trigger4 = (StateNo = 400) && Movecontact
trigger5 = (StateNo = 430) && Movecontact
trigger6 = (StateNo = 210) && Movecontact
trigger7 = (StateNo = 211) && Movecontact
trigger8 = (StateNo = 250) && Movecontact
trigger9 = (StateNo = 251) && Movecontact
trigger10 = (StateNo = 420) && Movecontact
trigger11 = (StateNo = 421) && Movecontact
trigger12 = (StateNo = 410) && Movecontact
trigger13 = (StateNo = 440) && Movecontact

;--------------------------------------------------------------------------
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !Var(59)
triggerall = command = "x"
triggerall = !var(27)
trigger1 = Statetype = A && ctrl

[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = !Var(59)
triggerall = command = "y"
trigger1 = Statetype = A && ctrl
triggerall = !var(27)
trigger2 = (StateNo = 600) && Movecontact
trigger3 = (StateNo = 630) && Movecontact

[State -1, Jump Hard Punch]
type = ChangeState
value = 620
triggerall = !Var(59)
triggerall = command = "z"
trigger1 = Statetype = A && ctrl
triggerall = !var(27)
trigger2 = (StateNo = 600) && Movecontact
trigger3 = (StateNo = 630) && Movecontact
trigger4 = (StateNo = 610) && Movecontact
trigger5 = (StateNo = 640) && Movecontact

[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !Var(59)
triggerall = command = "a"
triggerall = !var(27)
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && Movecontact

[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = !Var(59)
triggerall = command = "b"
trigger1 = Statetype = A && ctrl
triggerall = !var(27)
trigger2 = (StateNo = 600) && Movecontact
trigger3 = (StateNo = 610) && Movecontact
trigger4 = (StateNo = 620) && Movecontact
trigger5 = (StateNo = 630) && Movecontact

[State -1, Jump Hard Kick]
type = ChangeState
value = 650
triggerall = !Var(59)
triggerall = command = "c"
trigger1 = Statetype = A && ctrl
triggerall = !var(27)
trigger2 = (StateNo = 600) && Movecontact
trigger3 = (StateNo = 610) && Movecontact
trigger4 = (StateNo = 620) && Movecontact
trigger5 = (StateNo = 630) && Movecontact
trigger6 = (StateNo = 640) && Movecontact

;--------------------------------------------------------------------------


[State -1, Guard Push Stand]
type = ChangeState
value = 880
triggerall = !Var(59)
triggerall = command = "guardpush" && statetype = S
trigger1 = stateno = [150,153]

[State -1, Guard Push Crouch]
type = ChangeState
value = 881
triggerall = !Var(59)
triggerall = command = "guardpush" && statetype = C
trigger1 = stateno = [150,153]

[State -1, Guard Push Jump]
type = ChangeState
value = 882
triggerall = !Var(59)
triggerall = command = "guardpush" && statetype = A
trigger1 = stateno = [154,155]

[State -1, Forward Recovery Roll]
type = ChangeState
value = 890
triggerall = !Var(59)
triggerall = command = "holdfwd"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

[State -1, Backward Recovery Roll]
type = ChangeState
value = 895
triggerall = !Var(59)
triggerall = command = "holdback"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = !Var(59)
trigger1 = Command = "SJ"
trigger1 = StateType != A
trigger1 = ctrl
trigger2 = Command = "holdup"
trigger2 = stateno = 420 && movehit

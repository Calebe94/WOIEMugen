;----AI Patch Credits----
;AI for this character is possible thanks to Buyog, Loganir, & Winane. ;Buyog's AI coding for Lobo served as the template for most of the AI ;triggers. Loganir's AI guard coding triggers for Wonder Woman were ;borrowed for blocking. Winane's humanly impossible AI initiation ;coding was used to turn the AI on (humanly impossible coding is used ;for convenience sake, i.e. ease in sharing with others). I basically ;just did the grunt work of copying, pasting, and adapting their work ;to other characters without AI.

;This isn't the prettiest AI as it's kind of factory produced in a ;one-size fits all fashion. The AI's for Lobo, Wonder Woman, Thor, ;Spiderman, Ice, etc., which are made custom for their characters, are ;much better because they are personalized. My goal, though, was to get ;AI-less characters fighting at some level at least.

;Lastly, this AI patch is temporary in the sense that its meant to ;fill in the gap between this version of the character and a later ;version with the author's character specific AI, which would likely be ;much better.

;Send questions and suggestions to mickeysanchez@comcast.net.

;-| AI Commands |----------------------------------------------------------

[Command]
name = "cpu1"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu2"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu3"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu4"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu5"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu6"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu7"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu8"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu9"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu10"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

;-| super motions |--------------------------------------------------------

[command]
name = "pedradas"
command = ~D, DF, F, a+b
time = 15

[command]
name = "pedradas"
command = ~D, DF, F, b+c
time = 15

[command]
name = "pedradas"
command = ~D, DF, F, a+c
time = 15

[command]
name = "super_twister"
command = ~D, DF, F, x+y
time = 15

[command]
name = "super_twister"
command = ~D, DF, F, y+z
time = 15

[command]
name = "super_twister"
command = ~D, DF, F, x+z
time = 15

[command]
name = "tornadosuper"
command = ~D, DB, B, x+y
time = 15

[command]
name = "tornadosuper"
command = ~D, DB, B, y+z
time = 15

[command]
name = "tornadosuper"
command = ~D, DB, B, x+z
time = 15

[command]
name = "air_hyper_combo"
command = ~D,DF,F,y+z
time = 15

[command]
name = "air_hyper_combo"
command = ~D,DF,F,x+z
time = 15

[command]
name = "air_hyper_combo"
command = ~D,DF,F,x+y
time = 15

[command]
name = "speedster_assault"
command = ~D,DB,B,a+b
time = 15

[command]
name = "speedster_assault"
command = ~D,DB,B,a+c
time = 15

[command]
name = "speedster_assault"
command = ~D,DB,B,b+c
time = 15

;-| special motions |------------------------------------------------------

[command]
name = "soco_raio"
command = ~D, DF, F, a
time = 15

[command]
name = "soco_raio"
command = ~D, DF, F, b
time = 15

[command]
name = "soco_raio"
command = ~D, DF, F, c
time = 15

[command]
name = "golpes_invisiveis"
command =  ~30$B, F, x
time = 30

[command]
name = "golpes_invisiveis"
command =  ~30$B, F, y
time = 30

[command]
name = "golpes_invisiveis"
command =  ~30$B, F, z
time = 30

[command]
name = "high_speed"
command = ~30$B, F, a
time = 30

[command]
name = "high_speed"
command = ~30$B, F, b
time = 30

[command]
name = "high_speed"
command = ~30$B, F, c
time = 30

[command]
name = "wind_x"
command = ~D, DF, F, x
time = 15

[command]
name = "wind_y"
command = ~D, DF, F, y
time = 15

[command]
name = "wind_z"
command = ~D, DF, F, z
time = 15

[command]
name = "twister_x"
command = ~D, DB, B, x
time = 15

[command]
name = "twister_y"
command = ~D, DB, B, y
time = 15

[command]
name = "twister_z"
command = ~D, DB, B, z
time = 15

[command]
name = "Flash_Uppercut_Low"
command = ~F, D, DF, F, x
time = 15

[command]
name = "Flash_Uppercut_Medium"
command = ~F, D, DF, F, y
time = 15

[command]
name = "Flash_Uppercut_High"
command = ~F, D, DF, F, z
time = 15

[command]
name = "wallandceiling"
command = ~B, D, DB, B, a
time = 15

[command]
name = "wallandceiling"
command = ~B, D, DB, B, b
time = 15

[command]
name = "wallandceiling"
command = ~B, D, DB, B, c
time = 15

[command]
name = "rapidpunch_x"
command = ~D, DB, B, a
time = 15

[command]
name = "rapidpunch_y"
command = ~D, DB, B, b
time = 15

[command]
name = "rapidpunch_z"
command = ~D, DB, B, c
time = 15

[command]
name = "drop_down"
command = ~D,DF,F,a
time = 15

[command]
name = "drop_down"
command = ~D,DF,F,b
time = 15

[command]
name = "drop_down"
command = ~D,DF,F,c
time = 15

;-| Double tap |-----------------------------------------------------------
[command]
name = "ff"     ;required (do not remove)
command = F, F
time = 10

[command]
name = "bb"     ;required (do not remove)
command = B, B
time = 10

;-| 2/3 button combination |-----------------------------------------------
[command]
name = "recovery";required (do not remove)
command = x+y
time = 1

[command]
name = "superjump"
command = a+b+c
time = 20

[command]
name = "Kid"
command = a+x
time = 1

;-| Dir + button |---------------------------------------------------------
[command]
name = "down_a"
command = /$D,a
time = 1

[command]
name = "down_b"
command = /$D,b
time = 1

;-| single button |---------------------------------------------------------
[command]
name = "a"
command = a
time = 1

[command]
name = "b"
command = b
time = 1

[command]
name = "c"
command = c
time = 1

[command]
name = "x"
command = x
time = 1

[command]
name = "y"
command = y
time = 1

[command]
name = "z"
command = z
time = 1

[command]
name = "start"
command = s
time = 1

;-| hold Dir |--------------------------------------------------------------
[command]
name = "holdfwd";required (do not remove)
command = /$F
time = 1

[command]
name = "holdback";required (do not remove)
command = /$B
time = 1

[command]
name = "holdup" ;required (do not remove)
command = /$U
time = 1

[command]
name = "holddown";required (do not remove)
command = /$D
time = 1

[command]
name = "superjump"
command = D,$U
time = 10

[command]
name = "superjump"
command = a+b+c
time = 10

; Don't remove the Following line. it's required by the cmd standard.
[statedef -1]

[State -1, AIActivate]
type = VarSet
triggerall = var(12) != 1
triggerall = RoundState != 3
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
var(12) = 1

;======================================================================
;===========================================================================
;======================================================================
; A.I Commands
;-----------------------------------------------------------------------

;---------------------------------------------------------------------------
; AI Defense
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = var(12) =1=1 && StateType != A && Ctrl
triggerall = Random <= 150
triggerall = roundstate = 2
trigger1 = P2bodydist X >= 100 && P2moveType != A
value = 100
persistent = 0

[State -1]
type = ChangeState
triggerall = var(12) =1 =1 && StateType != A && P2moveType = A
triggerall = Random <= 25
triggerall = roundstate = 2
trigger1 = Ctrl
value = 105
persistent = 0


;Wall & Ceiling Run
[State -1, FwdDash2]
type = ChangeState
triggerall = var(12) =1=1 && StateType != A && Ctrl
triggerall = Random <= 50
triggerall = roundstate = 2
trigger1 = P2bodydist X >= 100 && P2moveType != A
value = 1400
persistent = 0



[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(12) )
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 130

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(12) )
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 131

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(12) )
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 132


;---------------------------------------------------------------------------
;crouch Strong punch (launcher)
[State -1, Crouch launcher]
type = ChangeState
value = 420
triggerall = var(12) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = p2bodydist X <= 20 && (enemynear, anim = 5300) && (StateNo = 420) && movehit
trigger2 = p2bodydist X <= 20 && (enemynear, statetype != A) && Random = [150,850] ;&& (StateNo = 420) && (MoveHit = 1)

;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 1045
triggerall = (StateType != A) && Var(12)
trigger1 = (StateNo = 420) && (MoveHit = 1)
trigger2 = (enemynear, Vel X >= 4) && ctrl


;---------------------------------------------------------------------------

[State -1, MegaFrag]
type = ChangeState
value = 3100
triggerall = power >= 1000 && var(12) && ctrl
triggerall = numprojid(2044) = 0
triggerall = StateType != A && MoveType != H && !winko && (!IsHelper)
triggerall = NumHelper(3305) = 0 && Var(21) = 0 && NumHelper(25) = 0
trigger1 = p2dist x >= 120 && enemynear, movetype = A && random < 400
trigger2 = enemynear, movetype = H && random <= 400



; Rock Blizzard
[State -1, MegaFrag]
type = ChangeState
value = 3010
triggerall = power >= 1000 && var(12) && ctrl
triggerall = numprojid(3011) = 0
triggerall = StateType != A && MoveType != H && !winko && (!IsHelper)
triggerall = Var(21) = 0 && NumHelper(25) = 0
trigger1 = p2dist x >= 100 && enemynear, movetype = A && random < 300
trigger2 = enemynear, movetype = H && random <= 300


;---------------------------------------------------------------------------
; Super Twister
[State -1, MegaFrag]
type = ChangeState
value = 3000
triggerall = power >= 1000 && var(12) && ctrl
triggerall = numprojid(1001) = 0
triggerall = numprojid(3001) = 0
triggerall = StateType != A && MoveType != H && !winko && (!IsHelper)
triggerall = NumHelper(3305) = 0 && Var(21) = 0 && NumHelper(10) = 0
trigger1 = p2dist x >= 100 && enemynear, movetype = A && random < 300
trigger2 = enemynear, movetype = H && random <= 300



;----------------------------------------------------------------------


; Flash Speeding Punch
[State -1, MrHook]
type = ChangeState
value = 1600
triggerall = var(12) && ctrl
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
triggerall = NumHelper(10) = 0
trigger1 = P2BodyDist X > 50 && enemynear, statetype = S && enemynear, numproj = 0 && random < 25

;---------------------------------------------------------------------------

; Light Speed Punches
[State -1, Grenade1]
type = ChangeState
value = 1900
triggerall = var(12) && ctrl && P2BodyDist X < 65
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
triggerall = NumHelper(10) = 0 && NumHelper(25) = 0 && Var(21) = 0
trigger1 = P2BodyDist X <= 65 && Random < 25

;---------------------------------------------------------------------------
[State -1, Grenade2]
type = ChangeState
value = 1101
triggerall = var(12) && ctrl
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
triggerall = NumHelper(10) = 0 && NumHelper(25) = 0 && Var(21) = 0
trigger1 = P2BodyDist X <= 70 && (random = [0,10])

[State -1, Grenade2]
type = ChangeState
value = 1102
triggerall = var(12) && ctrl
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
triggerall = NumHelper(10) = 0 && NumHelper(25) = 0 && Var(21) = 0
trigger1 = P2BodyDist X <= 70 && (random = [0,10])

; Twister (Tall)
[State -1, Grenade2]
type = ChangeState
value = 1103
triggerall = var(12) && ctrl
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
triggerall = NumHelper(10) = 0 && NumHelper(25) = 0 && Var(21) = 0
trigger1 = P2BodyDist X <= 70 && (random = [0,10])

[State -1, Twister air]
type = ChangeState
triggerall = (roundstate = 2) && (var(12) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [0,50])
trigger1 = (p2bodydist x < 50) && (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
trigger1 = p2bodydist y > 30
value = 660



;---------------------------------------------------------------------------
; Multiple Invisible Punches
[State -1, Grenade4]
type = ChangeState
value = 1500
triggerall = 0
triggerall = var(12) && ctrl
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
triggerall = NumHelper(10) = 0 && NumHelper(25) = 0 && Var(21) = 0
trigger1 = P2BodyDist X >= 100 && Random > 25 && Random < 50

;---------------------------------------------------------------------------
; High Speed Knock Down
[State -1, Grenade5]
type = ChangeState
value = 1300
triggerall = 0
triggerall = var(12) && ctrl
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
triggerall = NumHelper(10) = 0 && NumHelper(25) = 0 && Var(21) = 0
trigger1 = P2BodyDist X >= 100 && Random < 25 && Random < 50

;---------------------------------------------------------------------------
; Wind
[State -1, Grenade6]
type = ChangeState
value = 1003
triggerall = var(12) && ctrl
triggerall = numhelper(1005) = 0
triggerall = StateType != A && MoveType != H && !winko && !IsHelper
triggerall = NumHelper = 0 && NumHelper(25) = 0 && Var(21) = 0
trigger1 = P2BodyDist X >= 100 && Random < 50 && Random < 100


[State -1 random helpers]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,200])
triggerall = numhelper(4101) = 0
triggerall = numhelper(4201) = 0
trigger1 = (p2bodydist x > 100) && (prevstateno != 5120)
value = ifelse(random< 500,4000,4200)



;
;====================================================================
; Stand, Crouch, Jump / Punch, Kick - NORMAL (only 3 punches/kicks)
;====================================================================

;---------------------------------------------------------------------------
; Standing basics
;
; Punches: 200, 210, 220
; Kicks: 230, 240, 250
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = (statetype = S) && var(12) && p2statetype != L && RoundState = 2
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && Random <= 200)

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall =(statetype = S) && var(12) && p2statetype != L && RoundState = 2

; (chain combos)
trigger1 = (stateno = 200) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = var(12) && p2statetype != L && RoundState = 2
triggerall = statetype = S

; (chain combos)
trigger1 = ((stateno = 200) || (stateno = 210)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall =(statetype = S) && var(12) && p2statetype != L && RoundState = 2
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 400&& random >200)) && ctrl

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = var(12) && p2statetype != L && RoundState = 2
triggerall = statetype = S

; (chain combos)
trigger1= (stateno = 250) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = var(12) && enemynear, statetype != L && RoundState = 2

; (chain combos)
trigger1 = ((stateno = 250) || (stateno = 260)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Throws
[State -1, throw ai]
type = ChangeState
value = 800
triggerall = MoveType != H && RoundState = 2 && !IsHelper
triggerall =  (p2bodydist x <= 15) && (p2bodydist y <= 10)
triggerall = Random <= 150 && (statetype = S) && Var(12)
trigger1 = ctrl = 1

; Throws
[State -1, throw2 ai]
type = ChangeState
value = 8000
triggerall = MoveType != H && RoundState = 2 && !IsHelper
triggerall =  (p2bodydist x <= 15) && (p2bodydist y <= 10)
triggerall = Random <= 150 && (statetype = S) && Var(12)
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
triggerall = var(12) && statetype = C && RoundState = 2 && ctrl
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 600&& random >400))

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = var(12) && statetype = C && RoundState = 2 && ctrl

; (chain combos)
trigger1 = (stateno = 400) && movecontact

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = var(12) && statetype != A && RoundState = 2

; (chain combos)
trigger1 = (stateno = 410) && movecontact

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = var(12) && statetype = C && RoundState = 2 && ctrl
trigger1 = (enemynear, p2dist x <= 65 && enemynear, movetype != A && (Random <= 900&& random >600))

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = var(12) && statetype = C && RoundState = 2 && ctrl

; (chain combos)
trigger1 = (stateno = 450) && movecontact

;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = var(12) && statetype != A && RoundState = 2

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
triggerall = var(12) && RoundState = 2 && stateno != 100 && statetype = A && ctrl
trigger1 = p2dist X < 60 && (p2dist Y > -3 && p2dist Y < 3)

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = var(12) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = stateno = 600 && movecontact
trigger2 = stateno = 630 && movecontact


;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = var(12) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = stateno = 600 && movecontact
trigger2 = stateno = 610 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 650 && movecontact

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = var(12) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 600) && (movecontact = 1)

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = var(12) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 600) && movecontact
trigger2 = (stateno = 630) && movecontact
trigger3 = (stateno = 610) && movecontact


;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = var(12) && RoundState = 2 && stateno != 100
triggerall = statetype = A && ctrl

; (chain combos)
trigger1 = stateno = 600 && movecontact
trigger2 = stateno = 640 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact

;----------------------------------------------------------------------
; Air combo
[State -1, ChangeState]
type = ChangeState
triggerall = Var(12) && StateType = A
trigger1 = (StateNo = [600,620]) && (MoveContact)
value = IfElse(StateNo = 600,630,IfElse(StateNo = 610,640,650))
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = Var(12) && StateType = A
trigger1 = (StateNo = [630,640]) && (MoveContact)
value = IfElse(StateNo = 630,610,620)





;IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
;----Player commands
IIIIIIIIIIIIIIIIIIIIIII
;===========================================================================

;===========================================================================
;------------------------------- Helpers -----------------------------------
;===========================================================================

;===========================================================================
;----------------------------- Flash Helpers -----------------------------------
;===========================================================================

[State -1]
type = ChangeState
triggerall = statetype = S & !var(12)
triggerall = ctrl
triggerall = numhelper(4101) = 0
triggerall = numhelper(4201) = 0
trigger1 = command = "Kid"
value = ifelse(random< 500,4000,4200)
ctrl = 1

;==========================================================================
; ---------------------------- Hyper Attacks ------------------------------
;==========================================================================

;==========================================================================
; --------------------------- 1000 Rock Toss ------------------------------
;==========================================================================

[state -1, Pedradas]
type = changestate
value = 3010
triggerall = command = "pedradas"
triggerall = statetype != a && !Var(12)
triggerall = numprojid(3011) = 0
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3

;===========================================================================
;--------------------------- Super Twister ---------------------------------
;===========================================================================

[state -1, super twister]
type = changestate
value = 3000
triggerall = command = "super_twister"
triggerall = statetype != a && !Var(12)
triggerall = power >=1000
triggerall = numprojid(1001) = 0
triggerall = numprojid(3001) = 0
trigger1 = ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3

;===========================================================================
;-------------------------- Horizontal Tornado -----------------------------
;===========================================================================

;Tornado horizontal
[State -1, Tornado horizontal]
type = ChangeState
value = 3100
triggerall = command = "tornadosuper"
triggerall = statetype != a && !Var(12)
triggerall = numprojid(2044) = 0
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3

;===========================================================================
;------------------------------- Speedster Assault -------------------------
;===========================================================================

;Speedster Assault
[State -1, Speedster Assault]
type = ChangeState
value = 3200
triggerall = command = "speedster_assault"
triggerall = statetype != a && !Var(12)
triggerall = power >= 3000
trigger1 = ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3

;===========================================================================
;------------------------------------ Air Hyper Combo ----------------------
;===========================================================================

;Air Hyper Combo
[State -1, Air Hyper Combo]
type = ChangeState
value = 3300
triggerall = command = "air_hyper_combo"
triggerall = statetype = a && !Var(12)
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3

;===========================================================================
;--------------------------------- Super Attacks ---------------------------
;===========================================================================

;===========================================================================
;------------------------------- Flash Uppercut Low ------------------------
;===========================================================================

[State -1, Flash_Uppercut_Low]
type = ChangeState
value = 1800
triggerall = command = "Flash_Uppercut_Low"
trigger1 = ctrl  && !Var(12)
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3

;===========================================================================
;----------------------------- Flash Uppercut Medium ------------------------
;===========================================================================

[State -1, Flash_Uppercut_Medium]
type = ChangeState
value = 1810
triggerall = command = "Flash_Uppercut_Medium"
trigger1 = ctrl && !Var(12)
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3

;===========================================================================
;------------------------------- Flash Uppercut High -----------------------
;===========================================================================

[State -1, Flash_Uppercut_High]
type = ChangeState
value = 1820
triggerall = command = "Flash_Uppercut_High"
trigger1 = ctrl && !Var(12)
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3

;===========================================================================
;--------------------------------- Flash punch -----------------------
;===========================================================================

[state -1]
type = changestate
value = 1600
triggerall = command = "soco_raio"
triggerall = statetype != a && !Var(12)
trigger1 = ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3

;===========================================================================
;--------------------------------- Invisible Punches -----------------------
;===========================================================================

[state -1]
type = changestate
value = 1500
triggerall = 0
triggerall = command = "golpes_invisiveis"
triggerall = statetype != a  && !Var(12)
trigger1 = ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3

;===========================================================================
;----------------------------- High Speed Knock Down -----------------------
;===========================================================================

;high speed knock Down
[state -1,high speed knock Down]
type = changestate
value = 1300
triggerall = 0
triggerall = command = "high_speed"
triggerall = statetype != a && !Var(12)
trigger1 = ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3

;===========================================================================
;----------------------------- Wall & Ceiling Run --------------------------
;===========================================================================

[state -1,wall & ceiling run]
type = changestate
value = 1400
triggerall = command = "wallandceiling"
triggerall = statetype != a  && !Var(12)
trigger1 = ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3

;===========================================================================
;------------------------------------ Wind ---------------------------------
;===========================================================================

;wind_x
[state -1]
type = changestate
value = 1000
triggerall = command = "wind_x"
triggerall = numhelper(1001) = 0
triggerall = statetype != a && !Var(12)
trigger1 = ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3

;---------------------------------------------------------------------------
;wind_y
[state -1]
type = changestate
value = 1002
triggerall = command = "wind_y"
triggerall = numhelper(1004) = 0
triggerall = statetype != a && !Var(12)
trigger1 = ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3

;---------------------------------------------------------------------------
;wind_z
[state -1]
type = changestate
value = 1003
triggerall = command = "wind_z"
triggerall = numhelper(1005) = 0
triggerall = statetype != a && !Var(12)
trigger1 = ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3

;===========================================================================
;---------------------------------- Twister --------------------------------
;===========================================================================

[state -1, weak twister]
type = changestate
value = 1101
triggerall = command = "twister_x"
triggerall = statetype != a && !Var(12)
trigger1 = ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3

;---------------------------------------------------------------------------

[state -1, strong twister]
type = changestate
value = 1102
triggerall = command = "twister_y"
triggerall = statetype != a && !Var(12)
trigger1 = ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3

;---------------------------------------------------------------------------

[state -1, Fierce twister]
type = changestate
value = 1103
triggerall = command = "twister_z"
triggerall = statetype != a && !Var(12)
trigger1 = ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3


[state -1, Twister air]
type = changestate
value = 660
triggerall = var(12) != 1
triggerall = command = "twister_x" || command = "twister_y" || command = "twister_z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = ((stateno = 600) || (stateno = 610)) && (movecontact >= 1)
trigger3 = ((stateno = 630) || (stateno = 640)) && (movecontact >= 1)
trigger4 = ((stateno = 620) || (stateno = 650)) && (movecontact >= 1)


;===========================================================================
;------------------------------- Rapid Punch -------------------------------
;===========================================================================

;rapid punch_x
[state -1,rapid punch]
type = changestate
value = 1900
triggerall = command = "rapidpunch_x"
triggerall = statetype != a && !Var(12)
trigger1 = ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3

;----------------------------------------------------------------------------
;rapid punch_y
[state -1,rapid punch]
type = changestate
value = 1903
triggerall = command = "rapidpunch_y"
triggerall = statetype != a  && !Var(12)
trigger1 = ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3

;----------------------------------------------------------------------------
;rapid punch_z
[state -1,rapid punch]
type = changestate
value = 1906
triggerall = command = "rapidpunch_z"
triggerall = statetype != a && !Var(12)
trigger1 = ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3

;===========================================================================
;---------------------------------- Drop Down ------------------------------
;===========================================================================

;Drop Down
[State -1, Drop Down]
type = ChangeState
value = 2000
triggerall = command = "drop_down"
trigger1 = (statetype = a) && ctrl && !Var(12)
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3
;===========================================================================
;---------------------------------------------------------------------------

;run Fwd
[state -1, run Fwd]
type = changestate
value = 100
trigger1 = command = "ff"
trigger1 = statetype = s
trigger1 = ctrl

;---------------------------------------------------------------------------

;run back
;œã'þƒ_ƒbƒvƒ…
[state -1, run back]
type = changestate
value = 105
trigger1 = command = "bb"
trigger1 = statetype = s
trigger1 = ctrl; = 0

;---------------------------------------------------------------------------

;super jump
[state -1, super jump]
type = changestate
value = 1045
trigger1 = command = "superjump"
trigger1 = statetype = s
trigger1 = ctrl

;---------------------------------------------------------------------------
;taunt
[state -1, taunt]
type = changestate
value = 195
triggerall = command = "start"
trigger1 = statetype != a
trigger1 = ctrl


;---------------------------------------------------------------------------
; Throws
;
; Standing : 800
; Air : 810
;---------------------------------------------------------------------------

; Throws
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S && !Var(12)
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S)
trigger2 = p2movetype != H

; Throw2
[State -1, Throw]
type = ChangeState
value = 8000
triggerall = command = "b"
triggerall = statetype = S && !Var(12)
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
; Standing basics
;
; Punches: 200, 210, 220
; Kicks: 230, 240, 250
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = (command = "x") && (statetype = S) && !Var(12)
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = (command = "y") && (statetype = S) && !Var(12)
trigger1 = ctrl
trigger2 = movecontact && time > 3
trigger2 = (stateno = 200)
trigger3 = movecontact && time > 3
trigger3 = (stateno = 230)
trigger4 = movecontact && time > 3
trigger4 = (stateno = 400)
trigger5 = movecontact && time > 3
trigger5 = (stateno = 430)

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = (command = "z") && (statetype = S) && !Var(12)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact && time > 3
trigger3 = (stateno = 230) || (stateno = 240)
trigger4 = movecontact && time > 3
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact && time > 3
trigger5 = (stateno = 430) || (stateno = 440)

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = (command = "a") && (statetype = S) && !Var(12)
trigger1 = ctrl
trigger2 = movecontact && time > 3
trigger2 = (stateno = 200)
trigger3 = movecontact && time > 3
trigger3 = (stateno = 400)

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = (command = "b") && (statetype = S) && !Var(12)
trigger1 = ctrl
trigger2 = movecontact && time > 3
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact && time > 3
trigger3 = (stateno = 230)
trigger4 = movecontact && time > 3
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact && time > 3
trigger5 = (stateno = 430)

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = (command = "c") && (statetype = S) && !Var(12)
trigger1 = ctrl
trigger2 = movecontact && time > 3
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220)
trigger3 = movecontact && time > 3
trigger3 = (stateno = 230) || (stateno = 240)
trigger4 = movecontact && time > 3
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420)
trigger5 = movecontact && time > 3
trigger5 = (stateno = 430) || (stateno = 440)
;---------------------------------------------------------------------------
; Crouching basics
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = (command = "x") && (statetype = C) && !Var(12)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = (command = "y") && (statetype = C) && !Var(12)
trigger1 = ctrl
trigger2 = movecontact && time > 3
trigger2 = (stateno = 200)
trigger3 = movecontact && time > 3
trigger3 = (stateno = 230)
trigger4 = movecontact && time > 3
trigger4 = (stateno = 400)
trigger5 = movecontact && time > 3
trigger5 = (stateno = 430)

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = (command = "z") && (statetype = C) && !Var(12)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = [200, 450])) && movecontact = 1 && stateno != 420 && var(18) < 7 && time > 3


;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = (command = "a") && (statetype = C) && !Var(12)
trigger1 = ctrl
trigger2 = movecontact && time > 3
trigger2 = (stateno = 200)
trigger3 = movecontact && time > 3
trigger3 = (stateno = 400)

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = (command = "b") && (statetype = C) && !Var(12)
trigger1 = ctrl
trigger2 = movecontact && time > 3
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact && time > 3
trigger3 = (stateno = 230)
trigger4 = movecontact && time > 3
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact && time > 3
trigger5 = (stateno = 430)



;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = (command = "c") && (statetype = C) && !Var(12)
trigger1 = ctrl
trigger2 = movecontact && time > 3
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220)
trigger3 = movecontact && time > 3
trigger3 = (stateno = 230) || (stateno = 240)
trigger4 = movecontact && time > 3
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420)
trigger5 = movecontact && time > 3
trigger5 = (stateno = 430) || (stateno = 440)



;---------------------------------------------------------------------------
; Air basics
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = (command = "x") && (statetype = A) && !Var(12)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = (command = "y") && (statetype = A) && !Var(12)
trigger1 = ctrl
trigger2 = movecontact && time > 3
trigger2 = stateno = 600
trigger3 = movecontact && time > 3
trigger3 = stateno = 630


;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = (command = "z") && (statetype = A) && !Var(12)
trigger1 = ctrl
trigger2 = movecontact && time > 3
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact && time > 3
trigger3 = stateno = 630 || stateno = 640

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = (command = "a") && (statetype = A) && !Var(12)
trigger1 = ctrl
trigger2 = movecontact && time > 3
trigger2 = stateno = 600

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = (command = "b") && (statetype = A) && !Var(12)
trigger1 = ctrl
trigger2 = movecontact && time > 3
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact && time > 3
trigger3 = stateno = 630
;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = (command = "c") && (statetype = A) && !Var(12)
trigger1 = ctrl
trigger2 = movecontact && time > 3
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact && time > 3
trigger3 = stateno = 630 || stateno = 640


; {character name}'s CMD file

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
name = "holdx";Required (do not remove)
command = /x
time = 1

[Command]
name = "holdy";Required (do not remove)
command = /y
time = 1

[Command]
name = "holdz";Required (do not remove)
command = /z
time = 1

[Command]
name = "holda";Required (do not remove)
command = /a
time = 1

[Command]
name = "holdb";Required (do not remove)
command = /b
time = 1

[Command]
name = "holdc";Required (do not remove)
command = /c
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
name = "qcf_2k"
command = ~D, DF, F, x+y

[Command]
name = "qcf_2k"
command = ~D, DF, F, x+z

[Command]
name = "qcf_2k"
command = ~D, DF, F, y+z

[Command]
name = "qcf_2p"
command = ~D, DB, B, x+y

[Command]
name = "qcf_2p"
command = ~D, DB, B, x+z

[Command]
name = "qcf_2p"
command = ~D, DB, B, y+z

[Command]
name = "qcb_2k"
command = ~D, DF, F, a+b

[Command]
name = "qcb_2k"
command = ~D, DF, F, a+c

[Command]
name = "qcb_2k"
command = ~D, DF, F, b+c

[Command]
name = "qcb_2p"
command = ~D, DB, B, a+b

[Command]
name = "qcb_2p"
command = ~D, DB, B, a+c

[Command]
name = "qcb_2p"
command = ~D, DB, B, b+c

[Command] ; QCB + punch & kick of equal strength
name = "chain"
command = ~D, DB, B, a+x

[Command] ; QCB + punch & kick of equal strength
name = "chain"
command = ~D, DB, B, b+y

[Command] ; QCB + punch & kick of equal strength
name = "chain"
command = ~D, DB, B, c+z


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
time = 20

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

[State -1, standGuard]
type = ChangeState
triggerall = var(59) && random <= 777
triggerall =(StateType != A) && (Ctrl)&& (enemynear, Facing != Facing)
trigger1 = (P2StateType != C) && (P2MoveType = A)
;trigger2 = inguarddist
value = 130

[State -1, airGuardHitBack]
type = ChangeState
triggerall = var(59) && random <= 777
triggerall =(StateType != A) && (enemynear, Facing != Facing)
triggerall = (P2StateType = C) && (P2MoveType = A)
trigger1 = StateNo = 150
;trigger2 = inguarddist
value = 152

[State -1, crouchGuard]
type = ChangeState
triggerall = var(59) && random <= 777
triggerall = (StateType != A) && (Ctrl) && (enemynear, Facing != Facing)
trigger1 = (P2StateType = C) && (P2MoveType = A)
;trigger2 = inguarddist
value = 131

[State -1, standGuardHitBack]
type = ChangeState
triggerall = var(59) && random <= 777
triggerall =(StateType != A) && (enemynear, Facing != Facing)
triggerall = (P2StateType != C) && (P2MoveType = A)
trigger1 = StateNo = 152
;trigger2 = inguarddist
value = 150

[State -1, airGuard]
type = ChangeState
triggerall = var(59) && random <= 777
triggerall = (StateType = A) && (Ctrl) && (enemynear, Facing != Facing)
trigger1 = P2MoveType = A
;trigger2 = inguarddist
value = 132

;====================================================================
; Main Hyper - Long Range
;====================================================================


; red arrow
[State -1, longHyper]
type = ChangeState
value = 4000
triggerall = power >= 3000 && var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = random < 50 && p2bodydist X > 120;&& enemynear, anim = 5300
trigger2 = random < 500 && enemynear, anim = 5300


; black canary
[State -1, longHyper]
type = ChangeState
value = 1800
triggerall = power >= 1000 && var(59) && ctrl && prevstateno != 1800
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = !IsHelper && NumHelper(1901) = 0
trigger1 = random < 80 && p2bodydist X > 100



[State -1, longHyper]
type = ChangeState
value = 3000
triggerall = power >= 1000 && var(59) && ctrl && p2bodydist X > 120
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random < 80


[State -1, longHype2]
type = ChangeState
value = 3100
triggerall = power >= 1000 && var(59) && ctrl && p2bodydist X > 120
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && enemynear, movetype != A && random < 80

;krypton
[State -1, Hyper1]
type = ChangeState
value = 1401
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = p2name = "Superboy" || p2name = "KonEl" || p2name = "Kon-El" || p2name = "Superman"
triggerall = p2name = "Super Girl" || p2name = "Power Girl"
trigger1 = random < 100
 ;emp
[State -1, Hyper2]
type = ChangeState
value = 1403
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && random < 100
trigger1 = p2name = "Iceman" || p2name = "Ajax" || p2name = "Ice" || p2name = "Martian Manhunter"

 ;fogo
[State -1, Hyper3]
type = ChangeState
value = 1402
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && random < 100
trigger1 = p2name = "War Machine" || p2name = "Lex Luthor" || p2name = "Ironman" || p2name = "Sentinel" || p2name = "Dr. Doom" || p2name = "Ironman DCvsM" || p2name = "Marvel vs. Capcom's WarMachine"
trigger2 = p2name = "WarMachine" || p2name = "Dr doom" || p2name = "DrDoom"
trigger3 = p2name = "Vision" || p2name = "Batman Beyond" || p2name = "Cyborg Superman"
trigger4 = p2name = "Cyborg" || p2name = "Steel" || p2name = "Forge"
trigger5 = p2name = "Red Tornado" || p2name = "Songbird"


[State -1, Hyper3]
type = ChangeState
value = 1407
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && random < 100
trigger1 = p2name = "Bizarro"

 ;sonic
[State -1, Hyper4]
type = ChangeState
value = 1404
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && random < 100
trigger1 = p2name = "Carnage" || p2name = "Venom" || p2name = "Daredevil"
trigger2 = p2name = "Symbiote Spider-Man" || p2name = "Wolvenom" || p2name = "Agony"
trigger3 = p2name = "venomscorp"

 ;gelo
[State -1, Hyper5]
type = ChangeState
value = 1405
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && random < 100
trigger1 = p2name = "Homem Borracha" || p2name = "Plastic Man" || p2name = "Omega Red" || p2name = "Human Torch"
trigger2 = p2name = "Mr. Fantastic" || p2name = "Fire" || p2name = "Sunfire" || p2name = "ElongatedMan"

 ;boomerang
[State -1, Hyper6]
type = ChangeState
value = 11000;1406
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper)&& random < 100
trigger1 = p2name = "Flash" || p2name = "Boomerang" || p2name = "Black Cat"
trigger2 = p2name = "Gambit" || p2name = "Spider-Man 2099" || p2name = "Spiderman"
trigger3 = p2name = "Nightcrawler" || p2name = "The Beast" || p2name = "Beast"
trigger4 = p2name = "Psylocke" || p2name = "Quicksilver" || p2name = "SJA Flash"
trigger5 = p2name = "Elektra" || p2name = "Psylocke_EOH" || p2name = "JSA Flash"
trigger6 = p2name = "Robin Tim Drake" || p2name = "Batman" || p2name = "Nightwing"
trigger7 = p2name = "Robin" || p2name = "Ten"

[State -1, Hyper1];energy pulse
type = ChangeState
value = 1408
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper)&& random < 100
trigger1 = p2name = "Bishop" || p2name = "Strong Guy" || p2name = "Miss Marvel"
trigger2 = p2name = "Parasite" || p2name = "Wonderman" || p2name = "Sentry"
trigger3 = p2name = "Silver Surfer" || p2name = "Captain Marvel" || p2name = "Captain Marvell"

[State -1, Hyper1];net
type = ChangeState
value = 1409
triggerall = power >= 1000  ;&& p2stateno != 14090
triggerall = (StateType != A) && (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper)&& random < 100
trigger1 = p2name = "Angel" || p2name = "Hawkman" || p2name = "Hawkgirl"
trigger2 = p2name = "Hobgoblin" || p2name = "Vulture" || p2name = "Green Goblin"
trigger3 = p2name = "CannonBall" || p2name = "Storm" || p2name = "Banshee"


[State -1, Hyper1];new atom
type = ChangeState
value = 1410
triggerall = power >= 1000  && numhelper(14101) = 0 && numhelper(14100) = 0 && numhelper(14102) = 0
triggerall = (StateType != A) && (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper)&& random < 100
trigger1 = p2name = "Darkseid" || p2name = "Mongul DCvsM" || p2name = "Thanoseid"
trigger2 = p2name = "Thanos" || p2name = "Apocalypse" || p2name = "Galactus"
trigger3 = p2name = "Engine Of Destruction" || p2name = "Symbiote Onslaught"
trigger4 = p2name = "Onslaught" || p2name = "Dr. Doomsday" || p2name = "Dr. Strangefate"
trigger5 = p2name = "Doomsday"

;flecha pulo
[State -1, flecha normal1]
type = ChangeState
value = 1115
triggerall = (statetype = A) && var(59) && p2statetype != L && RoundState = 2
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist y >= 10) && (enemynear, p2dist x >= 100) && (enemynear, movetype = A) && (Random < 100)

[State -1, flecha normal2]
type = ChangeState
value = 1116
triggerall = (statetype = A) && var(59) && p2statetype != L && RoundState = 2
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist y <= -10 && enemynear, p2dist x >= 100 && enemynear, movetype != A && Random < 100)

[State -1, flecha normal3]
type = ChangeState
value = 1117
triggerall = (statetype = A) && var(59) && p2statetype != L && RoundState = 2
trigger1 = ctrl = 1
trigger1 = (enemynear,p2dist y <= -10 && enemynear, p2dist x >= 100 && enemynear, movetype != A && Random < 100)

[State -1, flecha normal4]
type = ChangeState
value = 1118
triggerall = (statetype = A) && var(59) && p2statetype != L && RoundState = 2
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist y <= -10 && enemynear, p2dist x >= 100 && enemynear, movetype != A && Random < 100)

[State -1, flecha normal5]
type = ChangeState
value = 1000
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState = 2
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x >= 100) && (enemynear, movetype != A) && (Random < 10)

[State -1, flecha bomba]
type = ChangeState
value = 1200
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState = 2
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x >= 60 && enemynear, movetype != A && Random < 10)

[State -1, flecha choque]
type = ChangeState
value = 1210
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState = 2
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x >= 60 && enemynear, movetype != A && Random < 10)

[State -1, flecha fumaça]
type = ChangeState
value = 1220
triggerall = (statetype = S) && var(59) && p2statetype != L
triggerall = ctrl = 1 && RoundState = 2 && enemynear, p2dist x >= 60
trigger1 = (enemynear, movetype != A && Random < 10)
trigger2 = (power >= 3000 && enemynear, movetype != A && Random < 550)


[State -1, flecha normal6]
type = ChangeState
value = 1010
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState = 2
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x >= 200 && enemynear, movetype != A && Random < 30)

[State -1, flecha normal7]
type = ChangeState
value = 1011
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState = 2
trigger1 = ctrl = 1 && enemynear, p2dist x >= 120
trigger1 = (enemynear, p2dist x <= 200 && enemynear, movetype != A && Random < 10)

[State -1, flecha normal8]
type = ChangeState
value = 1012
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState = 2
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 120 && enemynear, movetype != A && Random < 10)

[State -1, flecha baixa]
type = ChangeState
value = 1002
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState = 2
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x >= 60 && enemynear, P2statetype != A && Random < 100)

[State -1, flecha alta]
type = ChangeState
value = 1001
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState = 2
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist y >= 10  && Random < 100)

[State -1, flecha alta]
type = ChangeState
value = 1301
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState = 2
trigger1 = ctrl = 1 && enemynear, p2dist x >= 60
trigger1 = (enemynear, p2dist y >= 10  && Random < 100)

[State -1, flecha alta]
type = ChangeState
value = 1300
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState = 2
trigger1 = ctrl = 1 && enemynear, p2dist x <= 60
trigger1 = (enemynear, p2dist y >= 10  && Random < 200)


[State -1, flecha alta]
type = ChangeState
value = 1302
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState = 2
trigger1 = ctrl = 1 && enemynear, p2dist x >= 220
trigger1 = (enemynear, P2statetype = S  && Random < 200)
;---------------------------------------------------------------------------
;crouch Strong punch (launcher)
[State -1, Crouch launcher]
type = ChangeState
value = 420
triggerall = var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = p2bodydist X <= 20 && (enemynear, anim = 5300) && (StateNo = 420) && movehit
trigger2 = p2bodydist X <= 20 && (enemynear, statetype != A) &&  Random <= 150 ;&& (StateNo = 420) && (MoveHit = 1)


[State -1, throw ai]
type = ChangeState
value = 800
triggerall = MoveType != H && RoundState = 2 && !IsHelper
triggerall =  (p2bodydist x <= 15) && (p2bodydist y <= 10)
triggerall = Random <= 150 && (statetype = S) && Var(59)
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 700
triggerall = (StateType != A) && Var(59) && Random <= 850
trigger1 = (StateNo = 420) && (MoveHit = 1)
trigger2 = (enemynear, Vel X >= 4) && ctrl


;====================================================================
; Main Standing Special
;====================================================================


;---------------------------------------------------------------------------
; Fwd Dash
[State -1, FwdDash]
type = ChangeState
value = 100
triggerall = var(59) && RoundState = 2 && ctrl
triggerall = (statetype = S) && enemynear, p2dist X >= 75
triggerall = Var(20) != 3 && NumHelper(25) = 0 && p2bodydist x > 75
trigger1 = enemynear, movetype != A && enemynear, numproj = 0 && enemynear, statetype != L && random <= 100
trigger2 = enemynear, statetype = L && random <= 100 && enemy, numproj = 0

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
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState = 2
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && Random <= 200)

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall =(statetype = S) && var(59) && p2statetype != L && RoundState = 2

; (chain combos)
trigger1 = (stateno = 200) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = var(59) && p2statetype != L && RoundState = 2
triggerall = statetype = S

; (chain combos)
trigger1 = ((stateno = 200) || (stateno = 210)) && (movecontact = 1)   && Random <= 700
trigger2 = (stateno = 0)&&(enemynear, p2dist x <= 60 && enemynear, movetype != A && Random <= 200)

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall =(statetype = S) && var(59) && p2statetype != L && RoundState = 2
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 400&& random >200)) && ctrl

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = var(59) && p2statetype != L && RoundState = 2
triggerall = statetype = S

; (chain combos)
trigger1= (stateno = 230) && (movecontact = 1) && Random <= 700

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = var(59) && enemynear, statetype != L && RoundState = 2
; (chain combos)
trigger1 = ((stateno = 230) || (stateno = 240)) && (movecontact = 1) && Random <= 700
trigger2 = (stateno = 0)&&(enemynear, p2dist x <= 60 && enemynear, movetype != A && Random <= 200)
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
trigger1 = (stateno = 400) && movecontact && Random <= 700

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = var(59) && statetype != A && RoundState = 2

; (chain combos)
trigger1 = (stateno = 410) && movecontact && Random <= 700

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
trigger1 = (stateno = 430) && movecontact && Random <= 700

;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = var(59) && statetype != A && RoundState = 2

; (chain combos)
trigger1 = (stateno = 440) && movecontact && Random <= 700

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

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 630) && movecontact  && Random <= 700
trigger2 = (stateno = 99) && Random <= 700

;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = stateno = 650 && movecontact && Random <= 900

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 600) && (movecontact = 1)&& Random <= 700

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 610) && movecontact && Random <= 700
trigger2 = (stateno = 99) && Random <= 700
;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = var(59) && RoundState = 2 && stateno != 100
triggerall = statetype = A && ctrl

; (chain combos)
trigger1 = stateno = 620 && movecontact && Random <= 700

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


;======================================================================
;User Input Attacks

;----------------------------------------------------------------------
; Amalgam Hyper
[State -1, Amalgam]
type = ChangeState
value = 4000
triggerall = power = 3000 && !Var(59)
triggerall = StateType != A && MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "Amalgam"

;---------------------------------------------------------------------------
; Hyper1
[State -1, Hyper1]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcf_2k"

; Hyper1
[State -1, Hyper1]
type = ChangeState
value = 3100
triggerall = power >= 1000
triggerall = NumHelper(3101) = 0
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcf_2p"

; Hyper1
[State -1, Hyper1]
type = ChangeState
value = 1800
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = numhelper(1901) = 0
trigger1 = command = "qcb_2p"


;krypton
[State -1, Hyper1]
type = ChangeState
value = 1401
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && command = "qcb_2k"
trigger1 = p2name = "Superboy" || p2name = "KonEl" || p2name = "Kon-El" || p2name = "Superman"
trigger2 = p2name = "Super Girl" || p2name = "Power Girl"
 ;fogo
[State -1, Hyper1]
type = ChangeState
value = 1403
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && command = "qcb_2k"
trigger1 = p2name = "Iceman" || p2name = "Ajax" || p2name = "Ice" || p2name = "Martian Manhunter"

   ;emp
[State -1, Hyper1]
type = ChangeState
value = 1402
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && command = "qcb_2k"
trigger1 = p2name = "War Machine" || p2name = "Lex Luthor" || p2name = "Ironman" || p2name = "Sentinel" || p2name = "Dr. Doom" || p2name = "Ironman DCvsM" || p2name = "Marvel vs. Capcom's WarMachine"
trigger2 = p2name = "WarMachine" || p2name = "Dr doom" || p2name = "DrDoom"
trigger3 = p2name = "Vision" || p2name = "Batman Beyond" || p2name = "Cyborg Superman"
trigger4 = p2name = "Cyborg" || p2name = "Steel" || p2name = "Forge"
trigger5 = p2name = "Red Tornado" || p2name = "Songbird"
 ;sonic
[State -1, Hyper1]
type = ChangeState
value = 1404
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && command = "qcb_2k"
trigger1 = p2name = "Carnage" || p2name = "Venom" || p2name = "Daredevil"
trigger2 = p2name = "Symbiote Spider-Man" || p2name = "Wolvenom" || p2name = "Agony"
trigger3 = p2name = "venomscorp"

 ;gelo
[State -1, Hyper1]
type = ChangeState
value = 1405
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && command = "qcb_2k"
trigger1 = p2name = "Homem Borracha" || p2name = "Plastic Man" || p2name = "Omega Red" || p2name = "Human Torch"
trigger2 = p2name = "Mr. Fantastic" || p2name = "Fire" || p2name = "Sunfire" || p2name = "ElongatedMan"
 ;boomerang
[State -1, Hyper1]
type = ChangeState
value = 11000;1406
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && command = "qcb_2k"
trigger1 = p2name = "Flash" || p2name = "Boomerang" || p2name = "Black Cat"
trigger2 = p2name = "Gambit" || p2name = "Spider-Man 2099" || p2name = "Spiderman"
trigger3 = p2name = "Nightcrawler" || p2name = "The Beast" || p2name = "Beast"
trigger4 = p2name = "Psylocke" || p2name = "Quicksilver" || p2name = "SJA Flash"
trigger5 = p2name = "Elektra" || p2name = "Psylocke_EOH" || p2name = "JSA Flash"
trigger6 = p2name = "Robin Tim Drake" || p2name = "Batman" || p2name = "Nightwing"
trigger7 = p2name = "Robin" || p2name = "Ten"

[State -1, Hyper1]
type = ChangeState
value = 1407
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && command = "qcb_2k"
trigger1 = p2name = "Bizarro"

[State -1, Hyper1];energy pulse
type = ChangeState
value = 1408
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && command = "qcb_2k"
trigger1 = p2name = "Bishop" || p2name = "Strong Guy" || p2name = "Miss Marvel"
trigger2 = p2name = "Parasite" || p2name = "Wonderman" || p2name = "Sentry"
trigger3 = p2name = "Silver Surfer" || p2name = "Captain Marvel" || p2name = "Captain Marvell"

[State -1, Hyper1];net
type = ChangeState
value = 1409
triggerall = power >= 1000  ;&& p2stateno != 14090
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && command = "qcb_2k"
trigger1 = p2name = "Angel" || p2name = "Hawkman" || p2name = "Hawkgirl"
trigger2 = p2name = "Hobgoblin" || p2name = "Vulture" || p2name = "Green Goblin"
trigger3 = p2name = "CannonBall" || p2name = "Storm" || p2name = "Banshee"


[State -1, Hyper1];new atom
type = ChangeState
value = 1410
triggerall = power >= 1000  && numhelper(14101) = 0 && numhelper(14100) = 0 && numhelper(14102) = 0
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && command = "qcb_2k"
trigger1 = p2name = "Darkseid" || p2name = "Mongul DCvsM" || p2name = "Thanoseid"
trigger2 = p2name = "Thanos" || p2name = "Apocalypse" || p2name = "Galactus"
trigger3 = p2name = "Engine Of Destruction" || p2name = "Symbiote Onslaught"
trigger4 = p2name = "Onslaught" || p2name = "Dr. Doomsday" || p2name = "Dr. Strangefate"
trigger5 = p2name = "Doomsday"



;default
; Hyper1  boxe
[State -1, Hyper1]
type = ChangeState
value = 1400
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcb_2k"
;---------------------------------------------------------------------------
; flecha
[State -1, Special1]
type = ChangeState
value = 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcf_y"


; flecha pulando
[State -1, Special1]
type = ChangeState
value = 1115
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && prevstateno != 50 && prevstateno != 1115
trigger1 = command = "qcf_z"  || command = "qcf_y" || command = "qcf_x"

; flecha pulando
[State -1, Special1]
type = ChangeState
value = 1116
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && prevstateno != 50 && prevstateno != 1115
trigger1 = command = "qcf_c"

; flecha pulando
[State -1, Special1]
type = ChangeState
value = 1117
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && prevstateno != 50 && prevstateno != 1115
trigger1 = command = "qcf_b"

; flecha pulando
[State -1, Special1]
type = ChangeState
value = 1118
triggerall = p2stateno != 907
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && prevstateno != 50 && prevstateno != 1115
trigger1 = command = "qcf_a"

; flecha alta
[State -1, Special1]
type = ChangeState
value = 1001
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcf_z"

; flecha baixa
[State -1, Special1]
type = ChangeState
value = 1002
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcf_x"

;  flecha cima longe
[State -1, Special1]
type = ChangeState
value = 1010
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcb_z"

;  flecha cima medio
[State -1, Special1]
type = ChangeState
value = 1011
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcb_y"

;  flecha cima perto
[State -1, Special1]
type = ChangeState
value = 1012
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcb_x"

; flecha bomba
[State -1, Special1]
type = ChangeState
value = 1200
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcf_c"

; flecha eletrica
[State -1, Special1]
type = ChangeState
value = 1210
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcf_b"

; flecha fumaça
[State -1, Special1]
type = ChangeState
value = 1220
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = p2stateno != 907
trigger1 = command = "qcf_a"

;gancho  medio
[State -1, Special1]
type = ChangeState
value = 1301
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcb_b"

;gancho     forte
[State -1, Special1]
type = ChangeState
value = 1300
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcb_c"

;gancho  fraco
[State -1, Special1]
type = ChangeState
value = 1302
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcb_a"
;---------------------------------------------------------------------------
; Standing Push Block (AKA advancing guard)
;[State -1, SPushBlock]
;type = ChangeState
;value = 750
;triggerall = command = "pushblock" && StateType = S && !Var(59)
;trigger1 = StateNo = 130
;trigger2 = StateNo = [150, 151]
;
;;---------------------------------------------------------------------------
;; Crouching Push Block
;[State -1, CPushBlock]
;type = ChangeState
;value = 752
;triggerall = command = "pushblock" && StateType = C && !Var(59)
;trigger1 = StateNo = 131
;trigger2 = StateNo = [152, 153]
;
;;---------------------------------------------------------------------------
;; Air Push Block
;[State -1, APushBlock]
;type = ChangeState
;value = 754
;triggerall = command = "pushblock" && StateType = A && !Var(59)
;trigger1 = StateNo = 132
;trigger2 = StateNo = [154, 155]


;---------------------------------------------------------------------------
;Fwd Dash
[State -1, FwdDash]
type = ChangeState
value = 100
triggerall = command != "holdback" && !Var(59)
triggerall = statetype = S ;|| statetype = A
triggerall = ctrl = 1
trigger1 = command = "FF"
trigger2 = command = "3P"

;---------------------------------------------------------------------------
;Back Dash
[State -1, BackDash]
type = ChangeState
value = 105
triggerall = statetype = S && !Var(59)
triggerall = ctrl = 1
trigger1 = command = "BB"
trigger2 = command = "holdback"
trigger2 = command = "3P"

;---------------------------------------------------------------------------
; Superjump
[State -1, Superjump]
type = ChangeState
value = 700
triggerall = (StateType != A) && (Var(0) = 0) && !Var(59)
trigger1 = (command = "DU") && (Ctrl)
trigger2 = (command = "3K") && (Ctrl)
trigger3 = stateno = 420 && movehit && command="holdup"

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = statetype = S && !Var(59)
triggerall = ctrl = 1
trigger1 = command = "start"


;---------------------------------------------------------------------------
; Throws
;
; (none yet)
;---------------------------------------------------------------------------

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
triggerall = (command = "x") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = (command = "y") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = (StateNo = 200) && (movecontact > 0)

;---------------------------------------------------------------------------
[State -1, Stand Hard Punch]
type = ChangeState
value = 800
triggerall =  (p2bodydist x <= 25) && (p2bodydist y <= 10)
triggerall = (command = "z") && (command = "holdfwd") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = (command = "z") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 250) ||(stateno = 230) || (stateno = 240) || (stateno = 200) || (stateno = 210)) && (movecontact > 0)

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = (command = "a") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1
trigger2 = (StateNo = 200) && (movecontact > 0)

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = (command = "b") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 230)|| (stateno = 200)|| (stateno = 210)) && (movecontact > 0)

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = (command = "c") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 200)|| (stateno = 210)|| (stateno = 230) || (stateno = 240)) && (movecontact > 0)

;---------------------------------------------------------------------------
; Crouching basics
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = (command = "x") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = (command = "y") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = (stateno = 400) && (movecontact > 0)

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = (command = "z") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 400) || (stateno = 410)) && (movecontact > 0)

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = (command = "a") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = (command = "b") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = (stateno = 430) && (movecontact > 0)

;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = (command = "c") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 430) || (stateno = 440)) && (movecontact > 0)

;---------------------------------------------------------------------------
; Air basics
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = (command = "x") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1
trigger2 = stateno = 651
trigger3 = ((stateno = 1300) || (stateno = 1301)) && (movecontact > 0)

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = (command = "y") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 600) || (stateno = 630)) && (movecontact > 0)
trigger3 = stateno = 651
trigger4 = ((stateno = 1300) || (stateno = 1301)) && (movecontact > 0)

;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = (command = "z") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 600) || (stateno = 610) || (stateno = 630) || (stateno = 640)) && (movecontact > 0)
trigger3 = stateno = 651
trigger4 = ((stateno = 1300) || (stateno = 1301)) && (movecontact > 0)
;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = (command = "a") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1
trigger2 = ((stateno = 1300) || (stateno = 1301)) && (movecontact > 0)

; (chain combos)
trigger2 = (stateno = 600) && (movecontact > 0)
trigger3 = stateno = 651
trigger4 = ((stateno = 1300) || (stateno = 1301)) && (movecontact > 0)

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = (command = "b") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 600) || (stateno = 610) || (stateno = 630)) && (movecontact > 0)
trigger3 = stateno = 651
trigger4 = ((stateno = 1300) || (stateno = 1301)) && (movecontact > 0)
;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = (command = "c") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 600) || (stateno = 610) || (stateno = 620) || (stateno = 630) || (stateno = 640)) && (movecontact > 0)
trigger3 = ((stateno = 1300) || (stateno = 1301)) && (movecontact > 0)
;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------


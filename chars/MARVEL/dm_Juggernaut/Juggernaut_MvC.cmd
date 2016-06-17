;===========================================================================
;Super Marvel vs. Capcom - Eternity of Heroes - Commands Template V.5
;by Acey
;===========================================================================

;---------------------------------------------------------------------------
;Hyper1

[Command]
name = "Hyper2"
command = ~D, DF, F, D, DF, F, x
time = 40
[Command]
name = "Hyper2"
command = ~D, DF, F, D, DF, F, y
time = 40
[Command]
name = "Hyper2"
command = ~D, DF, F, D, DF, F, z
time = 40
[Command]
name = "Hyper2MAX"
command = ~D, DF, F, D, DF, F, x+y
time = 40
[Command]
name = "Hyper2MAX"
command = ~D, DF, F, D, DF, F, y+z
time = 40
[Command]
name = "Hyper2MAX"
command = ~D, DF, F, D, DF, F, z+x
time = 40
[Command]
name = "Hypercyt"
command = ~D, DB, B, D, DB, B, x
time = 40
[Command]
name = "Hypercyt"
command = ~D, DB, B, D, DB, B, y
time = 40
[Command]
name = "Hypercyt"
command = ~D, DB, B, D, DB, B, z
time = 40
[Command]
name = "Hyper4"
command = ~D, DB, B, D, DB, B, a
time = 40
[Command]
name = "Hyper4"
command = ~D, DB, B, D, DB, B, b
time = 40
[Command]
name = "Hyper4"
command = ~D, DB, B, D, DB, B, c
time = 40
;---------------------------------------------------------------------------
;Hyper2

[Command]
name = "Hyper3"
command = ~D, DB, B, a+b

[Command]
name = "Hyper3"
command = ~D, DB, B, a+c

[Command]
name = "Hyper3"
command = ~D, DB, B, b+c

;---------------------------------------------------------------------------
;Specail1 - Juggernaut Punch

[Command]
name = "SpecialX"
command = ~B,DB,D,DF,F, x
time = 40

name = "SpecialX"
command = ~B,D,F, x
time = 15

[Command]
name = "SpecialY"
command = ~B,DB,D,DF,F, y
time = 40

name = "SpecialY"
command = ~B,D,F, y
time = 15

[Command]
name = "SpecialZ"
command = ~B,DB,D,DF,F, z
time = 40

name = "SpecialZ"
command = ~B,D,F, z
time = 15


;special throw
;[Command]
;name = "sthrow"
;command = ~D,DB,B, x

;[Command]
;name = "sthrow"
;command = ~D,DB,B, y

;[Command]
;name = "sthrow"
;command = ~D,DB,B, z

;-------------------------------------------------------------------------
;Special2 - Earth Quake

[Command]
name = "SpecialA"
command = ~F,DF,D,DB,B,x
time = 40

[Command]
name = "SpecialA"
command = ~F,D,B,x
time = 15

[Command]
name = "SpecialB"
command = ~F,DF,D,DB,B,y
time = 40

[Command]
name = "SpecialB"
command = ~F,D,B,y
time = 15

[Command]
name = "SpecialC"
command = ~F,DF,D,DB,B,z
time = 40

[Command]
name = "SpecialC"
command = ~F,D,B,z
time = 15

;-------------------------------------------------------------------------
;Special3 - Body Slam

[Command]
name = "BodySlamA"
command = ~B,DB,D,DF,F, a
time = 40

[Command]
name = "BodySlamA"
command = ~B,D,F, a
time = 15

[Command]
name = "BodySlamB"
command = ~B,DB,D,DF,F, b
time = 40

[Command]
name = "BodySlamB"
command = ~B,D,F, b
time = 15

[Command]
name = "BodySlamC"
command = ~B,DB,D,DF,F, c
time = 40

[Command]
name = "BodySlamC"
command = ~B,D,F, c
time = 15
;-------------------------------------------------------------------------
;Counter

[Command]
name = "Counter"
command = ~F, x+a

[Command]
name = "Counter"
command = ~F, y+b

[Command]
name = "Counter"
command = ~F, z+c

[Command]
name = "236Z"
command = z+y+x

;---------------------------------------------------------------------------
; Forward Recovery Roll or Alpha Counter1

;[Command]
;name = "ac_f_roll_n"
;command = ~B, DB, D, x
;
;[Command]
;name = "ac_f_roll_m"
;command = ~B, DB, D, y
;
;[Command]
;name = "ac_f_roll_f"
;command = ~B, DB, D, z

;---------------------------------------------------------------------------
; Forward Recovery Roll or Alpha Counter1

;[Command]
;name = "ac_sonic_f_roll_n"
;command = ~B, DB, D, x
;
;[Command]
;name = "ac_sonic_f_roll_m"
;command = ~B, DB, D, y
;
;[Command]
;name = "ac_sonic_f_roll_f"
;command = ~B, DB, D, z
;
;;---------------------------------------------------------------------------
;; Backward Recovery Roll or Alpha Counter2
;
;[Command]
;name = "ac_sweep_b_roll_n"
;command = ~B, DB, D, a
;
;[Command]
;name = "ac_sweep_b_roll_m"
;command = ~B, DB, D, b
;
;[Command]
;name = "ac_sweep_b_roll_f"
;command = ~B, DB, D, c

;---------------------------------------------------------------------------------------------
;Super Jump

[Command]
name = "Super_Jump"
command = ~D, U

;---------------------------------------------------------------------------------------------
;Double_Tap
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;---------------------------------------------------------------------------------------------
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

[Command]
name = "throw_p"
command = x+y
time = 5

[Command]
name = "throw_p"
command = y+z
time = 5

[Command]
name = "throw_p"
command = x+z
time = 5

[Command]
name = "throw_k"
command = a+b
time = 5

[Command]
name = "throw_k"
command = b+c
time = 5

[Command]
name = "throw_k"
command = a+c
time = 5



;---------------------------------------------------------------------------------------------
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

;---------------------------------------------------------------------------------------------
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

;---------------------------------------------------------------------------------------------
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

[Command]
name = "pc1"
command = b+y

[Command]
name = "ki"
command = /b+y

;---------------------------------------------------------------------------------------------
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

;---------------------------------------------------------------------------
;Artificial Intelligence
;---------------------------------------------------------------------------

[Statedef -1]
;-|-AI-|--------------------------------------------------------------------
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
;---------------------------------------------------------------------------
;-----------------------------
; AI
;--|-AI Defense-|-----------------------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 130

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 131

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 132

;-|-AI Combo Attempt-|----------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype != A) && (statetype = S)
trigger1 = (p2bodydist X <= 70) && (random <= 300)
value = 220

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype != A) && (statetype = S)
trigger1 = (p2bodydist X <= 70) && (random <= 300)
value = 250

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype != A) && (statetype = S)
trigger1 = (p2bodydist X <= 70) && (random <= 150)
value = 200

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype != A) && (statetype = S)
trigger1 = (p2bodydist X <= 70) && (random <= 250)
value = 210

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype != A) && (statetype = S)
trigger1 = (p2bodydist X <= 75) && (random <= 150)
value = 230

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype != A) && (statetype = S)
trigger1 = (p2bodydist X <= 75) && (random <= 250)
value = 240

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype != A) && (statetype = C)
trigger1 = (p2bodydist X <= 75) && (random <= 450)
value = 400

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype != A) && (statetype = C)
trigger1 = (p2bodydist X <= 75) && (random <= 450)
value = 410

[State -1] ;Launcher
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype != A)
triggerall = stateno != 420 && (p2movetype != A)
trigger1 = (p2bodydist X <= 45) && (random <= 450)
trigger1 = prevstateno != 420
value = 420

[State -1] ;Superjump from launcher
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 420) && (movehit = 1) && (random <= 450)
value = 7000

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype != A) && (statetype = C)
trigger1 = (p2bodydist X <= 75) && (random <= 450)
value = 430

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype != A) && (statetype = C)
trigger1 = (p2bodydist X <= 75) && (random <= 450)
value = 440

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype != A) && (statetype = A)
trigger1 = (p2bodydist X <= 75) && (random <= 450)
value = 600

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype != A) && (statetype = A)
trigger1 = (p2bodydist X <= 75) && (random <= 450)
value = 610

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype != A) && (statetype = A)
trigger1 = (p2bodydist X <= 75) && (random <= 450)
value = 630

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype != A) && (statetype = A)
trigger1 = (p2bodydist X <= 75) && (random <= 450)
value = 640

;-|-AI Special Attempt-|----------------------------------------------

[State -1];Ground Punch
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [140,151])
trigger1 = (p2bodydist x >= 80) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1020

[State -1];Eye Beam
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [70,95]) && (numhelper(1121) = 0)
trigger1 = (p2bodydist x >= 80) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1100

[State -1];Air Beam
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [100,153])
trigger1 = (p2bodydist x >= 155) && (prevstateno != 5120) && (p2movetype != H)
value = 1220

;[State -1];Shoryuken when the opponent is jumping close
;type = ChangeState
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (Ctrl) && (Statetype = S) && (random = [100,154])
;trigger1 = (p2bodydist x <= 70) && (prevstateno != 5120) &&  (statetype != A)
;value = 1300


;-|-AI Hyper Attempt-|---------------------------------------------
;[State -1];Beam
;type = ChangeState
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (Ctrl=1) && (Statetype = S) && (p2statetype != L)
;triggerall = stateno < 3000 ;Add to avoid chaining hypes
;trigger1 = (p2bodydist x >= 150) && (statetype != A) ;&& (p2bodydist x >= 150) ;Remove this portion to make this hyper happen more often instead of only when far away from opponent
;trigger1 = (power >= 1000) && (random <= 150)
;value = 3000

[State -1];Purple
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl=1) && (Statetype = S) && (p2statetype != L)
triggerall = stateno < 3000 ;Add to avoid chaining hypes
trigger1 = (p2bodydist x <= 100) && (prevstateno != 5120) && (statetype != A)
trigger1 = (power >= 1000) && (random <= 200)
value = 3100

[State -1];Purple   comet
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl=1) && (Statetype = S) && (p2statetype != L)
triggerall = stateno < 3000 ;Add to avoid chaining hypes
trigger1 = (p2bodydist x >= 150) && (prevstateno != 5120) && (statetype != A)
trigger1 = (power >= 1000) && (random <= 200)
value = 3300

[State -1];Purple   comet
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl=1) && (Statetype = S) && (p2statetype != L)
triggerall = stateno < 3000 ;Add to avoid chaining hypes
trigger1 = (p2bodydist x >= 200) && (prevstateno != 5120) && (statetype != A)
trigger1 = (power >= 1000) && (random <= 200)
value = 3900























; comandos do char
[State -1, Dash Forward]
type = ChangeState
value = 100
triggerall = StateType = S  && (var(59) = 0)
triggerall = (Ctrl) && (StateNo != 100)
trigger1 = Command = "FF"

;-----------------------------

[State -1, Jump Back]
type = ChangeState
value = 105
triggerall = StateType = S  && (var(59) = 0)
triggerall = (Ctrl) && (StateNo != 100)
trigger1 = Command = "BB"

;------------------------------
[State -1, Back Side Step]
type = ChangeState
value = 718
trigger1 = !AIlevel
trigger1 = ctrl && (command = "x" && command = "a" && command = "holdback") && statetype != A
;---------------------------------------------------------------------------
[State -1, Forward Side Step]
type = ChangeState
value = 719
trigger1 = !AIlevel
trigger1 = ctrl && (command = "x" && command = "a" && command = "holdfwd") && statetype != A
;-----------------------------

[State -1, Hyper2]
type = ChangeState
value = 3100
triggerall = command = "Hyper2"  && (var(59) = 0)
triggerall = power >= 1000
triggerall = stateno != [3000,3999]
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Hyper2]
type = ChangeState
value = 3900
triggerall = command = "Hypercyt"  && (var(59) = 0)
triggerall = power >= 1000  && var(14) != 1
triggerall = stateno != [3000,3999]
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Hyper2]
type = ChangeState
value = 3300
triggerall = enemynear, name != "helibonus"
triggerall = command = "Hyper4"  && (var(59) = 0)
triggerall = power >= 1000
triggerall = stateno != [3000,3999]
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;[State -1, Hyper2]
;type = ChangeState
;value = 3300
;triggerall = command = "Hyper3"
;triggerall = power >= 1000
;triggerall = stateno != [3000,3999]
;trigger1 = Statetype != A && ctrl
;trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

;[State -1, Hyper1]
;type = ChangeState
;value = 3000
;triggerall = enemynear, name != "helibonus"
;triggerall = command = "Hyper1"  && (var(59) = 0)
;triggerall = power >= 1000
;triggerall = stateno != [3000,3999]
;trigger1 = Statetype != A && ctrl
;trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special1]
type = ChangeState
value = 1000
triggerall = enemynear, name != "helibonus"
triggerall = command = "SpecialX" && (var(59) = 0)
triggerall = stateno != [1000,3999]
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special1]
type = ChangeState
value = 1010
triggerall = enemynear, name != "helibonus"
triggerall = command = "SpecialY"  && (var(59) = 0)
triggerall = stateno != [1000,3999]
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special1]
type = ChangeState
value = 1020
triggerall = enemynear, name != "helibonus"
triggerall = command = "SpecialZ"  && (var(59) = 0)
triggerall = stateno != [1000,3999]
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special2]
type = ChangeState
value = 1100
triggerall = enemynear, name != "helibonus"
triggerall = stateno < 3000  && numhelper(1121) = 0  && (var(59) = 0)
triggerall = (command = "SpecialA") || (command = "SpecialB") || (command = "SpecialC")
triggerall = stateno != [1000,3999]
triggerall = numproj = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special3]
type = ChangeState
value = 1200
triggerall = stateno < 3000   && (var(59) = 0)
triggerall = command = "BodySlamA"
triggerall = stateno != [1000,3999]
trigger1 = ctrl
;trigger1 = Statetype != A && ctrl
;trigger1 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special3]
type = ChangeState
value = 1210
triggerall = stateno < 3000  && (var(59) = 0)
triggerall = command = "BodySlamB"
triggerall = stateno != [1000,3999]
trigger1 = ctrl
;trigger1 = Statetype != A && ctrl
;trigger1 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special3]
type = ChangeState
value = 1220
triggerall = stateno < 3000 && (var(59) = 0)
triggerall = command = "BodySlamC"
triggerall = stateno != [1000,3999]
trigger1 = ctrl
;trigger1 = Statetype != A && ctrl
;trigger1 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)


;[State -1, Special3]
;type = ChangeState
;value = 1300
;triggerall = stateno < 3000 && (var(59) = 0)
;triggerall = command = "sthrow"
;triggerall = stateno != [1000,3999]
;trigger1 = Statetype != A && ctrl
;trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)




;---------------------------------------------------------------------------
; Throw 1
[State -1, Throw 1]
type = ChangeState
value = 800
trigger1 = (command = "holdfwd" || command = "holdback") && (command = "throw_p")
trigger1 = !AILevel&&RoundState = 2 && StateType = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Throw 2
[State -1, Throw 2]
type = ChangeState
value = 830
triggerall = enemynear, name != "Prime Sentinels"
trigger1 = command = "throw_k" && (var(59) = 0)
trigger1 = command = "holdfwd" || command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Air Throw
[State -1, Air Throw]
type = ChangeState
value = 860
triggerall = enemynear, name != "Prime Sentinels"
trigger1 = command = "throw_p" || command = "c" && (var(59) = 0)
trigger1 = command = "holdfwd" || command = "holdback"
trigger1 = StateType = A
trigger1 = ctrl
trigger1 = p2BodyDist x < 7
trigger1 = p2StateType = A
trigger1 = p2MoveType != H

;-----------------------------
[State -1, X]
type = ChangeState
value = 600
triggerall = command = "x" && (var(59) = 0)
trigger1 = Statetype = A && ctrl
trigger2 = stateno = 105 && time > 4

;-----------------------------
[State -1, Y]
type = ChangeState
value = 610
triggerall = command = "y" && (var(59) = 0)
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact) && time > 2
trigger3 = stateno = 105 && time > 4

;-----------------------------
[State -1, Z]
type = ChangeState
value = 620
triggerall = command = "z" && (var(59) = 0)
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 610) && (Movecontact) && time > 2 && (prevstateno!=600)
trigger3 = stateno = 105 && time > 4

;-----------------------------
[State -1, B]
type = ChangeState
value = 640
triggerall = command = "b" && (var(59) = 0)
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 630) && (Movecontact)
trigger3 = stateno = 105 && time > 4

;-----------------------------
[State -1, C]
type = ChangeState
value = 650
triggerall = command = "c" && (var(59) = 0)
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 640) && (Movecontact) && (prevstateno!=200)
trigger3 = stateno = 105 && time > 4

;-----------------------------
[State -1, A]
type = ChangeState
value = 630
triggerall = command = "a" && (var(59) = 0)
trigger1 = Statetype = A && ctrl
trigger2 = stateno = 105 && time > 4

;-----------------------------
[State -1, X agachado]
type = ChangeState
value = 400
triggerall = Command = "x" && (var(59) = 0)
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)

;-----------------------------
[State -1, X]
type = ChangeState
value = 200
triggerall = Command = "x"  && (var(59) = 0)
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)

;-----------------------------

[State -1, Y agachado]
type = ChangeState
value = 410
triggerall = Command = "y" && (var(59) = 0)
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 400) && (Movecontact)


;-----------------------------

[State -1, Y]
type = ChangeState
value = IfElse(P2BodyDist X > 70,210,211)
triggerall = Command = "y" && (var(59) = 0)
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact) && time > 3


;-----------------------------

[State -1, Z]
type = ChangeState
value = IfElse(P2BodyDist X > 60,220,221)
triggerall = Command = "z" && (var(59) = 0)
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 210) && (Movecontact) && time > 3 && (prevstateno!=200)
trigger3 = (StateNo = 211) && (Movecontact) && time > 3 && (prevstateno!=200)

 
;-----------------------------

[State -1, C]
type = ChangeState
value = 250
triggerall = Command = "c" && (var(59) = 0)
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 240) && (Movecontact) && (prevstateno!=230)


;-----------------------------

[State -1, Z agachado]
type = ChangeState
value = 420
triggerall = Command = "z" && (var(59) = 0)
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 410) && (Movecontact) && (prevstateno!=400)


;-----------------------------

[State -1, A agachado]
type = ChangeState
value = 430
triggerall = Command = "a"  && (var(59) = 0)
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)


;-----------------------------

[State -1, s]
type = ChangeState
value = 195
triggerall = Command = "s" && (var(59) = 0)
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)

;-----------------------------

[State -1, A]
type = ChangeState
value = 230
triggerall = Command = "a" && (var(59) = 0)
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)


;-----------------------------

[State -1, B]
type = ChangeState
value = 240
triggerall = Command = "b" && (var(59) = 0)
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 230) && (Movecontact)


;-----------------------------

[State -1, B agachado]
type = ChangeState
value = 440
triggerall = Command = "b" && (var(59) = 0)
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 430) && (Movecontact)


;-----------------------------

[State -1, C agachado]
type = ChangeState
value = 450
triggerall = Command = "c" && (var(59) = 0)
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 440) && (Movecontact) && (prevstateno!=430)

;-----------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = Command = "SJ" && (var(59) = 0)
trigger1 = StateType != A
trigger1 = ctrl
trigger2 = Command = "holdup" && (StateNo = 100)

;-----------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = Command = "holdup" && (var(59) = 0)
trigger1 = stateno = 420 && movehit

;[State -1, Guard Push stand]
;type = ChangeState
;value = 6300
;triggerall = command = "guardpush" && statetype = S
;trigger1 = stateno = [150,153]
;
;[State -1, Guard Push crouch]
;type = ChangeState
;value = 6310
;triggerall = command = "guardpush" && statetype = C
;trigger1 = stateno = [150,153]
;
;[State -1, Guard Push aerial]
;type = ChangeState
;value = 6320
;triggerall = command = "guardpush" && statetype = A
;trigger1 = stateno = [154,155]

;------------------------------------
;AI Guard Push (Standing)
;------------------------------------
;[State -1, AI Guard Push]
;type = ChangeState
;value = 6300
;triggerall = Var(59) = 1
;triggerall = (StateType = S) && (StateType != L)
;triggerall = P2life != 0
;trigger1 = StateNo = [150,153]
;trigger1 = P2BodyDist X >= 71
;trigger1 = Time >= 5

;---------------------------------------------------------------------------
;------------------------ Lie Down Recovery Roll ---------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Lie Down Forward Recovery Roll

;[State -1]
;type = ChangeState
;value = 832
;triggerall = Var(59) != 2
;triggerall = command = "holdfwd"
;triggerall = time = 1
;triggerall = life > 0
;trigger1 = stateno = 5120
;trigger1 = alive = 1
;
;;---------------------------------------------------------------------------
;; Lie Down Backward Recovery Roll
;
;[State -1]
;type = ChangeState
;value = 855
;triggerall = Var(59) != 2
;triggerall = command = "holdback"
;triggerall = time = 1
;triggerall = life > 0
;trigger1 = stateno = 5120
;trigger1 = alive = 1

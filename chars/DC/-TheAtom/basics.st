; States file for {character} -- Basics
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: keep track of power level (for levelup sounds)
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; Lose (on timeover)
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,1

[State 170,1]
type = AssertSpecial     
trigger1 = Time = [0,100]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Draw game (on timeover)
[Statedef 175]
type = S
ctrl = 0
anim = 175
velset = 0,0

[State 175,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,2

[State 175,1]
type = AssertSpecial     
trigger1 = Time = [0,100]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Winposes
[Statedef 180]  ; winpose selector
type = S
ctrl = 0
velset = 0,0

[State 180, Indigo Win]
type = ChangeState
trigger1 = enemy,name="Hal Jordan"
trigger2 = enemy,name="John Stewart"
trigger3 = enemy,name="Guy Gardner"
trigger4 = enemy,name="Green Lantern Guy"
trigger5 = enemy,name="sinestro"
trigger6 = enemy,name="Mongul DCvsM"
trigger7 = enemy,name="Mongul"
trigger8 = enemy,name="Lex luthor" && enemy, PalNo = 12
trigger9 = enemy,name="Larfleeze"
trigger10 = enemy,name="Wonder Woman"
trigger11 = enemy,name="Wonder Woman Reloaded"
trigger12 = enemy,name="Carol Ferris"
trigger13 = enemy,name="Atrocitus"
trigger14 = enemy,name="Parasite" && enemy, var(50) = 5
trigger15 = enemy,name="Parasite" && enemy, var(51) = 5
trigger16 = enemy,name="Parasite" && enemy, var(50) = 13
trigger17 = enemy,name="Parasite" && enemy, var(51) = 13
trigger18 = enemy,name="Parasite" && enemy, var(50) = 27
trigger19 = enemy,name="Parasite" && enemy, var(51) = 27
trigger20 = enemy,name="Parasite" && enemy, var(50) = 29
trigger21 = enemy,name="Parasite" && enemy, var(51) = 29
trigger22 = enemy,name="Parasite" && enemy, var(50) = 26
trigger23 = enemy,name="Parasite" && enemy, var(51) = 26
trigger24 = enemy,name="Barry Allen"
trigger25 = enemy,name="Saint Walker"
trigger26 = enemy,name="Superboy Prime"
trigger26 = enemy,name="Acerbus"
trigger27 = enemy,name="Indigo 1"
trigger28 = enemy,name="Parasite" && enemy, var(50) = 28
trigger29 = enemy,name="Parasite" && enemy, var(51) = 28
trigger30 = enemy,name="Blackest Night Hal Jordan"
value = 181

[State 180, Indigo Win 2]
type = ChangeState
trigger1 = enemy,name="Aquaman" && enemy, PalNo =9
trigger2 = enemy,name="firestorm" && enemy, PalNo =9
trigger3 = enemy,name="The Question" && enemy, PalNo =6
trigger4 = enemy,name="Captain Boomerang" && enemy, PalNo =6
trigger5 = enemy,name="Green Arrow" && enemy, PalNo =6
trigger6 = enemy,name="superboy" && enemy, PalNo =6
trigger7 = enemy,name="Superman" && enemy, PalNo =6
trigger8 = enemy,name="batman" && enemy, PalNo =6
trigger9 = enemy,name="Azrael" && enemy, PalNo =6
trigger10 = enemy,name="ice" && enemy, PalNo =6
trigger11 = enemy,name="Tomar Tu"
trigger12 = enemy,name="Kilowog"
trigger13 = enemy,name="Kyle Rayner"
trigger14 = enemy,name="Alan Scott"
trigger15 = enemy,name="Scarecrow"
trigger16 = enemy,name="Martian Manhunter" && enemy, PalNo =6
trigger17 = enemy,name="Hawkman" && enemy, PalNo =6
trigger18 = enemy,name="HawkGirl" && enemy, PalNo =6
trigger19 = enemy,name="Hawk" && enemy, PalNo =6
trigger20 = enemy,name="Jason Todd" && enemy, PalNo =6
trigger21 = enemy,name="Batgirl" && enemy, PalNo =6
trigger22 = enemy,name="Starfire" && enemy, PalNo =8
trigger23 = enemy,name="Dexstarr"
trigger22 = enemy,name="animalman" && enemy, PalNo = 12
value = 181

[State 180,Winpose decider]
type = ChangeState
trigger1 = Time = 1
value = 182 + ((Random * 2) / 1000)

;-----------------------
;-----------------------
; Winpose #2 - indigo
[Statedef 181]
type = S
ctrl = 0
anim = 1812
velset = 0,0

[State 100, win]
type = PlaySnd
trigger1 = AnimElem = 7
value = 300,4

[State 191, effect]
type = Explod
trigger1 = AnimElem = 3
anim = 1813
ID = 2306
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 1
ontop = 0

[State 191, RemoveExplod]
type = RemoveExplod
trigger1 = time = 37
id = 2306

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,275]
flag = RoundNotOver

;-------------------------


; Winpose #1 - shrink
[Statedef 183]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181, AfterImage]
type = AfterImage
trigger1  = time = 42
time = 33
length = 20
FrameGap = 5
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 181, shift]
type = PlaySnd
trigger1 = Time = 39
value = 31,0

[State 100, win]
type = PlaySnd
trigger1 = Time = 0
value = 200,1

[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,250]
flag = RoundNotOver

;-----------------------
; Winpose #3 - stand
[Statedef 182]
type = S
ctrl = 0
anim = 814
velset = 0,0

[State 100, win]
type = PlaySnd
trigger1 = Time = 0
value = 200,2 + ((Random * 3) / 1000)

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,250]
flag = RoundNotOver

;-----------------------

;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
velset = 0,0
;----------------
;----partner

[State 190, vs death]
type = ChangeState
triggerall = numpartner > 0
trigger1 = P3Name= "Hal jordan" && partner, PalNo = 12 || P2Name = "Hal jordan" && partner, PalNo = 12
trigger2 = P3Name= "Blackest Night Hal Jordan" && partner, PalNo = 12 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo = 12
trigger3 = P3Name= "Aquaman" && partner, PalNo = 9 || P2Name = "Aquaman" && partner, PalNo = 9
trigger4 = P3Name= "firestorm" && partner, PalNo = 9 || P2Name = "firestorm" && partner, PalNo = 9

trigger5 = P3Name= "The Question" && partner, PalNo =6       || P2Name= "The Question" && partner, PalNo =6
trigger6 = P3Name= "Captain Boomerang" && partner, PalNo =6  || P2Name= "Captain Boomerang" && partner, PalNo =6
trigger7 = P3Name= "Green Arrow" && partner, PalNo =6         || P2Name= "Green Arrow" && partner, PalNo =6
trigger8 = P3Name= "superboy" && partner, PalNo =6           || P2Name= "superboy" && partner, PalNo =6
trigger9 = P3Name= "Superman" && partner, PalNo =6           || P2Name= "Superman" && partner, PalNo =6
trigger10 = P3Name= "batman" && partner, PalNo =6            || P2Name= "batman" && partner, PalNo =6
trigger11 = P3Name= "Azrael" && partner, PalNo =6            || P2Name= "Azrael" && partner, PalNo =6
trigger12 = P3Name= "ice" && partner, PalNo =6               || P2Name= "ice" && partner, PalNo =6
trigger13 = P3Name= "Martian Manhunter" && partner, PalNo =6 || P2Name= "Martian Manhunter" && partner, PalNo =6
trigger14 = P3Name= "Hawkman" && partner, PalNo =6           || P2Name= "Hawkman" && partner, PalNo =6
trigger15 = P3Name= "HawkGirl" && partner, PalNo =6          || P2Name= "HawkGirl" && partner, PalNo =6
trigger16 = P3Name= "Hawk" && partner, PalNo =6              || P2Name= "Hawk" && partner, PalNo =6
trigger17 = P3Name= "Jason Todd" && partner, PalNo =6        || P2Name= "Jason Todd" && partner, PalNo =6
value = 666999


[State 190, vs compassion]
type = ChangeState
triggerall = numpartner > 0
trigger1 = P3Name= "Hal jordan" && partner, PalNo = 11 || P2Name = "Hal jordan" && partner, PalNo = 11
trigger2 = P3Name= "Parasite" && partner, var(50) = 28 || P2Name = "Parasite" && partner, var(50) = 28
trigger3 = P3Name= "Parasite" && partner, var(51) = 28 || P2Name = "Parasite" && partner, var(51) = 28
trigger4 = P3Name= "Blackest Night Hal Jordan" && partner, PalNo = 11 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo = 11
value = 9192


[State 190, vs Hope]
type = ChangeState
triggerall = numpartner > 0
trigger1 = P3Name= "Hal jordan" && partner, PalNo = 10 || P2Name = "Hal jordan" && partner, PalNo = 10
trigger2 = P3Name= "Blackest Night Hal Jordan" && partner, PalNo = 10 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo = 10
trigger3 = P3Name= "Starfire" && partner, PalNo = 8 || P2Name = "Starfire" && partner, PalNo = 8
value = 9193

[State 190, vs Fear]
type = ChangeState
triggerall = numpartner > 0
trigger1 = P3Name= "Hal jordan" && partner, PalNo = 9 || P2Name = "Hal jordan" && partner, PalNo = 9
trigger2 = P3Name= "Parasite" && partner, var(50) = 13 || P2Name = "Parasite" && partner, var(50) = 13
trigger3 = P3Name= "Parasite" && partner, var(51) = 13 || P2Name = "Parasite" && partner, var(51) = 13
trigger4 = P3Name= "Blackest Night Hal Jordan" && partner, PalNo = 9 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo = 9
value = 197

;Greed
[State 190, vs greed]
type = ChangeState
triggerall = numpartner > 0
trigger1 = P3Name= "Hal jordan" && partner, PalNo = 8 || P2Name = "Hal jordan" && partner, PalNo = 8
trigger2 = P3Name= "Parasite" && partner, var(50) = 27 || P2Name = "Parasite" && partner, var(50) = 27
trigger3 = P3Name= "Parasite" && partner, var(51) = 27 || P2Name = "Parasite" && partner, var(51) = 27
trigger4 = P3Name= "Blackest Night Hal Jordan" && partner, PalNo = 8 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo = 8
trigger5 = P3Name= "Lex luthor" && partner, PalNo = 12 || P2Name = "Lex luthor" && partner, PalNo = 12
value = 198

; Love
[State 190, vs love]
type = ChangeState
triggerall = numpartner > 0
trigger1 = P3Name= "Parasite" && partner, var(50) = 29 || P2Name = "Parasite" && partner, var(50) = 29
trigger2 = P3Name= "Parasite" && partner, var(51) = 29 || P2Name = "Parasite" && partner, var(51) = 29
trigger3 = P3Name= "batgirl" && partner, PalNo = 6 || P2Name = "batgirl" && partner, PalNo = 6
value = 199

; Rage
[State 190, vs rage]
type = ChangeState
triggerall = numpartner > 0
trigger1 = P3Name= "Hal jordan" && partner, PalNo = 7 || P2Name = "Hal jordan" && partner, PalNo = 7
trigger2 = P3Name= "Parasite" && partner, var(50) = 26 || P2Name = "Parasite" && partner, var(50) = 26
trigger3 = P3Name= "Parasite" && partner, var(51) = 26 || P2Name = "Parasite" && partner, var(51) = 26
trigger4 = P3Name= "Blackest Night Hal Jordan" && partner, PalNo = 7 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo = 7
trigger5 = P3Name= "Guy Gardner" && partner, PalNo = 2 || P2Name = "Guy Gardner" && partner, PalNo = 2
trigger6 = P3Name= "Green Lantern Guy" && partner, PalNo = 2 || P2Name = "Green Lantern Guy" && partner, PalNo = 2
trigger7 = P2Name= "Dexstarr" || p4name = "Dexstarr" || p3name = "Dexstarr"
value = 9190

; vs hal, john
[State 190, vs Will]
type = ChangeState
triggerall = numpartner > 0
trigger1 = P3Name= "Parasite" && partner, var(50) = 5 || P2Name = "Parasite" && partner, var(50) = 5
trigger2 = P3Name= "Parasite" && partner, var(51) = 5 || P2Name = "Parasite" && partner, var(51) = 5
trigger3 = P3Name= "Green Lantern Guy" && partner, PalNo != 2 || P2Name = "Green Lantern Guy" && partner, PalNo != 2
value = 196

;--------------------
;-----;1p

;Death
[State 190, vs Death]
type = ChangeState
trigger1 = P2Name= "Hal jordan" && enemy, PalNo = 12 || P4Name= "Hal jordan" && enemy, PalNo = 12 || P3Name= "Hal jordan" && enemy, PalNo = 12
trigger2 = P2Name= "Blackest Night Hal Jordan" && enemy, PalNo = 12 || P4Name= "Blackest Night Hal Jordan" && enemy, PalNo = 12 || P3Name= "Blackest Night Hal Jordan" && enemy, PalNo = 12
trigger3 = P2Name= "aquaman" && enemy, PalNo = 9 || P4Name= "aquaman" && enemy, PalNo = 9 || P3Name= "aquaman" && enemy, PalNo = 9
trigger4 = P2Name= "firestorm" && enemy, PalNo = 9 || P4Name= "firestorm" && enemy, PalNo = 9 || P3Name= "firestorm" && enemy, PalNo = 9

trigger5 = P2Name= "The Question" && enemy, PalNo =6       || P3Name= "The Question" && enemy, PalNo =6        || P4Name= "The Question" && enemy, PalNo =6
trigger6 = P2Name= "Captain Boomerang" && enemy, PalNo =6  || P3Name= "Captain Boomerang" && enemy, PalNo =6   || P4Name= "Captain Boomerang" && enemy, PalNo =6
trigger7 = P2Name= "Green Arrow" && enemy, PalNo =6        || P3Name= "Green Arrow" && enemy, PalNo =6         || P4Name= "Green Arrow" && enemy, PalNo =6
trigger8 = P2Name= "superboy" && enemy, PalNo =6           || P3Name= "superboy" && enemy, PalNo =6            || P4Name= "superboy" && enemy, PalNo =6
trigger9 = P2Name= "Superman" && enemy, PalNo =6           || P3Name= "Superman" && enemy, PalNo =6            || P4Name= "Superman" && enemy, PalNo =6
trigger10 = P2Name= "batman" && enemy, PalNo =6            || P3Name= "batman" && enemy, PalNo =6              || P4Name= "batman" && enemy, PalNo =6
trigger11 = P2Name= "Azrael" && enemy, PalNo =6            || P3Name= "Azrael" && enemy, PalNo =6              || P4Name= "Azrael" && enemy, PalNo =6
trigger12 = P2Name= "ice" && enemy, PalNo =6               || P3Name= "ice" && enemy, PalNo =6                 || P4Name= "ice" && enemy, PalNo =6
trigger13 = P2Name= "Martian Manhunter" && enemy, PalNo =6 || P3Name= "Martian Manhunter" && enemy, PalNo =6   || P4Name= "Martian Manhunter" && enemy, PalNo =6
trigger14 = P2Name= "Hawkman" && enemy, PalNo =6           || P3Name= "Hawkman" && enemy, PalNo =6             || P4Name= "Hawkman" && enemy, PalNo =6
trigger15 = P2Name= "HawkGirl" && enemy, PalNo =6          || P3Name= "HawkGirl" && enemy, PalNo =6            || P4Name= "HawkGirl" && enemy, PalNo =6
trigger16 = P2Name= "Hawk" && enemy, PalNo =6              || P3Name= "Hawk" && enemy, PalNo =6                || P4Name= "Hawk" && enemy, PalNo =6
trigger17 = P2Name= "Jason Todd" && enemy, PalNo =6        || P3Name= "Jason Todd" && enemy, PalNo =6          || P4Name= "Jason Todd" && enemy, PalNo =6
trigger18 = P2Name= "animalman" && enemy, PalNo = 12        || P4Name= "animalman" && enemy, PalNo = 12         || P3Name= "animalman" && enemy, PalNo = 12
value = 666999

;compassion
[State 190, vs compassion]
type = ChangeState
trigger1 = P2Name= "Hal jordan" && enemy, PalNo = 11 || P4Name= "Hal jordan" && enemy, PalNo = 11 || P3Name= "Hal jordan" && enemy, PalNo = 11
trigger2 = P2Name="Indigo 1" || p4name = "Indigo 1" || p3name = "Indigo 1"
trigger3 = P2Name = "Parasite" && enemy, var(50) = 28 || P4Name= "Parasite" && enemy, var(50) = 28 || P3Name= "Parasite" && enemy, var(50) = 28
trigger4 = P2Name = "Parasite" && enemy, var(51) = 28 || P4Name= "Parasite" && enemy, var(51) = 28 || P3Name= "Parasite" && enemy, var(51) = 28
trigger5 = P2Name= "Blackest Night Hal Jordan" && enemy, PalNo = 11 || P4Name= "Blackest Night Hal Jordan" && enemy, PalNo = 11 || P3Name= "Blackest Night Hal Jordan" && enemy, PalNo = 11
value = 9192

;Hope
[State 190, vs Hope]
type = ChangeState
trigger1 = P2Name= "Hal jordan" && enemy, PalNo = 10 || P4Name= "Hal jordan" && enemy, PalNo = 10 || P3Name= "Hal jordan" && enemy, PalNo = 10
trigger2 = P2Name="Saint Walker" || p4name = "Saint Walker" || p3name = "Saint Walker"
trigger3 = P2Name="Barry Allen" || p4name = "Barry Allen" || p3name = "Barry Allen"
trigger4 = P2Name= "Blackest Night Hal Jordan" && enemy, PalNo = 10 || P4Name= "Blackest Night Hal Jordan" && enemy, PalNo = 10 || P3Name= "Blackest Night Hal Jordan" && enemy, PalNo = 10
trigger5 = P2Name= "Starfire" && enemy, PalNo = 8 || P3Name = "Starfire" && enemy, PalNo = 8 || P4Name = "Starfire" && enemy, PalNo = 8
value = 9193

;sinestro
[State 190, vs Fear]
type = ChangeState
trigger1 = P2Name= "Hal jordan" && enemy, PalNo = 9 || P4Name= "Hal jordan" && enemy, PalNo = 9 || P3Name= "Hal jordan" && enemy, PalNo = 9
trigger2 = P2Name="sinestro" || p4name = "sinestro" || p3name = "sinestro"
trigger3 = P2Name="Mongul DCvsM" || p4name = "Mongul DCvsM" || p3name = "Mongul DCvsM"
trigger4 = P2Name="Mongul" || p4name = "Mongul" || p3name = "Mongul"
trigger5 = P2Name = "Parasite" && enemy, var(50) = 13 || P4Name= "Parasite" && enemy, var(50) = 13 || P3Name= "Parasite" && enemy, var(50) = 13
trigger6 = P2Name = "Parasite" && enemy, var(51) = 13 || P4Name= "Parasite" && enemy, var(51) = 13 || P3Name= "Parasite" && enemy, var(51) = 13
trigger7 = P2Name="Superboy Prime" || p4name = "Superboy Prime" || p3name = "Superboy Prime"
trigger8 = P2Name= "Blackest Night Hal Jordan" && enemy, PalNo = 9 || P4Name= "Blackest Night Hal Jordan" && enemy, PalNo = 9 || P3Name= "Blackest Night Hal Jordan" && enemy, PalNo = 9
trigger9 = P2Name="Scarecrow" || p4name = "Scarecrow" || p3name = "Scarecrow"
value = 197

;Greed
[State 190, vs greed]
type = ChangeState
trigger1 = P2Name= "Hal jordan" && enemy, PalNo = 8 || P4Name= "Hal jordan" && enemy, PalNo = 8 || P3Name= "Hal jordan" && enemy, PalNo = 8
trigger2 = P2Name = "Parasite" && enemy, var(50) = 27 || P4Name= "Parasite" && enemy, var(50) = 27 || P3Name= "Parasite" && enemy, var(50) = 27
trigger3 = P2Name = "Parasite" && enemy, var(51) = 27 || P4Name= "Parasite" && enemy, var(51) = 27 || P3Name= "Parasite" && enemy, var(51) = 27
trigger4 = P2Name = "Larfleeze" || p4name = "Larfleeze" || p3name = "Larfleeze"
trigger5 = P2Name = "Lex luthor" && enemy, PalNo = 12 || p4name = "Lex luthor" && enemy, PalNo = 12 || p3name = "Lex luthor" && enemy, PalNo = 12
trigger6 = P2Name = "Acerbus" || p4name = "Acerbus" || p3name = "Acerbus"
trigger7 = P2Name= "Blackest Night Hal Jordan" && enemy, PalNo = 8 || P4Name= "Blackest Night Hal Jordan" && enemy, PalNo = 8 || P3Name= "Blackest Night Hal Jordan" && enemy, PalNo = 8
value = 198

; Love
[State 190, vs love]
type = ChangeState
trigger1 = P2Name="Wonder Woman" || p4name = "Wonder Woman" || p3name = "Wonder Woman"
trigger2 = P2Name="Wonder Woman Reloaded" || p4name = "Wonder Woman Reloaded" || p3name = "Wonder Woman Reloaded"
trigger3 = P2Name = "Parasite" && enemy, var(50) = 29 || P4Name= "Parasite" && enemy, var(50) = 29 || P3Name= "Parasite" && enemy, var(50) = 29
trigger4 = P2Name = "Parasite" && enemy, var(51) = 29 || P4Name= "Parasite" && enemy, var(51) = 29 || P3Name= "Parasite" && enemy, var(51) = 29
trigger5 = P2Name= "Carol Ferris" || p4name = "Carol Ferris" || p3name = "Carol Ferris"
trigger6 = P2Name= "Star Sapphire" || p4name = "Star Sapphire" || p3name = "Star Sapphire"
trigger7 = P2Name= "batgirl" && enemy, PalNo = 6 || P3Name = "batgirl" && enemy, PalNo = 6 || P4Name = "batgirl" && enemy, PalNo = 6
value = 199

; Rage
[State 190, vs rage]
type = ChangeState
trigger1 = P2Name= "Hal jordan" && enemy, PalNo = 7 || P4Name= "Hal jordan" && enemy, PalNo = 7 || P3Name= "Hal jordan" && enemy, PalNo = 7
trigger2 = P2Name = "Parasite" && enemy, var(50) = 26 || P4Name= "Parasite" && enemy, var(50) = 26 || P3Name= "Parasite" && enemy, var(50) = 26
trigger3 = P2Name = "Parasite" && enemy, var(51) = 26 || P4Name= "Parasite" && enemy, var(51) = 26 || P3Name= "Parasite" && enemy, var(51) = 26
trigger4 = P2Name= "Atrocitus" || p4name = "Atrocitus" || p3name = "Atrocitus"
trigger5 = P2Name= "Blackest Night Hal Jordan" && enemy, PalNo = 7 || P4Name= "Blackest Night Hal Jordan" && enemy, PalNo = 7 || P3Name= "Blackest Night Hal Jordan" && enemy, PalNo = 7
trigger6 = P2Name= "Guy Gardner" && enemy, PalNo = 2 || P4Name= "Guy Gardner" && enemy, PalNo = 2 || P3Name= "Guy Gardner" && enemy, PalNo = 2
trigger7 = P2Name= "Green Lantern Guy" && enemy, PalNo = 2 || P4Name= "Green Lantern Guy" && enemy, PalNo = 2 || P3Name= "Green Lantern Guy" && enemy, PalNo = 2
value = 9190

; vs hal, john
[State 190, vs Will]
type = ChangeState
trigger1 = P2Name = "Parasite" && enemy, var(50) = 5 || P3Name= "Parasite" && enemy, var(50) = 5 || P4Name= "Parasite" && enemy, var(50) = 5
trigger2 = P2Name = "Parasite" && enemy, var(51) = 5 || P3Name= "Parasite" && enemy, var(51) = 5 || P4Name= "Parasite" && enemy, var(51) = 5
trigger3 = P2Name = "John Stewart" || p4name = "John Stewart" || p3name = "John Stewart"
trigger4 = P2Name = "Guy Gardner" && enemy, PalNo != 2 || p4name = "Guy Gardner" && enemy, PalNo != 2|| p3name = "Guy Gardner" && enemy, PalNo != 2
trigger5 = P2Name = "Green Lantern Guy" && enemy, PalNo != 2 || p4name = "Green Lantern Guy" && enemy, PalNo != 2|| p3name = "Green Lantern Guy" && enemy, PalNo != 2
trigger6 = P2Name = "Hal jordan" || p4name = "Hal jordan" || p3name = "Hal jordan"
trigger7 = P2Name = "Blackest Night Hal Jordan" || p4name = "Blackest Night Hal Jordan" || p3name = "Blackest Night Hal Jordan"
trigger8 = P2Name= "Green Lantern Guy" && enemy, PalNo != 2 || P4Name= "Green Lantern Guy" && enemy, PalNo != 2 || P3Name= "Green Lantern Guy" && enemy, PalNo != 2
trigger9 = P2Name = "Kyle Rayner" || p4name = "Kyle Rayner" || p3name = "Kyle Rayner"
trigger10 = P2Name = "Kilowog" || p4name = "Kilowog" || p3name = "Kilowog"
trigger11 = P2Name = "Alan Scott" || p4name = "Alan Scott" || p3name = "Alan Scott"
trigger12 = P2Name = "Tomar Tu" || p4name = "Tomar Tu" || p3name = "Tomar Tu"
value = 196

; Vs Dex
[State 190, vs Dex]
type = ChangeState
triggerall = numpartner < 1
trigger1 = P2Name= "Dexstarr" || p4name = "Dexstarr" || p3name = "Dexstarr"
value = 9194

[State 190,intro decider]
type = ChangeState
trigger1 = Time = 1
value = 191 + ((Random * 3) / 1000)     ; change the 1 to however many intros you have
;-----------------------
; Vs Dex
[Statedef 9194]
type = S
ctrl = 0
anim = 198
velset = 0,0

[State 0, tiny run]
type = Explod
trigger1 = time = 69
anim = 197
ID = 197
pos = 352,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -3.5,0
accel = 0,0
;random = 0,0
removetime = -1
supermove
pausemove
scale = 1,1
sprpriority = -1
ontop = 0
shadow = -1;0,0,0
ownpal = 0
removeongethit = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time =168
id = 197
;ignorehitpause =
;persistent =

[State 192, shift]
type = PlaySnd
trigger1 = Time = 216
value = 31,0

[State 192, cat was bad]
type = PlaySnd
trigger1 = Time = 247
value = 80,7
volume= 150

[State 192, AfterImage]
type = AfterImage
trigger1  = time = 217
time = 68
length = 20
FrameGap = 8
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1


[State 9190, Rage]
type = PlaySnd
trigger1 = Time = 350
value = 300,0

[State 9190, Explod]
type = Explod
trigger1 = Time = 343
anim = ifelse(facing=1,1031,10311)
ID = 2306
pos = -0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
ontop = 1

[State 9190, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 430
id = 2306

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,450]
flag = Intro

;-----------------------
; Intro getalong
[Statedef 192]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 192, shift]
type = PlaySnd
trigger1 = Time = 0
value = 32,0

[State 192, getalong]
type = PlaySnd
trigger1 = Time = 75
value = 60,0

[State 192, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 68
length = 20
FrameGap = 8
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,130]
flag = Intro

;-----------------------
; Intro wrong number
[Statedef 193]
type = S
ctrl = 0
anim = 19444
velset = 0,0

[State 192, wrongnumber]
type = PlaySnd
trigger1 = Time = 97
value = 80,6

[State 191, ring]
type = PlaySnd
trigger1 = Time = 0
value = 80,5

[State 191, shift]
type = PlaySnd
trigger1 = Time = 70
value = 31,1

[State 191, AfterImage]
type = AfterImage
trigger1 = AnimElem = 2
time = 15
length = 12
FrameGap = 1
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 191, sho]
type = Explod
trigger1 = Time = 0
anim = 193
ID = 2305
pos = -37,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 110,110,110


[State 191, cell]
type = Explod
trigger1 = Time = 93
anim = 194
ID = 2306
pos = -37,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 1
ontop = 0

[State 191, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 150
id = 2305

[State 191, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 180
id = 2306

[State 191, 2]
type = AssertSpecial
trigger1 = Time = [0,130]
flag = Intro

;-----------------------
; Intro Ryan
[Statedef 191]
type = S
ctrl = 0
anim = 1911
velset = 0,0

[State 192, shift]
type = PlaySnd
trigger1 = Time = 0
value = 32,0

[State 192, gotthisone]
type = PlaySnd
trigger1 = Time = 75
value = 60,2

[State 192, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 68
length = 20
FrameGap = 8
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 191, Ryan]
type = Explod
trigger1 = Time = 0
anim = 196
ID = 2305
pos = -37,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 110,110,110

[State 191, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 170
id = 2305

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,170]
flag = Intro

;---------------------------
; Intro #0 - DEATH
[Statedef 666999]
type = S
ctrl = 0
anim = 66699
velset = 0,0

[State 191, effect]
type = Explod
trigger1 = AnimElem = 3
anim = 66698
ID = 2306
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 1
ontop = 0

[State 191, effect]
type = Explod
trigger1 = AnimElem = 6
anim = 66698
ID = 2307
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = -1
ontop = 0

[State 191, RemoveExplod]
type = RemoveExplod
trigger1 = time = 37
id = 2306

[State 191, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 24
id = 2307

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = Intro

;-----------------------------
; Intro #2 Will
[Statedef 196]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 192, shift]
type = PlaySnd
trigger1 = Time = 0
value = 32,0

[State 192, will]
type = PlaySnd
trigger1 = Time = 93
value = 300,6

[State 192, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 68
length = 20
FrameGap = 8
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 192, Explod]
type = Explod
trigger1 = Time = 113
anim = ifelse(facing=1,1024,10244)
ID = 2306
pos = -0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
ontop = 1

[State 191, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 200
id = 2306

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = Intro


;-----------------------
; Intro #3 fear
[Statedef 197]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 193, shift]
type = PlaySnd
trigger1 = Time = 0
value = 32,0

[State 193, Fear]
type = PlaySnd
trigger1 = Time = 93
value = 300,3

[State 193, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 68
length = 20
FrameGap = 8
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 193, Explod]
type = Explod
trigger1 = Time = 113
anim = ifelse(facing=1,1025,10255)
ID = 2306
pos = -0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
ontop = 1

[State 193, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 200
id = 2306

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = Intro
;-----------------------


; Intro #4 Greed
[Statedef 198]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 194, shift]
type = PlaySnd
trigger1 = Time = 0
value = 32,0

[State 194, greed]
type = PlaySnd
trigger1 = Time = 93
value = 300,5

[State 194, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 68
length = 20
FrameGap = 8
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 194, Explod]
type = Explod
trigger1 = Time = 113
anim = ifelse(facing=1,1026,10266)
ID = 2306
pos = -0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
ontop = 1

[State 194, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 200
id = 2306

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = Intro

;-----------------------

; Intro #5 love
[Statedef 199]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 192, shift]
type = PlaySnd
trigger1 = Time = 0
value = 32,0

[State 192, love]
type = PlaySnd
trigger1 = Time = 93
value = 300,1

[State 192, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 68
length = 20
FrameGap = 8
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 192, Explod]
type = Explod
trigger1 = Time = 113
anim = ifelse(facing=1,1029,10299)
ID = 2306
pos = -0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
ontop = 1

[State 191, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 200
id = 2306

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = Intro

;--------------------------
; Intro #6 Rage
[Statedef 9190]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 9190, shift]
type = PlaySnd
trigger1 = Time = 0
value = 32,0

[State 9190, Rage]
type = PlaySnd
trigger1 = Time = 93
value = 300,0

[State 9190, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 68
length = 20
FrameGap = 8
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 9190, Explod]
type = Explod
trigger1 = Time = 113
anim = ifelse(facing=1,1031,10311)
ID = 2306
pos = -0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
ontop = 1

[State 9190, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 200
id = 2306

[State 9190, 2]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = Intro

;-----------------------
;-----------------------------------
; Intro #7 Hope
[Statedef 9193]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 9190, shift]
type = PlaySnd
trigger1 = Time = 0
value = 32,0

[State 9190, Hope]
type = PlaySnd
trigger1 = Time = 93
value = 300,2

[State 9190, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 68
length = 20
FrameGap = 8
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 9190, Explod]
type = Explod
trigger1 = Time = 113
anim = ifelse(facing=1,3004,3005)
ID = 2306
pos = -0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
ontop = 1

[State 9190, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 200
id = 2306

[State 9190, 2]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = Intro

;-----------------------
;--------------------------
; Intro #8 Compassion
[Statedef 9192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 9190, shift]
type = PlaySnd
trigger1 = Time = 0
value = 32,0

[State 9190, Compassion]
type = PlaySnd
trigger1 = Time = 93
value = 300,4

[State 9190, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 68
length = 20
FrameGap = 8
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 9190, Explod]
type = Explod
trigger1 = Time = 113
anim = ifelse(facing=1,3002,3003)
ID = 2306
pos = -0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
ontop = 1

[State 9190, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 200
id = 2306

[State 9190, 2]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = Intro

;---------------------------------------------------------------------------
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;---------------------------------------------------------------------------
; Stand Light Punch
[StateDef 200]
anim = 200
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 30

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, grunt]
type = PlaySnd
trigger1 = time = 0
value = 1,0

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = 20
guardflag = MA
pausetime = 9,9
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-66
animtype = Light
ground.type = High
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -2
guard.velocity = -1
air.velocity = -2,-3
priority = 3,Hit


;---

[State 220, MP chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "y"
value = 210
ctrl = 0

[State 220, HP chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "z"
value = 220
ctrl = 0

[State 220, LK chain]
type = ChangeState
triggerall = PrevStateNo != 230
triggerall = movecontact = 1
trigger1 = command = "a"
value = 230
ctrl = 0

[State 220, MK chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "b"
value = 240
ctrl = 0

[State 220, HK chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "c"
value = 250
ctrl = 0


;---
[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Medium Punch
[StateDef 210]
anim = 210
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 65


;mk
[State 0, Velset]
type = VelSet
triggerall = PrevStateNo = 240
trigger1 = time = [1,3]
x = 3

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 210, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,1

[State 210, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = 45
guardflag = MA
pausetime = 12,12
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-69
animtype = Medium
ground.type = High
ground.slidetime = 9
ground.hittime  = 14
ground.velocity = -3
guard.velocity = -3
air.velocity = -3,-6
priority = 3,Hit
;------
[State 220, Launcher chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "holddown" && command = "z"
value = 420
ctrl = 0

[State 220, HP chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "z"
value = 220
ctrl = 0

[State 220, MK chain]
type = ChangeState
triggerall = PrevStateNo != 240
triggerall = movecontact = 1
trigger1 = command = "b"
value = 240
ctrl = 0

[State 220, HK chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "c"
value = 250
ctrl = 0


;-----------
[State 210, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Hard Punch
[StateDef 220]
anim = 220
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 96

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,2

[State 100, shift]
type = PlaySnd
trigger1 = Time = 0
value = 31,1

[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
damage = 65
guardflag = MA
pausetime = 16,16
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-85
animtype = Heavy
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -10
guard.velocity = -8
air.velocity = -4,8
priority = 4,Hit

[State 220, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 12
length = 15
FrameGap = 4
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 1001, ChangeState] ;atomic punch cancel
type = ChangeState
triggerall = power >= 1000
trigger1 = Movehit = 1
trigger1 = command = "qcf_2p"
value = 33001
ctrl = 1

[State 600, mitePcancel]
type = ChangeState
trigger1 = (command = "qcf_x") || (command = "qcf_y") || (command = "qcf_z")
trigger1 = (movecontact = 1)
value = 1001

[State 600, miteKcancel]
type = ChangeState
trigger1 = (command = "qcf_a") || (command = "qcf_b") || (command = "qcf_c")
trigger1 = (movecontact = 1)
value = 1014

[State 600, Sub A Pcancel]
type = ChangeState
trigger1 = (command = "qcb_x") || (command = "qcb_y") || (command = "qcb_z")
trigger1 = (movecontact = 1)
value = 1007

[State 600, Side step cancel]
type = Null ;ChangeState
trigger1 = (command = "qcb_a") || (command = "qcb_b") || (command = "qcb_c")
trigger1 = (movecontact = 1)
value = 1011

[State 220, HK chain]
type = null ;ChangeState
triggerall = movecontact = 1
trigger1 = command = "c"
value = 250
ctrl = 0

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Throw
[StateDef 9221]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 221
sprpriority = 0

; Notes: The '-' symbol in the hitflag field means that it only affects
;   players who are not in a hit state. This prevents KFM from combo-ing
;   into the throw. The priority should be set to a low number, such as
;   1 or 2, so that the throw does not take precedence over normal attacks.
;   The type of priority must always be set to "Miss" or "Dodge" for throws,
;   otherwise strange behavior can result.
[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
p1sprpriority = -1     ;Draw p1's sprite in front of p2
                      ;p2's sprite priority is set to 0 by default
p1facing = 1
p2facing = 1          ;Force p2 to face KFM
p1stateno = 9222       ;On success, KFM changes to state 810
p2stateno = 9224       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
              ;Force p2 into falling down


[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Kung Fu Throw - Throwing the opponent
; Description: In this state, KFM throws the opponent by binding him to
;     various offsets based on his current frame of animation. For
;     example, [State 810, Bind 1] binds the opponent to an offset of
;     28 pixels in front of KFM. That puts him around where KFM's hand
;     is at. Is is important to keep the opponent bound using a
;     TargetBind controller at all times, until you let him go. This
;     is especially important if your player has a Clsn2 box that
;     allows him to get hit while throwing someone. Each time a player
;     gets hit, all his bound targets will be set to a fall state. If
;     the opponent is not bound, then he may get stuck in his thrown
;     state when his attacker is knocked out of the throw halfway.
; Notes: There is a TargetLifeAdd controller to decrease the opponent's
;     life, and a TargetState controller to change his state to a
;     falling state when KFM lets go of him.
[Statedef 9222]
type    = S
movetype= A
physics = N
anim = 222

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3, 1

[State 810, Throw Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 2

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem >= 1
pos = 50, -55

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem >= 2
pos = -35, -85

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem >= 3
pos = 0, -95

[State 0, TargetVelAdd]
type = TargetVelAdd
trigger1 = AnimElem = 4
x = 6
y = 0
ID = -1

[State 810, Turn Target]
type = TargetFacing
trigger1 = AnimElem = 1
value = -1

[State 810, Hurt 11]
type = TargetLifeAdd
trigger1 = AnimElem = 4
value = -78

[State 810, Throw 11]
type = TargetState
trigger1 = AnimElem = 5
value = 9225

[State 810, Turn 12]
type = Turn
trigger1 = AnimElem = 2

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw

[Statedef 9224]
type    = A
movetype= H
physics = N
velset = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 223

;
;[State 820, 2]
;type = SelfState
;trigger1 = !gethitvar(isbound)
;value = 5050

;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw - thrown into the air
; (a custom gethit state)
[Statedef 9225]
type    = A
movetype= H
physics = N
velset = 4,-3;4,-4;6,0
poweradd = 40

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

[State 821, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 821, 3] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground

------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Stand Light Kick
[StateDef 230]
anim = 230
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 25

[State 230, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 230, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 230, HitDef]
type = HitDef
trigger1 = Time = 2
attr = S, NA
damage = 20
guardflag = MAFD
pausetime = 9,9
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-30
animtype = Light
ground.type = Low
ground.slidetime = 9
ground.hittime  = 10
ground.velocity = -2
guard.velocity = -2
air.velocity = -2,-3
priority = 3,Hit
;---------------
[State 220, LP chain]
type = ChangeState
triggerall = PrevStateNo != 200
triggerall = movecontact = 1
trigger1 = command = "x"
value = 200
ctrl = 0

[State 220, MP chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "y"
value = 210
ctrl = 0

[State 220, HP chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "z"
value = 220
ctrl = 0

[State 220, MK chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "b"
value = 240
ctrl = 0

[State 220, HK chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "c"
value = 250
ctrl = 0

;---------------
[State 230, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Kick
[StateDef 240]
anim = 240
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 65

;mp
[State 0, Velset]
type = VelSet
triggerall = PrevStateNo = 210
trigger1 = time = [1,3]
x = 3

[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 240, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 240, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 45
guardflag = MA
pausetime = 12,12
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-80
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -4
guard.velocity = -4
air.velocity = -3,-6
priority = 3,Hit
;-------------
[State 220, Launcher chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "holddown" && command = "z"
value = 420
ctrl = 0

[State 220, MP chain]
type = ChangeState
triggerall = PrevStateNo != 210
triggerall = movecontact = 1
trigger1 = command = "y"
value = 210
ctrl = 0

[State 220, HP chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "z"
value = 220
ctrl = 0

[State 220, HK chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "c"
value = 250
ctrl = 0

;-------------
[State 240, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Hard Kick
[StateDef 250]
anim = 250
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 96

[State 250, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 250, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 450, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
hitflag = MA
damage = 65
guardflag = MA
pausetime = 17,17
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-50
animtype = Heavy
ground.type = Low
ground.slidetime = 19
ground.hittime  = 19
ground.velocity = -9
guard.velocity = -8
air.velocity = -4,8
priority = 4,Hit

[State 1001, ChangeState] ;atomic punch cancel
type = ChangeState
triggerall = power >= 1000
trigger1 = Movehit = 1
trigger1 = command = "qcf_2p"
value = 33001
ctrl = 1

[State 600, mitePcancel]
type = ChangeState
trigger1 = (command = "qcf_x") || (command = "qcf_y") || (command = "qcf_z")
trigger1 = (movecontact = 1)
value = 1001

[State 600, miteKcancel]
type = ChangeState
trigger1 = (command = "qcf_a") || (command = "qcf_b") || (command = "qcf_c")
trigger1 = (movecontact = 1)
value = 1014

[State 600, Sub A Pcancel]
type = ChangeState
trigger1 = (command = "qcb_x") || (command = "qcb_y") || (command = "qcb_z")
trigger1 = (movecontact = 1)
value = 1007

[State 600, Side step cancel]
type = Null ;ChangeState
trigger1 = (command = "qcb_a") || (command = "qcb_b") || (command = "qcb_c")
trigger1 = (movecontact = 1)
value = 1011

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Crouch Light Punch
[StateDef 400]
anim = 400
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 30

[State 400, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 400, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 400, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 20
guardflag = MA
pausetime = 9,9
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-60
animtype = Light
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1
guard.velocity = -2
air.velocity = -3,-6
priority = 3,Hit
;-----------
[State 410, MP chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "y"
value = 410
ctrl = 0

[State 420, HP chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "z"
value = 420
ctrl = 0

[State 420, LK chain]
type = ChangeState
triggerall = PrevStateNo != 430
triggerall = movecontact = 1
trigger1 = command = "a"
value = 430
ctrl = 0

[State 440, MK chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "b"
value = 440
ctrl = 0

[State 450, HK chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "c"
value = 450
ctrl = 0
;--------------

[State 400, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[StateDef 410]
anim = 410
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 65

[State 410, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 410, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 410, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 45
guardflag = MA
pausetime = 12,12
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-40
animtype = Medium
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -4
guard.velocity = -7
air.velocity = -3,-6
priority = 3,Hit
;---------
[State 420, HP chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "z"
value = 420
ctrl = 0

[State 440, MK chain]
type = ChangeState
triggerall = PrevStateNo != 440
triggerall = movecontact = 1
trigger1 = command = "b"
value = 440
ctrl = 0

[State 450, HK chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "c"
value =450
ctrl = 0

;-----------
[State 410, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Punch
[StateDef 420]
anim = 420
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 65

[State 420, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 420, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 420, HitDef]
type = HitDef
trigger1 = Time = 4
attr = C, NA
damage = 25
guardflag = MA
pausetime = 16,16
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-75
animtype = Heavy
ground.type = Low
ground.slidetime = 15
ground.hittime  = 16
ground.velocity = 0,-13
guard.velocity = -5
air.velocity = -2,-11
priority = 4,Hit

[State 220, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 4
length = 15
FrameGap = 4
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 100, shift]
type = PlaySnd
trigger1 = Time = 0
value = 31,1

[State 420, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Light Kick
[StateDef 430]
anim = 440
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 25

[State 430, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 430, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 430, HitDef]
type = HitDef
trigger1 = Time = 3
attr = C, NA
damage = 20
guardflag = MA
pausetime = 9,9
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,0
animtype = Light
ground.type = Low
ground.slidetime = 9
ground.hittime  = 10
ground.velocity = -2
guard.velocity = -2
air.velocity = -2,-3
priority = 3,Hit
;----------------
 [State 400, LP chain]
type = ChangeState
triggerall = PrevStateNo != 400
triggerall = movecontact = 1
trigger1 = command = "x"
value = 400
ctrl = 0

[State 410, MP chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "y"
value = 410
ctrl = 0

[State 420, HP chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "z"
value = 420
ctrl = 0

[State 440, MK chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "b"
value = 440
ctrl = 0

[State 450, HK chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "c"
value = 450
ctrl = 0

;-----------------
[State 430, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Kick
[StateDef 440]
anim = 430
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 10

[State 440, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 440, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 440, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 45
guardflag = MA
pausetime = 12,12
hitsound = S2,2
guardsound = S3,0
sparkno = S9991
sparkxy = 0,0
animtype = Medium
ground.type = Low
ground.slidetime = 9
ground.hittime  = 20
ground.velocity = -5
guard.velocity = -4
air.velocity = -4,-8
priority = 3,Hit
;-------------------
[State 410, MP chain]
type = ChangeState
triggerall = PrevStateNo != 410
triggerall = movecontact = 1
trigger1 = command = "y"
value = 410
ctrl = 0

[State 420, HP chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "z"
value = 420
ctrl = 0

[State 450, HK chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "c"
value = 450
ctrl = 0


;-----------------------
[State 440, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Kick
[StateDef 450]
anim = 450
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 25

[State 450, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 450, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 250, HitDef]
type = HitDef
trigger1 = Time = 2
attr = C, NA
hitflag = M
damage = 45
guardflag = L
pausetime = 9,9
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,0
animtype = Back
ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
guard.velocity = -3
priority = 4,Hit

[State 450, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Punch
[StateDef 600]
anim = 600
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 25

[State 600, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 600, grunt]
type = PlaySnd
trigger1 = Time = 1
value = 1,0

[State 600, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 20
guardflag = HA
pausetime = 9,9
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-70
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -4,-3
priority = 3,Hit
;---------------------
[State 610, MP chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "y"
value = 610
ctrl = 0

[State 620, HP chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "z"
value = 620
ctrl = 0

[State 630, LK chain]
type = ChangeState
triggerall = PrevStateNo != 630
triggerall = movecontact = 1
trigger1 = command = "a"
value = 630
ctrl = 0

[State 640, MK chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "b"
value = 640
ctrl = 0

[State 650, HK chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "c"
value = 650
ctrl = 0

;-------------------
[State 600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Punch
[StateDef 610]
anim = 610
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 65

[State 610, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 610, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 610, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 45
guardflag = HA
pausetime = 12,12
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-70
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-4
priority = 3,Hit
;-----------

[State 600, miteKcancel]
type = ChangeState
trigger1 = (command = "qcf_a") || (command = "qcf_b") || (command = "qcf_c")
trigger1 = (movecontact = 1)
value = 1709

[State 220, HP chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "z"
value = 620
ctrl = 0

[State 220, MK chain]
type = ChangeState
triggerall = PrevStateNo != 640
triggerall = movecontact = 1
trigger1 = command = "b"
value = 640
ctrl = 0

[State 220, HK chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "c"
value = 650
ctrl = 0

;------------
[State 610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Punch
[StateDef 620]
anim = 620
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 96

[State 620, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 620, grunt]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2

[State 620, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 65
guardflag = HA
pausetime = 16,5
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5,5
guard.velocity = -7
air.velocity = -5,10
fall = 1
priority = 4,Hit

[State 220, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 4
length = 15
FrameGap = 3
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 600, miteKcancel]
type = ChangeState
trigger1 = (command = "qcf_a") || (command = "qcf_b") || (command = "qcf_c")
trigger1 = (movecontact = 1)
value = 1709

[State 100, shift]
type = PlaySnd
trigger1 = Time = 0
value = 31,1

[State 620, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Kick
[StateDef 630]
anim = 630
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 22

[State 630, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 630, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 630, HitDef]
type = HitDef
trigger1 = Time = 4
attr = A, NA
damage = 20
guardflag = HA
pausetime = 9,9
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-70
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-4
priority = 3,Hit
;---------
[State 220, LP chain]
type = ChangeState
triggerall = PrevStateNo != 600
triggerall = movecontact = 1
trigger1 = command = "x"
value = 600
ctrl = 0

[State 220, MP chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "y"
value = 610
ctrl = 0

[State 220, HP chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "z"
value = 620
ctrl = 0

[State 220, MK chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "b"
value = 640
ctrl = 0

[State 220, HK chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "c"
value = 650
ctrl = 0

;---------
[State 630, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Kick
[StateDef 640]
anim = 640
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 65

[State 640, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 640, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 640, HitDef]
type = HitDef
trigger1 = Time = 3
attr = A, NA
damage = 45
guardflag = HA
pausetime = 12,12
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-68
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3
priority = 3,Hit
;---------------------
[State 600, miteKcancel]
type = ChangeState
trigger1 = (command = "qcf_a") || (command = "qcf_b") || (command = "qcf_c")
trigger1 = (movecontact = 1)
value = 1709

[State 220, MP chain]
type = ChangeState
triggerall = PrevStateNo != 610
triggerall = movecontact = 1
trigger1 = command = "y"
value = 610
ctrl = 0

[State 220, HP chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "z"
value = 620
ctrl = 0

[State 220, HK chain]
type = ChangeState
triggerall = movecontact = 1
trigger1 = command = "c"
value = 650
ctrl = 0
;----------------------
[State 640, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Kick
[StateDef 650]
anim = 650
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 92

;ypos 140

[State 650, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 650, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 650, HitDef]
type = HitDef
Triggerall = Pos Y <= -101
trigger1 = Time = 3
attr = A, NA
damage = 65
guardflag = HA
pausetime = 10,10
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-10
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -10,10
priority = 4,Hit
fall=1


[State 650, HitDef]
type = HitDef
Triggerall = pos Y > -101
trigger1 = Time = 3
attr = A, NA
damage = 65
guardflag = HA
pausetime = 8,12
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-10
animtype = Heavy
ground.type = High
ground.slidetime = 11
ground.hittime  = 11
ground.velocity = -5
guard.velocity = -7
air.velocity = -5,5
priority = 4,Hit

[State 600, miteKcancel]
type = ChangeState
trigger1 = (command = "qcf_a") || (command = "qcf_b") || (command = "qcf_c")
trigger1 = (movecontact = 1)
value = 1709

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
;Super Jump opponent locator
[Statedef 910]
type    = A
physics = N
ctrl = 0
sprpriority = 2

[State 910, arrow]
type = ChangeAnim
trigger1 = IsHelper(0)
;trigger1 = TeamSide = 2
value = 910

[State 910, destroyself]
type = DestroySelf
triggerall = IsHelper(0)
trigger1 = RootDist Y > 0


;-----------------------
; Safe fall (from superjump, or jumping attack)
[StateDef 948]
type = A
movetype = I
physics = A
ctrl = 1

; neutral
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X = 0)
value = 48

; forwards
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X > 0)
value = 49

; backwards
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X < 0)
value = 50

;-----------------------
; Taunt
; CNS difficulty: easy
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 90,5
channel = 0

[State 195, 1]
type = CtrlSet
trigger1 = AnimTime > 0
value = 1

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------

# Yo Ho! A Pirate's Life for Me: Custom Song#2

#Sheet Music: https://musescore.com/onnikoivisto/yo-ho
#Intro Sample: https://www.youtube.com/watch?v=pNksCAN9IcA
#Outro Sample: https://www.youtube.com/watch?v=nY8T0RMs_wU
#Throwinghat Sample: https://www.youtube.com/watch?v=mCDA-m-TQdU
#Ending Sample: https://www.youtube.com/watch?v=_5MQabnB5No
#Oceansound sampe: https://www.youtube.com/watch?v=kxX039DmeEw


use_bpm 190
use_synth :piano
num = 1
i = 0


Samps = [:drum_heavy_kick, :drum_cymbal_closed, :drum_snare_hard, :drum_tom_mid_hard, :drum_heavy_kick, :drum_cymbal_closed]

Intro = "C:/Users/tiana_agbekoh/Downloads/JackSparrowDishonest.mp3"
Outro = "C:/Users/tiana_agbekoh/Downloads/drinkupYoHO.mp3"
Ocean = "C:/Users/tiana_agbekoh/Downloads/please.mp3"
Throwinghat = "C:/Users/tiana_agbekoh/Downloads/trowinghat.mp3"
Ending = "C:/Users/tiana_agbekoh/Downloads/ending.mp3"



define :main_theme do |x1, x2, x3, x4, x5, x6|
  play x1
  sleep 1.5
  play x2
  sleep 1.5
  play x3
  sleep 1.5
  play x2
  sleep 1
  play x4
  sleep 0.5
  play x1
  sleep 1
  play x1
  sleep 0.5
  play x5
  sleep 1
  play x5
  sleep 0.5
  play x6
  sleep 2
end

define :main_theme2 do |x1, x2, x3, x4|
  play x1
  sleep 0.5
  play x1
  sleep 1
  play x1
  sleep 0.5
  play x1
  sleep 0.5
  play x1
  sleep 0.5
  play x1
  sleep 0.5
  play x1
  sleep 0.5
  play x1
  sleep 0.5
  play x1
  sleep 0.5
  play x1
  sleep 0.5
  play x1
  sleep 0.5
  play x1
  sleep 0.5
  play x2
  sleep 1
  play x1
  sleep 0.5
  play x3
  sleep 0.5
  play x3
  sleep 0.5
  play x4
  sleep 0.5
  play x1
  sleep 2
end

define :main_theme3 do |x1, x2, x3, x4|
  play x1
  sleep 0.5
  play x2
  sleep 0.5
  play x2
  sleep 0.5
  play x2
  sleep 0.5
  play x3
  sleep 0.5
  play x3
  sleep 0.5
  play x3
  sleep 0.5
  play x1
  sleep 0.5
  play x1
  sleep 0.5
  play x1
  sleep 0.5
  play x4
  sleep 1
end


define :main_theme4 do |x1, x2, x3, x4, x5, x6|
  play x1
  sleep 0.5
  play x2
  sleep 1
  play x3
  sleep 0.5
  play x3
  sleep 0.5
  play x4
  sleep 0.5
  play x5
  sleep 0.5
  play x6
  sleep 2.5
end


#---------Music Starts Here-------------------

sample Intro, amp: 5
sleep 50


4. times do
  sample :bd_boom, amp: num
  num = num +1
  sleep 1
end

#First Part

sample Ocean, amp: 0.5

2.times do
  main_theme :A4, :C5, :D5, :Bf4, :G4, :F4
  
  
  live_loop :First_beat do
    6. times do
      sample Samps[i]
      sleep 4
      i=i+1 #INCREMENT variable
    end
    stop
  end
  
  #Second part
  
  main_theme2 :A4, :D5, :F4, :G4
  
  #Third part
  
  main_theme3 :A4, :Bf4, :G4, :F4
  
  #Fourth part
  
  main_theme4 :F4, :E4, :G4, :A4, :Bf4, :C5
  
  #Fifth part
  main_theme :A4, :C5, :D5, :Bf4, :G4, :F4
  
  sleep 2
  
end

sample Throwinghat, amp: 5

sleep 44

sample Outro, amp: 3
sleep 5
sample Ending, amp: 1





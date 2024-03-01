# He's A Pirate: Custom Song

use_bpm 190
use_synth :piano
x = 0.5
s = 1
num = 8


Intro = "C:/Users/tiana_agbekoh/Downloads/Pirates of the Caribbean - Dead Men Tell No Tales).wav"
Outro = "C:/Users/tiana_agbekoh/Downloads/outro.wav"
Pirate = "C:/Users/tiana_agbekoh/Downloads/21085535_pirate-saying-fire-in-the-hole_by_applehillstudios_preview.mp3"


define :the_notes do
  play :D, amp: 3
  sleep s
  play :D, amp: 3
  sleep x
end



sample Intro


sleep 8

live_loop :Background_beat do
  55.times do
    sample :bd_haus, beat_stretch: 2
    sleep s
  end
  stop
end

sleep 2

live_loop :Background2nd_beat do
  42.times do
    sample :drum_bass_soft, beat_stretch: 2, amp: 2
    sleep 1.5
  end
  stop
end

sleep 6


#Opening
3.times do
  the_notes
end


6.times do
  play :D, amp: 3
  sleep x
  play :A3, amp: 3
  sleep x
  play :C4, amp: 3
  sleep x
  
  
  play :D, amp: 3
  sleep s
  play :D, amp: 3
  sleep s
  play :D, amp: 3
  sleep x
  play :E4, amp: 3
  sleep x
  
  
  play :F4, amp: 3
  sleep s
  play :F4, amp: 3
  sleep s
  play :F4, amp: 3
  sleep x
  play :G4, amp: 3
  sleep x
  
  
  play :E4, amp: 3
  sleep s
  play :E4, amp: 3
  sleep s
  play :D4, amp: 3
  sleep x
  play :C4, amp: 3
  sleep x
  play :C4, amp: 3
  sleep x
  play :D4, amp: 3
  sleep s
end

sample Pirate, amp: 5

sleep 4

sample Outro

sleep 83

8.times do
  sample :bd_boom, amp: num
  num = num -1
  sleep s
end



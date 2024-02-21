# He's A Pirate: Custom Song

use_bpm 190
use_synth :piano

live_loop :Background_beat do
  22.times do
    sample :bd_haus, beat_stretch: 2
    sleep 1
  end
  stop
end

live_loop :Background2nd_beat do
  14.times do
    sample :drum_bass_soft, beat_stretch: 2, amp: 2
    sleep 1.5
  end
  stop
end

sleep 6

define :the_notes do
  play :D, amp: 3
  sleep 1
  play :D, amp: 3
  sleep 0.5
end

#Opening
3.times do
  the_notes
end


play :D, amp: 3
sleep 0.5
play :A3, amp: 3
sleep 0.5
play :C4, amp: 3
sleep 0.5


play :D, amp: 3
sleep 1
play :D, amp: 3
sleep 1
play :D, amp: 3
sleep 0.5
play :E4, amp: 3
sleep 0.5


play :F4, amp: 3
sleep 1
play :F4, amp: 3
sleep 1
play :F4, amp: 3
sleep 0.5
play :G4, amp: 3
sleep 0.5


play :E4, amp: 3
sleep 1
play :E4, amp: 3
sleep 1
play :D4, amp: 3
sleep 0.5
play :C4, amp: 3
sleep 0.5
play :C4, amp: 3
sleep 0.5
play :D4, amp: 3
sleep 1

sample :bd_boom, amp: 3

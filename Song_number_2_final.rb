# Welcome to Sonic Pi#clint eastwood
use_bpm 90


use_synth :blade

msix = [:e5, :e4, :e4, :e4, :g4, :b4, :b4, :b4]
s = 0   #index = s
laugh = "C:/Users/kelly_atlas/Documents/Audacity/Actual_laugh.wav"
remix ="C:/Users/kelly_atlas/Documents/Audacity/Remix.wav"
ending = "C:/Users/kelly_atlas/Documents/Audacity/ending-1.wav"

sample remix, amp: 2
sleep 2
sample laugh, amp: 2

sleep 9
define :melody do |diff_note|
  play :r
  sleep 0.5
  play :e1
  sleep 1
  play_chord [:d3,:f3,:b3,]
  sleep 0.5
  play_chord [:d3,:f3,:b3,]
  sleep 0.5
  play :b2
  sleep 1
  play_chord diff_note
  sleep 0.5
  play :r
  
end

melody [:d3,:f3,:b3,]
melody [:d3,:f3,:b3,]
melody [:d3,:f3,:b3,]
melody [:d3,:a3,:c4,]


play :r
play :e5

live_loop:add_note_2 do
  6.times do
    sample  :hat_tap
    sleep 2
  end
  stop
end

sleep 2
live_loop:add_note do
  7.times do
    sample :elec_blup, amp: 0.5
    sleep 1
    sample :elec_blup, amp: 1
  end
  stop
end

sleep 1
live_loop:add_note_3 do
  5.times do
    sample :bd_tek
    sleep 1
  end
  stop
end


#measure 5
play :e2, sustain: 2, amp: 3
sleep 1
play :e4, amp: 1.5
sleep 1.5
play :e4, amp: 1.5
sleep 0.3
play :g4, amp: 1.5
sleep 0.3
play :f4, amp: 1.5
sleep 0.3
play :g4, amp: 1.5
sleep 0.3
play :b4, amp: 1.5
sleep 0.3
play :b4, amp: 1.5
sleep 0.3
play :a4, amp: 1.5
sleep 0.3
play :b4, amp: 1.5
sleep 0.3
sleep 1


#measure 6
8.times do
  play(msix[s])
  sleep 0.3
  s = s + 1
end
sample ending

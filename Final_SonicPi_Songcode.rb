# Welcome to Sonic Pi
use_bpm 120
use_synth :blade
note = 1

car_engine = "C:/Users/kelly_atlas/Downloads/Car Engine Rev Sound Effect (HD).mp3"
light = "C:/Users/kelly_atlas/Documents/Audacity/lightenunfg1.wav"
party = "C:/Users/kelly_atlas/Documents/Audacity/party.wav"

define :tok_1_3 do
  play :bb2
  sleep 0.75
  play :bb2
  sleep 0.75
  play :bb2
  sleep 0.5
  sleep 1.5
  play :bb2
  sleep 0.5
end


tok = [:c3, :c3, :d3, :d3, :d3]
sleepTimes = [0.75,0.75, 1, 0.75, 0.75]
t = 0   #index = t


sample party
sleep 5
sample car_engine
sleep 9

2.times do
  live_loop :tik do
    3.times do
      #4.5 beats
      9.times do
        play :d5
        sleep 0.5
      end
      #7.5 beats
      play :r
      sleep 0.5
      14.times do
        play :d5
        sleep 0.5
      end
    end
    
    stop
  end
  
  sleep 12
  
  live_loop :tok do
    2.times do
      #measure1b
      tok_1_3
      #measure2b
      5.times do
        play (tok[t])
        sleep(sleepTimes[t])
        t = t + 1
        print(t)
      end
      t=0
      tok_1_3
    end
    stop
  end
  
  
  sleep 7
  
  live_loop:new_note_one do
    4.times do
      sample :bass_drop_c, amp: 0.1
      sleep 1
      sample :bass_drop_c, amp: 0.2
      sleep 1
      sample :bass_drop_c, amp: 0.3
      sleep 1
      sample :bass_drop_c, amp: 0.4
      sleep 1
    end
    stop
  end
  
  sleep 4
  live_loop:new_note_two do
    5.times do
      sample  :elec_ping, amp: 0.4
      sleep 2
    end
    stop
  end
  
  sleep 7
  live_loop:new_note_three do
    5.times do
      sample  :hat_bdu
      sleep 4
    end
    stop
  end
end
sleep 14
sample light

# Welcome to Sonic Pi#clint eastwood
use_bpm 90


use_synth :blade

msix = [:e5, :e4, :e4, :e4, :g4, :b4, :b4, :b4]
s = 0   #index = s
laugh = "C:/Users/kelly_atlas/Documents/Audacity/Actual_laugh.wav"
remix ="C:/Users/kelly_atlas/Documents/Audacity/Remix.wav"
ending = "C:/Users/kelly_atlas/Documents/Audacity/fadeoutsong.wav"


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
sample ending, amp: 2

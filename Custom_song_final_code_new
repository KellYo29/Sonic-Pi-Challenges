# Welcome to Sonic Pi
use_bpm 120
use_synth :blade
note = 1

car_engine = "C:/Users/kelly_atlas/Downloads/Car Engine Rev Sound Effect (HD).mp3"

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

sample car_engine
sleep 9




live_loop :tik do
  #4.5 beats
  9.times do
    play :d5
    sleep 0.5
  end
  #7 beats
  play :r
  sleep 0.5
  14.times do
    play :d5
    sleep 0.5
  end
  stop
end



live_loop :tok do
  #measure1b
  tok_1_3
  #measure2b
  5.times do
    play(tok[t])
    sleep(sleepTimes[t])
    t = t + 1
    print(t)
  end
  t=0
  tok_1_3
  stop
end


sleep 8
live_loop:new_note_one do
  5.times do
    sample :bass_drop_c, amp: 0.1
    sleep 1
    sample :bass_drop_c, amp: 0.2
    sleep 1
    sample :bass_drop_c, amp: 0.3
    sleep 1
    sample :bass_drop_c, amp: 0.1
    sleep 1
  end
  stop
end

live_loop:new_note_two do
  10.times do
    sample  :elec_ping, amp: 0.4
    sleep 2
  end
  stop
end

sleep 6
live_loop:new_note_three do
  4.times do
    sample  :hat_bdu
    sleep 4
  end
  stop
end

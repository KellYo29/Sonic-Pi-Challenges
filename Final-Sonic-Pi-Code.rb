# Welcome to Sonic Pi
use_bpm 120
use_synth :blade


car_engine = "C:/Users/kelly_atlas/Downloads/Car Engine Rev Sound Effect (HD).mp3"


sample car_engine
sleep 9



live_loop :tik do
  
  9.times do
    play :d5
    sleep 0.5
  end
  play :r
  sleep 0.5
  14.times do
    play :d5
    sleep 0.5
  end
  print("A")
end


#measure1b
live_loop :tok do
  play :bb2
  sleep 0.75
  play :bb2
  sleep 0.75
  play :bb2
  sleep 0.5
  sleep 1.5
  play :bb2
  sleep 0.5
  
  #measure2b
  play :c3
  sleep 0.75
  play :c3
  sleep 0.75
  play :d3
  sleep 1
  play :d3
  sleep 0.75
  play :d3
  sleep 0.75
  
  #measure3b
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

sleep 8
live_loop:new_note_one do
  20.times do
    sample :bass_drop_c, amp: 0.3
    sleep 1
  end
  stop
end

live_loop:new_note_two do
  20.times do
    sample  :elec_ping, amp: 0.4
    sleep 2
  end
  stop
end

sleep 6
live_loop:new_note_three do
  20.times do
    sample  :hat_bdu
    sleep 4
  end
  stop
end


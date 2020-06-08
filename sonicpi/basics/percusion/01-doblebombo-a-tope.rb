r_foot = (ring :drum_bass_hard, :drum_bass_soft, :drum_bass_soft, :drum_bass_soft)
l_foot = (ring :r)
r_hand = (ring :drum_cymbal_soft)
l_hand = (ring :r, :r, :drum_snare_soft, :r)
live_loop :percusion_test do
  i = tick
  sample r_foot[i]
  sample r_hand[i]
  sample l_hand[i]
  sleep 0.125
  sample :drum_bass_soft
  sleep 0.125
end


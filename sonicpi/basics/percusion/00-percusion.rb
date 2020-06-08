bombo_caja = [:drum_bass_hard, :drum_snare_soft]
live_loop :drums do
  sample :drum_cymbal_soft, amp: 0.5
  sample bombo_caja.tick
  sleep 0.125
  sample :drum_bass_soft
  sleep 0.1250
  sample :drum_bass_soft
  sleep 0.1250
  sample :drum_bass_soft
  sleep 0.1250
end

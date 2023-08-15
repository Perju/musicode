# Blues 12 barras en Sol menor
percls = [:drum_bass_hard, :drum_snare_hard]

live_loop :perc do
  sample :drum_cymbal_closed
  sample percls.tick
  sleep 0.5
  sample :drum_cymbal_closed
  sleep 0.5
end

acordes = (ring chord(:g4, :minor), chord(:g4, :minor), chord(:g4, :minor),chord(:g4, :minor),
           chord(:c4, :minor), chord(:c4, :minor), chord(:g4, :minor),chord(:g4, :minor),
           chord(:d4, :minor7),chord(:c4, :minor7),chord(:g4, :minor),chord(:d4, :minor7))

live_loop :bassmony do
  acorde = acordes.tick
  4.times do
    use_synth :subpulse
    play acorde.tick, pitch: -24
    use_synth :blade
    play acorde
    sleep 0.5
    play acorde
    sleep 0.25
    play acorde
    sleep 0.25
  end
end


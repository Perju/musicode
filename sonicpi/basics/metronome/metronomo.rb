## Reproduce un golpe principal y despues los restantes
# Indica los bpms
use_bpm 80

sonidos = synth_names;
live_loop :metronome do
  with_synth  :pulse do

    # Primer golpe
    with_synth_defaults amp: 1.2 do
      play :C5
      sleep 1
    end

    # Golpes restantes
    with_synth_defaults amp: 1.0 do
      3.times do
        play :C
        sleep 1
      end
    end
  end
end

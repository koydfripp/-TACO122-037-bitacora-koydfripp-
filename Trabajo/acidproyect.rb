use_bpm 200

# Fondo ambiental espacial (sin efectos)
live_loop :ambiente do
  sample :ambi_lunar_land, amp: 0.5
  sleep sample_duration :ambi_lunar_land
end

live_loop :bajo_pesado do
  use_synth :fm
  with_fx :lpf, cutoff: rrand(50, 80) do
    with_fx :distortion, distort: 0.6 do
      note = [:e2, :g2, :d2].choose
      synth :fm, note: note, release: 0.4, depth: 2, divisor: 1, amp: 1.2
    end
  end
  sleep [0.5, 0.75].choose
end


# Base rítmica con Amen Break y distorsión compartida
with_fx :distortion, distort: 0.9 do
  live_loop :ritmo do
    sample :loop_amen, rate: 1.2, amp: 1.2
    sleep sample_duration :loop_amen, rate: 1.2
  end
end

# Sintetizador agudo con reverb compartido
with_fx :reverb, room: 0.9 do
  live_loop :sintetizador_agudo do
    synth :tech_saws, note: scale(:e4, :minor).choose, release: 0.2, amp: 0.9
    sleep [0.125, 0.25, 0.375].choose
  end
end

# Sintetizador tipo Moog con patrón y disparo aleatorio
melodia = [:e4, :g4, :b4, :d5, :g5, :e5]

with_fx :ping_pong, phase: 0.25 do
  live_loop :moog_fluctuante do
    if one_in(3)
      synth :subpulse, note: melodia.choose, release: 0.3, cutoff: rrand(90, 130), amp: 1.5
    end
    sleep [0.25, 0.5, 0.75].choose
  end
end

# Golpes percusivos aleatorios (sin efectos)
live_loop :golpes do
  s = [:drum_heavy_kick, :drum_snare_hard, :drum_cymbal_closed].choose
  sample s, amp: rrand(0.5, 1.5)
  sleep [0.25, 0.125, 0.375, 0.5].choose
end

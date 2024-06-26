#!/bin/sh

# Função para alternar as cores dos LEDs entre branco e azul
set_alternating_led_colors() {
    # Configurar para branco
    echo 1 > /sys/class/led_anim/effect_enable 
    echo "FFFFFF " > /sys/class/led_anim/effect_rgb_hex_lr
    echo 1 > /sys/class/led_anim/effect_cycles_lr
    echo 2000 > /sys/class/led_anim/effect_duration_lr
    echo 1 > /sys/class/led_anim/effect_lr
    sleep 2
    
    # Configurar para azul
    echo 1 > /sys/class/led_anim/effect_enable 
    echo "0000FF " > /sys/class/led_anim/effect_rgb_hex_lr
    echo 1 > /sys/class/led_anim/effect_cycles_lr
    echo 2000 > /sys/class/led_anim/effect_duration_lr
    echo 1 > /sys/class/led_anim/effect_lr
    sleep 2
}

# Loop principal
while true; do
    set_alternating_led_colors
    sleep 1
done

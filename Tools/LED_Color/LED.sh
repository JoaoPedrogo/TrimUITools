#!/bin/sh

# Função para alternar as cores dos LEDs entre branco e azul
set_alternating_led_colors() {
    echo 1 > /sys/class/led_anim/effect_enable 
    echo "FFFFFF" > /sys/class/led_anim/effect_rgb_hex_lr
    echo 1 > /sys/class/led_anim/effect_cycles_lr
    echo 10000 > /sys/class/led_anim/effect_duration_lr
    echo 1 >  /sys/class/led_anim/effect_lr
    sleep 10
    
    echo 1 > /sys/class/led_anim/effect_enable 
    echo "0000FF" > /sys/class/led_anim/effect_rgb_hex_lr
    echo 1 > /sys/class/led_anim/effect_cycles_lr
    echo 10000 > /sys/class/led_anim/effect_duration_lr
    echo 1 >  /sys/class/led_anim/effect_lr
    sleep 10
}

# Loop principal
while true; do
    set_alternating_led_colors
    sleep 5
done

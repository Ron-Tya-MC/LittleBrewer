# active_effect内にこのエフェクトが存在するかチェック
    $execute unless data entity @s active_effects[{id:"$(id)",amplifier:$(amplifier)b,duration:$(effect_duration)}] unless data entity @s active_effects[{id:"minecraft:$(id)",amplifier:$(amplifier)b,duration:$(effect_duration)}] run scoreboard players set #remove LittleBrewer_Core 1
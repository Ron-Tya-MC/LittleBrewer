# エフェクトを付与
    $execute store success score #success LittleBrewer_Core if data storage little_brewer: _.Argument{hide_particles:1b} run effect give @s $(id) $(second) $(amplifier) true
    $execute store success score #success LittleBrewer_Core if data storage little_brewer: _.Argument{hide_particles:0b} run effect give @s $(id) $(second) $(amplifier) false

# 成功したらOMDに保存
    execute if score #success LittleBrewer_Core matches 1 run function little_brewer:core/effect_modify/ with storage little_brewer: _.Argument
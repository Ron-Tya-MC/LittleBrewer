# OMDの情報を編集する
    $data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].little_brewer.active_effects[{id:"$(id)"}].amplifier set value $(amplifier)
    $data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].little_brewer.active_effects[{id:"$(id)"}].remain_duration set value $(duration)
    $execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].little_brewer.active_effects[{id:"$(id)"}].effect_duration int 1 run scoreboard players get #effect_duration LittleBrewer_Core
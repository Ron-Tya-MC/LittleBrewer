# OMDの情報を編集する
    $data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].little_brewer.active_effects[{id:"$(id)"}].remain_duration set from storage little_brewer: _.Argument.duration
    $execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].little_brewer.active_effects[{id:"$(id)"}].effect_duration int 1 run #effect_duration LittleBrewer_Core
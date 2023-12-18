# OMDに情報を追加する
    data modify storage little_brewer: temp.append set value {id:"",amplifier:0b,remain_duration:0,effect_duration:0}
    data modify storage little_brewer: temp.append.id set from storage little_brewer: _.Argument.id
    data modify storage little_brewer: temp.append.amplifier set from storage little_brewer: _.Argument.amplifier
    data modify storage little_brewer: temp.append.remain_duration set from storage little_brewer: _.Argument.duration
    execute store result storage little_brewer: temp.append.effect_duration int 1 run scoreboard players get #effect_duration LittleBrewer_Core

    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].little_brewer.active_effects append from storage little_brewer: temp.append

# tempデータ削除
    data remove storage little_brewer: temp
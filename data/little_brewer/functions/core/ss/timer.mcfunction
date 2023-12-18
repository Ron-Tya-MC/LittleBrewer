# 残り時間を1減らす
    execute store result storage little_brewer: temp.active_effects[0].remain_duration int 0.9999999999999999 store result storage little_brewer: temp.zero_check int 0.9999999999999999 run data get storage little_brewer: temp.active_effects[0].remain_duration
    execute store result storage little_brewer: temp.active_effects[0].effect_duration int 0.9999999999999999 run data get storage little_brewer: temp.active_effects[0].effect_duration

# エフェクトが消えていたらデータも削除
    function little_brewer:core/ss/search_effect/check with storage little_brewer: temp.active_effects[0]

# 残り時間が0ならエフェクト削除
    execute if data storage little_brewer: temp{zero_check:0} run scoreboard players set #remove LittleBrewer_Core 1
    execute unless score #remove LittleBrewer_Core matches 1 run data modify storage little_brewer: temp.active_effects append from storage little_brewer: temp.active_effects[0]
    execute if data storage little_brewer: temp{zero_check:0} run function little_brewer:core/ss/search_effect/remove with storage little_brewer: temp.active_effects[0]
    data remove storage little_brewer: temp.active_effects[0]

# 回数を1減らし再起
    scoreboard players reset #remove LittleBrewer_Core
    scoreboard players remove #length LittleBrewer_Core 1
    execute if score #length LittleBrewer_Core matches 1.. run function little_brewer:core/ss/timer
# データを一旦別の場所へ
    function #oh_my_dat:please
    data modify storage little_brewer: temp.active_effects set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].little_brewer.active_effects

# 残り時間をそれぞれ1tickずつ減らす
    execute store result score #length LittleBrewer_Core run data get storage little_brewer: temp.active_effects
    function little_brewer:core/ss/timer

# 中身が空ならデータを消しタグを外す
    execute unless data storage little_brewer: temp.active_effects[0] run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].little_brewer.active_effects
    execute unless data storage little_brewer: temp.active_effects[0] run tag @s remove LittleBrewer.effected
    execute unless data storage little_brewer: temp.active_effects[0] run scoreboard players remove #effected_entities LittleBrewer_Core 1

# 中身が空でないならOMDに戻す
    execute if data storage little_brewer: temp.active_effects[0] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].little_brewer.active_effects set from storage little_brewer: temp.active_effects

# スコアリセット
    scoreboard players reset #length LittleBrewer_Core

# tempデータ削除
    data remove storage little_brewer: temp
# OMDの情報を更新
    function #oh_my_dat:please
    $execute store result score #_ LittleBrewer_Core if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].little_brewer.active_effects[{id:"$(id)"}]
    execute unless entity @s[tag=LittleBrewer.effected] run scoreboard players add #effected_entities LittleBrewer_Core 1
    execute unless entity @s[tag=LittleBrewer.effected] run tag @s add LittleBrewer.effected

    execute if score #_ LittleBrewer_Core matches 1.. run function little_brewer:core/effect_modify/modify with storage little_brewer: _.Argument
    execute if score #_ LittleBrewer_Core matches ..0 run function little_brewer:core/effect_modify/append

# スコアリセット
    scoreboard players reset #_ LittleBrewer_Core

# ssループを登録
    execute if score #effected_entities LittleBrewer_Core matches 1 run schedule function little_brewer:core/ss/ 1t append
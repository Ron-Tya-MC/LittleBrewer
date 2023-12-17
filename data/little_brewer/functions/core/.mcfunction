# 秒数を計算
    execute store result score #diff LittleBrewer_Core run data get storage little_brewer: _.Argument.duration
    scoreboard players operation #diff LittleBrewer_Core %= #20 LittleBrewer_Core
    execute store result score #second LittleBrewer_Core run data get storage little_brewer: _.Argument.duration 0.05
    execute unless score #diff LittleBrewer_Core matches 0 run scoreboard players add #second LittleBrewer_Core 1
    execute store result storage little_brewer: _.Argument.second int 1 run scoreboard players get #second LittleBrewer_Core

    scoreboard players operation #effect_duration LittleBrewer_Core = #second LittleBrewer_Core
    scoreboard players operation #effect_duration LittleBrewer_Core *= #20 LittleBrewer_Core
    scoreboard players add #effect_duration LittleBrewer_Core 1

# エフェクトを付与
    function little_brewer:core/give with storage little_brewer: _.Argument

# スコアリセット
    scoreboard players reset #diff LittleBrewer_Core
    scoreboard players reset #second LittleBrewer_Core
    scoreboard players reset #success LittleBrewer_Core
    scoreboard players reset #effect_duration LittleBrewer_Core

# tempデータ削除
    data remove storage little_brewer: _
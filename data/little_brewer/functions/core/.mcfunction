# 秒数を計算
    execute store result score #duration LittleBrewer_Core run data get storage little_brewer: _.Argument.duration
    scoreboard players operation #duration LittleBrewer_Core %= #20 LittleBrewer_Core
    execute store result score #second LittleBrewer_Core run data get storage little_brewer: _.Argument.duration 0.05
    execute unless score #duration LittleBrewer_Core matches 0 run scoreboard players add #second LittleBrewer_Core 1
    execute store result storage little_brewer: _.Argument.second int 1 run scoreboard players get #second LittleBrewer_Core

# エフェクトを付与
    function little_brewer:core/give with storage little_brewer: _.Argument

# スコアリセット
    scoreboard players reset #duration LittleBrewer_Core
    scoreboard players reset #second LittleBrewer_Core
    scoreboard players reset #success LittleBrewer_Core

# tempデータ削除
    data remove storage little_brewer: _
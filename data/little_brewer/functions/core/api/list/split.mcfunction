# データコピー
    data modify storage little_brewer: _.Argument set from storage little_brewer: Arguments[0]

# 引数チェック
    execute unless data storage little_brewer: _.Argument.id run tellraw @a [{"text":"ERROR >> ","color":"red"},{"text":"引数","color":"white"},{"text":"id","color":"aqua"},{"text":"が指定されていません","color":"white"}]
    execute unless data storage little_brewer: _.Argument.duration run data modify storage little_brewer: _.Argument.duration set value 20
    execute unless data storage little_brewer: _.Argument.amplifier run data modify storage little_brewer: _.Argument.amplifier set value 0b
    execute unless data storage little_brewer: _.Argument.hide_particles run data modify storage little_brewer: _.Argument.show_particles set value 1b

# Healthを持つEntityであれば実行
    execute if data storage little_brewer: _.Argument.id if data entity @s Health run function little_brewer:core/

# 使い終わったら消す
    data remove storage little_brewer: Arguments[0]

# 残っていれば再起
    scoreboard players remove #arguments_length LittleBrewer_Core 1
    execute if score #arguments_length LittleBrewer_Core matches 1.. run function little_brewer:core/api/list/split
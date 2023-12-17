# 各エンティティで実行
    execute as @e[tag=LittleBrewer.effected] run function little_brewer:core/ss/each

# ssループ
    execute if score #effected_entities LittleBrewer_Core matches 1.. run schedule function little_brewer:core/ss/ 1t append
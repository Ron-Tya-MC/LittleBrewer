#> little_brewer:api/
#
# エフェクトをtick単位で付与できるライブラリ
#
# @input storage little_brewer:
#   Argument.id: string
#       effectのid
#   Argument.duration: int
#       effectの効果時間 tick数での指定
#   Argument.amplifier: byte
#       effectの効果の強さ 実際のレベル-1
#   Argument.hide_particles: boolean
#       エフェクトのパーティクルを表示しなくするか
# 各引数はListにして渡すことも可能
#
# @api

# Oh My Datが入っていなければ中止
    execute unless data storage oh_my_dat: _ run tellraw @a [{"text":"ERROR >> ","color":"red"},{"text":"Oh! My Dat!が導入されていません","color":"white"}]
    execute unless data storage oh_my_dat: _ run return 0

# Listかどうかで分岐
    execute if data storage little_brewer: Argument[0] run function little_brewer:core/api/list/
    execute unless data storage little_brewer: Argument[0] run function little_brewer:core/api/single
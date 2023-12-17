#> little_brewer:api/
#
# @input storage little_brewer:
#   Argument.id: string
#       effectのid
#   Argument.duration: int
#       effectの効果時間 tick数での指定
#   Argument.amplifier: byte
#       effectの効果の強さ 実際のレベル-1
#   Argument.hide_particles: boolean
#       エフェクトのパーティクルを表示するか
# @api

execute if data storage little_brewer: Argument[0] run function little_brewer:core/api/list/
execute unless data storage little_brewer: Argument[0] run function little_brewer:core/api/single
# コピーして再起実行
    data modify storage little_brewer: Arguments set from storage little_brewer: Argument
    execute store result score #arguments_length LittleBrewer_Core run data get storage little_brewer: Arguments
    function little_brewer:core/api/list/split

# スコアリセット
    scoreboard players reset #arguments_length LittleBrewer_Core

# tempデータ削除
    data remove storage little_brewer: Arguments
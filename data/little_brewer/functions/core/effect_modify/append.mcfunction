# OMDに情報を追加する
    data modify storage little_brewer: temp.append set value {id:"",remain_duration:0}
    data modify storage little_brewer: temp.append.id set from storage little_brewer: _.Argument.id
    data modify storage little_brewer: temp.append.remain_duration set from storage little_brewer: _.Argument.duration

    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].little_brewer.active_effects append from storage little_brewer: temp.append

# tempデータ削除
    data remove storage little_brewer: temp
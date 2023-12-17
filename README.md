# Little_Brewer

エフェクトをtick単位で付与できるライブラリ

</div>

## 対応バージョン

- 1.20.2~1.20.4

## ダウンロード

[こちら](https://github.com/Ron-Tya-MC/LittleBrewer/releases)からダウンロードできます

## 依存ライブラリ

このライブラリを使用するためには以下のデータパックを導入する必要があります

- [Oh! My Dat!](https://github.com/Ai-Akaishi/OhMyDat) 赤石愛 氏

## 使い方

### 引数を指定する

storageに値を入れることでエフェクトの内容を変更できます
必須の部分以外で未記入の値があれば初期値が代入されます

| 引数名 | 型 | 初期値 | 説明 |
|:---|:---|:---:|:---|
| Argument.id | string | - | effectのid, 必須 |
| Argument.duration | int | 20 | effectの効果時間, tick数での指定 |
| Argument.amplifier | byte | 0b | effectの効果の強さ, 実際のレベル-1 |
| Argument.hide_particles | boolean | false | エフェクトのパーティクルを表示しなくするか |

#### 例

```mcfunction
data modify storage little_brewer: Argument set value {id:"speed",duration:50,amplifier:0b,hide_particles:true}
```

この場合パーティクルを表示しないレベル1の移動速度増加が50tick付与されます

```mcfunction
data modify storage little_brewer: Argument set value [{id:"strength",duration:100,amplifier:2b,hide_particles:0b},{id:"resistance",duration:150,amplifier:0b,hide_particles:0b}]
```

引数はListにして指定することもでき、この場合パーティクルを表示するレベル3の攻撃力増加が100tickとレベル1の耐性が150tick付与されます

### コマンドを実行

```mcfunction
function little_brewer:api/
```

## 補足

### 既に同じエフェクトを持っている場合

通常の/effectコマンドと同じように、既に持っているエフェクトのレベルが指定したレベルより低いか、レベルが同じで効果時間が短ければ書き換えます

## 連絡

[@Ron_Tya_MC](https://twitter.com/Ron_Tya_MC)まで

## ライセンス

[CC0-1.0](LICENSE)

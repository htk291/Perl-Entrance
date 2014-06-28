# Perl入学式 #02

## おまじない

* use string -> 厳密な書式、未定義値を警告
* use warnings -> 望ましくない記述を警告

## 変数

### スカラ変数

$cala

## 標準入力

### chomp

`chomp`で改行文字を削除する

数値は`chomp`しなくても計算できる？  
    →演算子は先頭の数値をみて、後ろの文字列を無視しようとするので  
    たまたまうまくいってるだけ。`chomp`したほうがよい

`chomp`の結果はchompした件数なので(cf. 初めてのPerl p48)

```
chomp (my $num1 = <STDIN>);
```

こんな感じにしなくちゃいけない

## 演算子

## 定数
 
``` constant.pl
use constant Pi => 3.14;
Pi = 5;
```

```
Can't modify constant item in scalar assignment at 9x_constant.pl line 3, near "5;"
Execution of 9x_constant.pl aborted due to compilation errors.
```

## 制御構文

`switch`はないとおもえ！
Switch.pmもつかうな。

→ if-elsif-else でカバー

### 文字列比較

文字列の比較順は`man ascii`で順番みれる

#### lc, uc

    ```
    my $answer = lc 'MILKYHOLMES';
    print $answer;  # => milkyholmes
    ```
#### and,or / &&,||

演算子の優先順位が違う  
だいたい`&&`と`||`をつかう

## 配列

@rray

### reverse関数

```
my @array = reverse(1..5);
print "@array";   # => 5 4 3 2 1
```

* `@array`だと、54321
* `"@array"`だと、5 4 3 2 1

## for文

```
for my $i ( 0..$#array ) {
    print "$array[$i]\n";
}

for my $i ( 0.. scalar @array -1 ) {
    print "$array[$i]\n";
}
```


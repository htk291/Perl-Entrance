# Perl入学式 #03

## 02の復習

標準入力の後は`chomp`忘れないように！！１

```
chomp (my $input = <INPUT>);
```

## split & join

```
split /\/ "/usr/bin/env perl"   #=> "[空白]" "user" "bin" "env perl"  *始めのスラッシュは有効
split /\/ "/usr/bin/env perl/"  #=> "[空白]" "user" "bin" "env perl"  *最後のスラッシュは無視される
```

## リファレンス

リファレンスの参照から、コピーする場合

```
my $papix  = { age => 25 };
my $papix2 = { %$papix };
```



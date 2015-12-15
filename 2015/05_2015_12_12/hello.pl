#!/usr/bin/env perl
use Mojolicious::Lite;

# Documentation browser under "/perldoc"
plugin 'PODRenderer';

get '/' => sub {
  my $self = shift;
  $self->stash(title => 'Hello');
  $self->render(template => 'index');
};

get '/profile' => sub {
    my $self = shift;
    $self->stash(name     => 'htk291');
    $self->stash(hobby    => 'anime');
    $self->stash(language => 'Perl');
    #$self->render(template => 'profile');
    $self->render('profile');
};

get '/fizzbuzz' => sub {
    my $self = shift;
    $self->render('fizzbuzz');
};

app->start;
__DATA__

@@ index.html.ep
% layout 'default'; # Comment, useful for debugging
<h1>Welcome to the Mojolicious real-time web framework!</h1>
To learn more, you can browse through the documentation
<%= link_to 'here' => '/perldoc' %>.

@@ layouts/default.html.ep
<!DOCTYPE html>
<html>
  <head><title><%= title %></title></head>
  <body><%= content %></body>
</html>

@@ fizzbuzz.html.ep
<html>
<head><title>FizzBuzz</title></head>
<body>

%  for my $i (1 .. 100) {
%    if ($i % 15 == 0) {
%=      'FizzBuzz';
%    } elsif ($i % 3 == 0) {
%=      'Fizz';
%    } elsif ($i % 5 == 0) {
%=      'Buzz';
%    } else {
%=      $i;
%    }
     <br/>
%  }
</body>
</html>

@@ profile.html.ep # 新しいテンプレートを用意する
% layout 'default';
% title '出力'; # タイトルを変更
%= form_for '/post' => method => 'POST' => begin # 投稿先などを変更
  %= text_field 'body'
  %= submit_button '投稿する'
% end
<p><%= $entry %></p>

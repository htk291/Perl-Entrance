#!/usr/bin/env perl
use Mojolicious::Lite;

# Documentation browser under "/perldoc"
plugin 'PODRenderer';

get '/' => sub {
  my $c = shift;
  $c->render(template => 'index');
};

get '/profile' => sub {
  my $self = shift;
  $self->stash(name  => 'htk291');
  $self->stash(hobby => 'pripara');
  $self->stash(language => 'perl');

  $self->render('profile');
};

get '/fizzbuzz/:num' => {num => 100 } => sub {
    my $self = shift;
    $self->render('fizzbuzz');
};

app->start;
__DATA__

@@ index.html.ep
% layout 'default';
% title 'Welcome';
Welcome to the Mojolicious real-time web framework!

@@ fizzbuzz.html.ep
<html>
<head><title>fizzbuzz</title></head>
<body style='padding: 30px;'>
    % for my $i (1..$num) {
        <%= 'Fizz' if ($i % 3 == 0); %><%= 'Buzz' if ($i % 5 == 0); %>
        <%=  $i    if ($i % 3 != 0 && $i % 5 != 0); %>
        <br/>
    % }
</body>
</html>

@@ profile.html.ep
<html>
<head><title><%= $name %>のプロフィール</title></head>
<body style='padding: 30px;'>
  私の名前は<%= $name %>です.<br>
  趣味は<%= $hobby %>で, 好きなプログラミング言語は<%= $language %>です.
</body>
</html>

@@ layouts/default.html.ep
<!DOCTYPE html>
<html>
  <head><title><%= title %></title></head>
  <body><%= content %></body>
</html>


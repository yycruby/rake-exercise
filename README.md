# Remembering Jim Weirich

Jim Weirich was a beloved and prolific cornerstone of the Ruby community.
November 18th would have been his 59th birthday, let's spend a bit of time
looking back on the things he contributed.

 - [Jim Weirich on Wikipedia](https://en.wikipedia.org/wiki/Jim_Weirich)
 - [Talks on ConFreaks](http://confreaks.tv/presenters/jim-weirich)
 - [Weirich Memorial Fund](https://www.weirichfund.org)


## Rake

The most widely used tool that Jim built is of course Rake, a Ruby version of
the ubiquitous `make`. If you've built a Rails app, you've used Rake to run your
migrations and do other things.

 - [On GitHub](https://github.com/ruby/rake)
 - [Rake Field Manual](http://www.rakefieldmanual.com)
 - [Rake on Ruby Tapas](http://www.rubytapas.com/episodes?filter=free)
 - [Basic Rake @ Confreaks](http://confreaks.tv/videos/railsconf2012-basic-rake)
 - [Power Rake @ Confreaks](http://confreaks.tv/videos/goruco2012-power-rake)


## Builder

Working with XML is cumbersome, but it doesn't have to be. Of course the better
way is to generate your XML programmatically, which is exactly what `builder` is
for. Nowadays you probably use JSON, which can be generated with `jbuilder`,
inspired by `builder`.


## FlexMock

While not as widely used as `rspec-mocks` or `mocha`, it's still worth looking
into `flexmock` for its simplicity.


## Argus

Before he passed away, Jim was focused on using Ruby with robotics. He gave a
few talks about controlling Parrot AR drones with this library.


## Exercise: Write your own Rake

Let's see if we can write a basic version of Rake based on a set of existing
tests. We only need to worry about the core concepts, not the power features or
edge cases.

Clone this repo and install dependencies with `bundle install`. Start by running
the specs with `rake spec`, which should immediately fail. Now open `lib/rake.rb` in your editor and try to get the first spec passing.

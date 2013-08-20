## Generate Random Japanese

[![Build Status](https://travis-ci.org/tcnksm/random_japanese.png?branch=master)](https://travis-ci.org/tcnksm/random_japanese)
[![Gem Version](https://badge.fury.io/rb/random_japanese.png)](http://badge.fury.io/rb/random_japanese)
[![Dependency Status](https://gemnasium.com/tcnksm/random_japanese.png)](https://gemnasium.com/tcnksm/random_japanese)

指定した文字数の日本語をランダムで出力するライブラリです。
漢字は常用漢字のみを出力します。テストなどで使って下さい。

RandomJapanese generate random charactors in certain length.
Charactors are Kanji or Hiragana, Katakana. Kanji is only daily-usage.
You can use it in test. 

#### Installation

Add this line to your application's Gemfile:

    gem 'random_japanese'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install random_japanese

#### Usage

    require 'random_japanese'
    rj = RandomJapanese.new
    rj.katakana(10)             # => "バユョヅオセミハシャ"
    rj.hiragana(10)             # => "まかぞぬざぶゃでばる"
    rj.kanji(10)                # => "撤絵占署拓燃価態小誉"

#### Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

#### Release

1. Bundle it (`bundle --path vendor/bundle --binstubs .bundle/bin`)
2. Build it (`gem build random_japanese.gemspec`)
3. Push it (`gem push random_japanese-X.X.X.gem`)
    - To push , gemcutter is needed (`gem install gemcutter`)

#### ToDo

- when using `all`, Kanji is generated too much

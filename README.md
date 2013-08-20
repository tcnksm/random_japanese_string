## Generate Random Japanese String
[![Build Status](https://travis-ci.org/tcnksm/random_japanese_string.png?branch=master)](https://travis-ci.org/tcnksm/random_japanese_string)

指定した文字数の日本語文字列をランダムで出力するライブラリです．
出力文字は，ひらがな，カタカナ，常用漢字，それらの統合どれかを選択できます．
テストなどに使ってください．

RandomJapaneseString generate random Japanese strings in certain length which you set.
Strings are Kanji, Hiragana, Katakana or mix. Kanji is only daily-usage.
You can use it in test. 

#### Installation

Add this line to your application's Gemfile:

    gem 'random_japanese_string'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install random_japanese_string

#### Usage

    require 'random_japanese_string'
    rj = RandomJapaneseString.new
    rj.katakana(10)             # => "バユョヅオセミハシャ"
    rj.hiragana(10)             # => "まかぞぬざぶゃでばる"
    rj.kanji(10)                # => "撤絵占署拓燃価態小誉"
    rj.generate(10)             # => "みほ峠対涙塗ガ友そる"

or

    require 'random_japanese_string'
    RandomJapaneseString.katakana(10)
    RandomJapaneseString.hiragana(10)
    RandomJapaneseString.kanji(10)    
    
#### Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

#### Release

1. Bundle it (`bundle --path vendor/bundle --binstubs .bundle/bin`)
2. Build it (`gem build random_japanese_string.gemspec`)
3. Push it (`gem push random_japanese_sgring-X.X.X.gem`)
    - To push, you should install gemcutter (`gem install gemcutter`)

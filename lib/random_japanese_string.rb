# -*- coding: utf-8 -*-
require "random_japanese/version"
require "yaml"

class RandomJapanese
  HIRA = YAML.load_file(File.expand_path(File.join('..', 'data', 'hiragana.yml'), __FILE__))
  KATA = YAML.load_file(File.expand_path(File.join('..', 'data', 'katakana.yml'), __FILE__))
  KANJI = YAML.load_file(File.expand_path(File.join('..', 'data', 'kanji.daily.yml'), __FILE__))
  
  def hiragana size
    HIRA.sample(size).join
  end

  def katakana size
    KATA.sample(size).join
  end

  def kanji size
    KANJI.sample(size).join
  end

  def all size
    (HIRA+KATA+KANJI).sample(size).join
  end
end

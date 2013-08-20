# -*- coding: utf-8 -*-
require "random_japanese_string/version"
require "yaml"

class RandomJapaneseString
  HIRA   = YAML.load_file(File.expand_path(File.join('..', 'data', 'hiragana.yml'), __FILE__))
  KATA   = YAML.load_file(File.expand_path(File.join('..', 'data', 'katakana.yml'), __FILE__))
  KANJI  = YAML.load_file(File.expand_path(File.join('..', 'data', 'kanji.daily.yml'), __FILE__))
  MIX    = HIRA*15 + KATA*15 + KANJI
  
  def self.hiragana size
    HIRA.sample(size).join
  end

  def self.katakana size
    KATA.sample(size).join
  end

  def self.kanji size
    KANJI.sample(size).join
  end

  def self.generate size
    MIX.sample(size).join
  end

  def hiragana size
    HIRA.sample(size).join
  end

  def katakana size
    KATA.sample(size).join
  end

  def kanji size
    KANJI.sample(size).join
  end

  def generate size
    MIX.sample(size).join
  end
end

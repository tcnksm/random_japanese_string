# -*- coding: utf-8 -*-

require "spec_helper"

describe RandomJapanese do
  before do
    @rj = RandomJapanese.new
  end

  describe "#hiragana()" do
    subject { @rj.hiragana(8) }
    its(:length) { should eq 8 }
    it {should match(/^[\p{hiragana}]{8}$/)}
  end

  describe "#katakana()" do
    subject { @rj.katakana(10) }
    its(:length) { should eq 10}
    it {should match(/^[\p{katakana}]{10}$/)}
  end

  describe "#kanji()" do
    subject { @rj.kanji(5) }
    its(:length) { should eq 5}
    it {should match(/^[#{Moji.zen}]{5}$/)}
  end

  describe "#all()" do
    subject { @rj.all(10) }
    its(:length) { should eq 10}
    it {should match(/^[#{Moji.zen}]{10}$/)}
  end
end

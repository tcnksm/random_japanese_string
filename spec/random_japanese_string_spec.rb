# -*- coding: utf-8 -*-

require "spec_helper"

describe RandomJapaneseString do

  describe "class method" do
    describe ".hiragana()" do
      subject { RandomJapaneseString.hiragana(8) }
      its(:length) { should eq 8 }
      it {should match(/^[\p{hiragana}]{8}$/)}
    end
    
    describe ".katakana()" do
      subject { RandomJapaneseString.katakana(10) }
      its(:length) { should eq 10}
      it {should match(/^[\p{katakana}]{10}$/)}
    end

    describe ".kanji()" do
      subject { RandomJapaneseString.kanji(5) }
      its(:length) { should eq 5}
      it {should match(/^[#{Moji.zen}]{5}$/)}
    end
    
    describe ".generate()" do
      subject { RandomJapaneseString.generate(10) }
      its(:length) { should eq 10}
      it {should match(/^[#{Moji.zen}]{10}$/)}
    end

  end

  describe "instance method" do
    
    before { @rj = RandomJapaneseString.new }
    describe "#hiragana()" do
      subject { @rj.hiragana(30) }
      its(:length) { should eq 30 }
      it {should match(/^[\p{hiragana}]{30}$/)}
    end

    describe "#katakana()" do
      subject { @rj.katakana(30) }
      its(:length) { should eq 30}
      it {should match(/^[\p{katakana}]{30}$/)}
    end

    describe "#kanji()" do
      subject { @rj.kanji(30) }
      its(:length) { should eq 30}
      it {should match(/^[#{Moji.zen}]{30}$/)}
    end

    describe "#generate()" do
      subject { @rj.generate(30) }
      its(:length) { should eq 30}
      it {should match(/^[#{Moji.zen}]{30}$/)}
    end
  end
  
end

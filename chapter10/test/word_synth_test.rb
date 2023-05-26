require_relative '../lib/word_synth'
require 'minitest/autorun'

class WordSynthTest < Minitest::Test
  def test_play
    synth = WordSynth.new
    synth.add_effect(Effect.echo(2))
    synth.add_effect(Effect.loud(3))
    synth.add_effect(Effect.reverse)
    assert_equal('!!!YYBBUURR !!!SSII !!!!!NNUUFF', synth.play('Ruby is fun!'))
  end
end

class WordSynthTest < Minitest::Test
  def test_reverse
    assert_equal('ybuR si !nuf', Effect.reverse.call('Ruby is fun!'))
  end

  def test_echo
    assert_equal('RRuubbyy iiss ffuunn!!', Effect.echo(2).call('Ruby is fun!'))
  end

  def test_loud
    assert_equal('RUBY!!! IS!!! FUN!!!!', Effect.loud(3).call('Ruby is fun!'))
  end
end

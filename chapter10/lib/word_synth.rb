class WordSynth
  def initialize
    @effects = []
  end

  def add_effect(effect)
    @effects << effect
  end

  def play(word)
    @effects.inject(word) { |result, effect| effect.call(result) }
  end
end

class Effect
  class << self
    def reverse
      lambda do |words|
        words.split(' ').map(&:reverse).join(' ')
      end
    end

    def echo(count)
      lambda do |words|
        words.each_char.map do |c|
          c == ' ' ? c : c * count
        end.join
      end
    end

    def loud(count)
      lambda do |words|
        words.split(' ').map do |word|
          word.upcase << '!' * count
        end.join(' ')
      end
    end
  end
end
# synth = WordSynth.new
# p synth.play('Ruby is fun!') == 'Ruby is fun!'
#
# synth = WordSynth.new
# synth.add_effect(Effect.reverse)
# p synth.play('Ruby is fun!') == 'ybuR si !nuf'
#
# synth = WordSynth.new
# synth.add_effect(Effect.echo(2))
# p synth.play('Ruby is fun!') == 'RRuubbyy iiss ffuunn!!'
#
# synth = WordSynth.new
# synth.add_effect(Effect.loud(3))
# p synth.play('Ruby is fun!') == 'RUBY!!! IS!!! FUN!!!!'
#
# synth = WordSynth.new
# synth.add_effect(Effect.echo(2))
# synth.add_effect(Effect.loud(3))
# synth.add_effect(Effect.reverse)
# p synth.play('Ruby is fun!') == '!!!YYBBUURR !!!SSII !!!!!NNUUFF'

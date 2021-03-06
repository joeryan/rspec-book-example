require 'spec_helper'

module Codebreaker
  describe Game do
      let(:output) { double('output').as_null_object }
      let(:game) { Game.new(output) }

    describe "#start" do
       
      it "sends a welcome message" do
        output.should_receive(:puts).with('Welcome to Codebreaker!')
        game.start("rbyc")
      end
      
      it "prompts for the first guess" do
        output.should_receive(:puts).with('Enter guess (q to quit):')
        game.start("rbyc")
      end
    end
  
    describe "#incorect_guess" do
      it "sends a mark to output" do
        game.start("rbyc")
        output.should_receive(:puts).with('wwww')
        game.guess("cybr")
      end
    end

    describe "#correct_guess" do
      it "ends game and sends congratulations to output" do
        game.start("rbyc")
        output.should_receive(:puts).with("Congratulations, you guessed correctly!")
        game.guess("rbyc")
      end
    end

    describe "#quit" do
      it "sends a message and the secret to output" do
          game.start('rbyc')
          output.should_receive(:puts).with("The secret code was: rbyc")
          game.quit
      end
    end
  end
end

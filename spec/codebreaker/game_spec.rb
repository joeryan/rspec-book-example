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
        output.should_receive(:puts).with('Enter guess:')
        game.start("rbyc")
      end
    end
  
    describe "#guess" do
      context "with no matches" do
        it "sends a mark with" do
          game.start("rbyc")
          output.should_receive(:puts).with('')
          game.guess("gggg")
        end
      end
      
      context "with one color match" do
        it "sends a mark with" do
          game.start("rbyc")
          output.should_receive(:puts).with('w')
          game.guess("bggg")
        end
      end

      context "with one exact match" do
        it "sends a mark with" do
          game.start("rbyc")
          output.should_receive(:puts).with("b")
          game.guess("rggg")
        end
      end

      context "with two color matches" do
        it "sends a mark with" do
          game.start("rbyc")
          output.should_receive(:puts).with("ww")
          game.guess("grbg")
        end
      end

      context "with two exact matches" do
        it "sends a mark with" do
          game.start("rbyc")
          output.should_receive(:puts).with("bb")
          game.guess("rbgg")
        end
      end

      context "with one color match and one exact match (in that order)" do
        it "sends a mark with" do
          game.start("rbyc")
          output.should_receive(:puts).with("bw")
          game.guess("ybgg")
        end
      end

    end
  end
end

require 'spec_helper'

module Codebreaker
  describe Marker do
    describe '#exact_match_count' do
      context "with no match" do
        it "returns 0" do
          marker = Marker.new('rbyc', 'gggg')
          marker.exact_match_count.should == 0
        end
      end

      context "with 1 exact match" do
        it "returns 1" do
          marker = Marker.new('rbyc', 'rggg')
          marker.exact_match_count.should == 1
        end
      end

      context "with 1 color match" do
        it "returns 0" do
          marker = Marker.new('rbyc', 'grgg')
          marker.exact_match_count.should == 0
        end
      end

      context "with 1 exact matche and 1 color match" do
        it "returns 1" do
          marker = Marker.new('rbyc', 'rgbg')
          marker.exact_match_count.should == 1
        end
      end

      context "with 3 exact matches" do
        it "returns 3" do
          marker = Marker.new('rbyc', 'rbyg')
          marker.exact_match_count.should == 3
        end
      end

      context "with 4 exact matches" do
        it "returns 4" do
          marker = Marker.new('rbyc', 'rbyc')
          marker.exact_match_count.should == 4
        end
      end
    end

    describe "#color_match_count" do
      context "with no matches" do
        it "returns 0" do
          marker = Marker.new('rbyc', 'gggg')
          marker.color_match_count.should == 0
        end
      end

      context "with 1 color match" do
        it "returns 1" do
          marker = Marker.new('rbyc', 'grgg')
          marker.color_match_count.should == 1
        end
      end
      
      context "with 1 exact match" do
        it "returns 0" do
          marker = Marker.new('rbyc', 'rggg')
          marker.color_match_count.should == 0
        end
      end

      context "with 1 exact match and 1 color match" do
        it "returns 1" do
          marker = Marker.new('rbyc', 'rgbg')
          marker.color_match_count.should == 1
        end
      end

      context "with 1 exact match and duplicated color in guess" do
        it "returns 1" do
           marker = Marker.new('rbyc', 'rrgg')
          marker.color_match_count.should == 0
        end
      end
    end
  end
end

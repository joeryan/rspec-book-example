require 'spec_helper'

module Codebreaker
  describe Marker do
    describe "#exact_match_count" do
      context "with no matches" do
        it "returns 0" do
          marker = Marker.new('rbyc','gggg')
          marker.exact_match_count.should ==0
        end
      end

      context "with 1 exact match" do
        it "returns 1" do
          marker = Marker.new('rbyc','rggg')
          marker.exact_match_count.should ==1
        end
      end

      context "with 1 color match" do
        it "returns 0" do
          marker = Marker.new('rbyc','bggg')
          marker.exact_match_count.should ==0
        end
      end

      context "with 1 exact match and 1 number match" do
        it "returns 1" do
          marker = Marker.new('rbyc','rgbg')
          marker.exact_match_count.should ==1
        end
      end
    end

    describe "#color_match_count" do
      context "with no matches" do
        it "returns 0" do
          marker = Marker.new('rbyc','gggg')
          marker.color_match_count.should ==0
        end
      end
      
      context "with 1 color match" do
        it "returns 1" do
          marker = Marker.new('rbyc','bggg')
          marker.color_match_count.should ==1
        end
      end

      context "with 1 exact match" do
        it "returns 0" do
          marker = Marker.new('rbyc','rggg')
          marker.color_match_count.should ==0
        end
      end
  
      context "with 1 exact match and 1 color match" do
        it "returns 1" do
          marker = Marker.new('rbyc','rygg')
          marker.color_match_count.should ==1
        end
      end
    end
  end
end

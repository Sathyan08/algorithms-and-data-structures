require 'spec_helper'
require './lib/services/sorting/arrays/merge_sort'

RSpec.describe Sorting::Arrays::MergeSort do

  describe "::execute" do

    context "when given an array of unsorted elements" do
      let(:input_array) { [3,4,1,5,2] }
      let(:exptected_output) { [1,2,3,4,5] }

      it "returns an array of sorted elements" do
        expect(described_class.execute(input_array)).to eq(exptected_output)
      end

      context "when given an empty array" do
        let(:input_array) { [] }
        let(:exptected_output) { [] }

        it "returns an empty array" do
          expect(described_class.execute(input_array)).to eq(exptected_output)
        end
      end

      context "when given a randomly generated array" do
        let(:input_array) { Array.new(1000) { rand(0..10000) } }
        let(:exptected_output) { input_array.sort }

        it "returns an array of sorted elements" do
          expect(described_class.execute(input_array)).to eq(exptected_output)
        end
      end
    end
  end
end

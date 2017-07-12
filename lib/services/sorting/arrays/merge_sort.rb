module Sorting
  module Arrays
    class MergeSort < Struct.new(:input_array)

      def self.execute(input_array)
        new(input_array).execute
      end

      def execute
        merge_sort(input_array)
      end

      private

      def merge_sort(array)
        return array if array.length <= 1
        midpoint = array.length / 2

        front_half = array[0...midpoint]
        back_half = array[midpoint...array.length]

        merge_sort(front_half)
        merge_sort(back_half)

        merge_halves(front_half, back_half)
      end

      def merge_halves(front_half, back_half)
        output_array = []

        until front_half.empty? || back_half.empty?
          if front_half.first > back_half.first
            output_array << front_half.shift
          else
            output_array << back_half.shift
          end
        end

        output_array + front_half + back_half
      end

    end
  end
end

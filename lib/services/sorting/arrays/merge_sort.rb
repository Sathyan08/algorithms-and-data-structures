module Sorting
  module Arrays
    class MergeSort < Struct.new(:input_array)

      def self.execute(input_array)
        new(input_array).execute
      end

      def self.doc
        '''
          Merge sort is a reliable means of sorting an array with n log(n) time complexity.

          The only downside is that it cannot sort in place, and it must create temporary arrays to perform the sorting.  As a result, it has relatively poor space complexity.
        '''
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

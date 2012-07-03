# encoding: utf-8
module CollectiveIdea #:nodoc:
  module Acts #:nodoc:
    module NestedSet #:nodoc:
      module Descendants
        # Returns the number of nested children of this object.
        def descendants_count
          return (right - left - 1)/2
        end

        def has_descendants?
          !descendants_count.zero?
        end

        def move_by_direction(direction)
          return if direction.blank?

          case direction.to_sym
            when :up, :left then move_left
            when :down, :right then move_right
          end
        end
      end
    end
  end
end

module Outrigger
  module Taggable
    def self.included(base)
      base.extend(ClassMethods)

      def tags
        self.class.tags
      end
    end

    module ClassMethods
      def tag(*new_tags)
        @tags = tags.concat(new_tags).uniq
      end

      def tags
        @tags ||= []
      end
    end
  end
end

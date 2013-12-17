module PaperTrail
  module RSpec
    module Extensions
      # :call-seq:
      # with_versioning
      #
      # enable versioning for specific blocks

      def with_versioning
        was_enabled = ::PaperTrail.enabled?
        ::PaperTrail.enabled = true
        begin
          yield
        ensure
          ::PaperTrail.enabled = was_enabled
        end
      end
    end
  end
end

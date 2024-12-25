# frozen_string_literal: true

module BC
  module Views
    class PageLayout < ::Phlex::HTML
      def initialize(title, back, fwd)
        @title = title
        @back = back
        @fwd = fwd
      end
      def view_template
        render(BaseLayout.new(@title)) do
          p

          p do
            render(NavLinks.new(@back, @fwd))
          end

          yield

          p do
            render(NavLinks.new(@back, @fwd))
          end
        end
      end
    end
  end
end

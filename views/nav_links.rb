# frozen_string_literal: true

module BC
  module Views
    class NavLinks
      def initialize(back, fwd)
        @back = back
        @fwd = fwd
      end

      def view_template
        nav class: 'nav-links' do
          @back ? a(href: @back) { "BACK" } : div
          a(href: "/") { "HOME" }
          @fwd ? a(href: @fwd) { "NEXT" } : div
        end
      end
    end
  end
end

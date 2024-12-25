# frozen_string_literal: true

module BC
  module Views
    class NavLinks < ::Phlex::HTML
      def initialize(back, fwd)
        @back = back
        @fwd = fwd
      end

      def view_template
        nav class: 'nav-links' do
          @back ? a(href: @back) { "BACK" } : div(style: "visibility: hidden") { "BACK" }
          a(href: "/") { "HOME" }
          @fwd ? a(href: @fwd) { "NEXT" } : div(style: "visibility: hidden") { "NEXT" }
        end
      end
    end
  end
end

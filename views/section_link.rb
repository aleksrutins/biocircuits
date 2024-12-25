# frozen_string_literal: true

module BC
  module Views
    class ChevronRightIcon < Phlex::SVG
      def view_template
        svg xmlns: 'http://www.w3.org/2000/svg', height: 24, width: 24, fill: "none", viewBox: "0 0 24 24", stroke_width: 1.5, stroke: "currentColor", class: "size-6" do
          path font_weight: "bold", stroke_linecap: "round", stroke_linejoin: "round", d: "m8.25 4.5 7.5 7.5-7.5 7.5"
        end
      end
    end

    class SectionLink < Phlex::HTML
      def initialize(href)
        @href = href
      end

      def view_template
        a href: @href, class: "section-link" do
          span do
            yield
          end

          render ChevronRightIcon.new
        end
      end
    end
  end
end

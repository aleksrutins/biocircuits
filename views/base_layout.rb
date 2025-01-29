# frozen_string_literal: true

module BC
  module Views
    class BaseLayout < ::Phlex::HTML
      def initialize(title)
        @title = title
      end

      def view_template
        doctype
        html do
          head do
            meta charset: 'utf-8'
            meta name: 'viewport', content: 'width=device-width, initial-scale=1.0'
            title { @title + " | Biocircuits for Mere Mortals" }

            link rel: 'stylesheet', href: '/assets/site.css'

            link rel: "stylesheet", href: "https://cdn.jsdelivr.net/npm/katex@0.16.10/dist/katex.min.css", integrity: "sha384-wcIxkf4k558AjM3Yz3BBFQUbk/zgIYC2R0QpeeYb+TwlBVMrlgLqwRjRtGZiK7ww", crossorigin: "anonymous"
            script defer: true, src: "https://cdn.jsdelivr.net/npm/katex@0.16.10/dist/katex.min.js", integrity: "sha384-hIoBPJpTUs74ddyc4bFZSM1TVlQDA60VBbJS0oA934VSz82sBx1X7kSx2ATBDIyd", crossorigin: "anonymous"
            script defer: true, src: "https://cdn.jsdelivr.net/npm/katex@0.16.10/dist/contrib/mhchem.min.js", integrity: "sha384-ifpG+NlgMq0kvOSGqGQxW1mJKpjjMDmZdpKGq3tbvD3WPhyshCEEYClriK/wRVU0", crossorigin: "anonymous"
            script defer: true, src: "https://cdn.jsdelivr.net/npm/katex@0.16.10/dist/contrib/auto-render.min.js", integrity: "sha384-43gviWU0YVjaDtb/GhzOouOXtZMP/7XUzwPTstBeZFe/+rCMvRwr4yROQP43s0Xk", crossorigin: "anonymous"

            script src: "/assets/math.js"

            script src: "https://unpkg.com/function-plot/dist/function-plot.js"
          end

          body do
            div class: "app" do
              main do
                yield
                footer do
                  p do
                    plain "© 2024 "
                    a(href: "https://farthergate.com") { "Aleks Rūtiņš" }
                  end

                  p {
                    plain "Built with"
                    a(href: "https://docs.farthergate.com/s/phlexite") { "Phlexite" }
                    plain ", " 
                    a(href: "https://mauriciopoppe.github.io/function-plot/") { "Function Plot" }
                    plain ", and "
                    a(href: "https://katex.org/") { "$\KaTeX$" }
                  }
                  p {
                    plain "With the exception of pasted graphics, where the source is noted, this work is licensed under a "
                    a(href: "https://creativecommons.org/licenses/by-nc-sa/4.0/") {"Creative Commons Attribution License CC BY-NC-SA 4.0" }
                    plain ". All code contained herein is licensed under an "
                    a(href: "https://opensource.org/license/mit") { "MIT license" }
                    plain "."
                  }
                end
              end
            end
          end
        end
      end
    end
  end
end

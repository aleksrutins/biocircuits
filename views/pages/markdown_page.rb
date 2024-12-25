module BC
    module Views
        module Pages
            class MarkdownPage < ::Phlex::HTML
                def initialize(content, title, prev, fwd)
                    @content = content
                    @title = title
                    @prev = prev
                    @fwd = fwd
                end

                def view_template
                    render PageLayout.new(@title, @prev, @fwd) do
                        unsafe_raw Kramdown::Document.new(@content).to_html
                    end
                end
            end
        end
    end
end

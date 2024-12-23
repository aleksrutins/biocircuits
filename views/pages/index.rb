# frozen_string_literal: true

module BC
  module Views
    module Pages
      class Index < ::Phlex::HTML
        def sections = {
          "1. Concepts of Biocircuits" => "/concepts",
          "2. The Simplest Circuit" => "/simplest-circuit",
          "3. Repressors & Leaks" => "/repressors",
          "4. Activators" => "/activators",
          "5. Ultrasensitivity & the Hill Function" => "/hill-functions",
          "6. Choosing Between Activators & Repressors" => "/activators-vs-repressors"
        }

        def view_template
          render(::BC::Views::BaseLayout.new("Home")) do
            section do
              h1 class: "welcome" do
                img src: "/assets/biocircuitslogo.svg", alt: "Biological Circuits"
              end

              p(class: "tagline") { "for mere mortals" }
              p(class: "tagline") { "(albeit ones who know a bit of differential calculus)" }

              p do
                strong do
                  span { "DISCLAIMER: This is a school project. I would like to think that the CalTech course I've drawn from has made me somewhat knowledgeable on this topic, but please do not use this for medical advice, etc., etc. If you happen to know what you are doing, and you find a mistake on this website, please " }
                  a(href: "https://github.com/aleksrutins/biocircuits/issues/new") { "tell me about it." }
                  span { " With that said:" }
                end
              end

              unsafe_raw(
<<EOF
  <p class="fade">
 		Biological circuit design is the science of abstracting <em>natural</em> biological processes by defining them
		as you would any synthetic circuit. It also allows us   to create our own circuits out of natural components.
		As <a href="https://biocircuits.github.io">CalTech's open-source Biocircuits course</a> states:
	</p>
	
	<blockquote class="fade fade2">
		Indeed, the marvelous progression of electronic circuit capabilities [...] could well describe biological circuits decades from now. Like electronics, we may will soon be able to program cellular “miracle devices” to create “little gadgets” that address serious environmental and medical applications.
	</blockquote>

	<p class="fade fade3">That CalTech course will be the main source for this presentation. All diagrams are from it.</p>

	<p class="fade fade4">Let's dive in!</p>
EOF
              )

              div class: "fade fade5" do
                sections.each { |title, link|
                  render(SectionLink.new(link)) { title }
                }
                div class: "under-construction" do
                  "More Sections To Come"
                end
              end

              script {
                "
                addEventListener('DOMContentLoaded', () => {
                    if(localStorage.getItem('faded'))
                        document.querySelectorAll('.fade').forEach(it =>
                            it.classList.add('no-delay'));
                    localStorage.setItem('faded', true);
                });
                "
              }
            end
          end
        end
      end
    end
  end
end

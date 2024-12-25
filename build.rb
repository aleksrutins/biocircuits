# frozen_string_literal: true

require 'phlex'
require 'phlexite'
require 'kramdown'

require_relative 'views/base_layout'
require_relative 'views/nav_links'
require_relative 'views/section_link'
require_relative 'views/page_layout'
require_relative 'views/pages/index'
require_relative 'views/pages/markdown_page'

def pages = [
  ['concepts', 'Concepts of Biocircuits'],
  ['simplest-circuit', "The Simplest Circuit"],
  ['repressors', 'Repressors & Leaks'],
  ['activators', 'Activators'],
  ['hill-functions', 'Ultrasensitivity & the Hill Function'],
  ['activators-vs-repressors', 'Choosing Between Activators & Repressors'],
]

Phlexite::Site.new do |s|
  s.mount 'assets', on: '/assets'

  s.page 'index.html', BC::Views::Pages::Index.new

  pages.each_index { |idx|
    page = pages[idx]
    prev = idx <= 0 ? nil : "/#{pages[idx - 1][0]}.html"
    fwd = idx >= pages.length - 1 ? nil : "/#{pages[idx + 1][0]}.html"
    s.page "#{page[0]}.html", BC::Views::Pages::MarkdownPage.new(File.read("./views/pages/#{page[0]}.md"), page[1], prev, fwd)
  }
end
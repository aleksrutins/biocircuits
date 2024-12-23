# frozen_string_literal: true

require 'phlex'
require 'phlexite'

require_relative 'views/base_layout'
require_relative 'views/nav_links'
require_relative 'views/section_link'
require_relative 'views/page_layout'
require_relative 'views/pages/index'

Phlexite::Site.new do |s|
  s.mount 'assets', on: '/assets'

  s.page 'index.html', BC::Views::Pages::Index.new
end
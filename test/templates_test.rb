require 'test_helper'


class TemplatesTest < MiniTest::Spec
  Templates = Cell::Templates

  let (:base) { ['test/fixtures'] }

  # existing.
  it { Templates.new[base, ['bassist'], 'play', 'erb'].file.must_equal 'test/fixtures/bassist/play.erb' }

  # not existing.
  it { Templates.new[base, ['bassist'], 'not-here', 'erb'].must_equal nil }
end
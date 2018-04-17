require './test/test_helper'
require './lib/project'

class ProjectTest < Minitest::Test

  def setup
    project_id = '123'
    name = 'Widget Maker'
    start_date = '2015-01-01'
    end_date = '2018-01-01'
    @project = Project.new('123', 'Widget Maker', '2015-01-01', '2018-01-01')
  end

  def test_project_exists
    assert_instance_of Project, @project
  end

  def test_project_has_attributes
    assert_equal 123, @project.project_id
    assert_equal Integer, @project.project_id.class
    assert_equal 'Widget Maker', @project.name
    assert_equal Date.new(2015, 1, 1), @project.start_date
    assert_equal Date.new(2018, 1, 1), @project.end_date
  end




end

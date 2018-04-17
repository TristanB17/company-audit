require './test/test_helper'
require './lib/projects'
require 'time'

class EmployeeTest < Minitest::Test

  def setup
    project_id = '123'
    name = 'Widget Maker'
    start_date = '2015-01-01'
    end_date = '2018-01-01'
    @project = Project.new('123', 'Widget Maker', '2015-01-01', '2018-01-01')
  end

  def test_project_exists
    assert_instance_of Project, project
  end

  def test_project_has_attributes
    assert_equal 123, project.project_id
    assert_equal Integer, project.project_id.class
    assert_equal 'Widget Maker', project.name
    assert_equal Time.parse(start_date), project.start_date
    assert_equal Time.parse(end_date), project.end_date
  end




end

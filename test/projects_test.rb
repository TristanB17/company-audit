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





end

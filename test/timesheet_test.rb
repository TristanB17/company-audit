require './test/test_helper'
require './lib/timesheet'

class TimesheetTest < Minitest::Test

  def setup
    employee_id = '5'
    project_id = '7'
    date = '2015-01-01'
    minutes = '120'
    @timesheet = Timesheet.new(employee_id, project_id, date, minutes)
  end

  def test_timesheet_exists
    assert_instance_of Timesheet, @timesheet
  end

  def test_timesheet_has_attributes
    assert_equal 5, @timesheet.employee_id
    assert_instance_of Integer, @timesheet.employee_id
    assert_equal 7, @timesheet.project_id
    assert_instance_of Integer, @timesheet.project_id
    assert_equal Date.new(2015, 1, 1), @timesheet.date
    assert_equal 120, @timesheet.minutes
    assert_instance_of Integer, @timesheet.project_id
  end



end

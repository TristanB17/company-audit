require './test/test_helper'
require './lib/employee'
require 'time'

class EmployeeTest < Minitest::Test

  def setup
    employee_id = '5'
    name = 'Sally Jackson'
    role = 'Engineer'
    start_date = '2015-01-01'
    end_date = '2018-01-01'
    @employee = Employee.new(employee_id, name, role, start_date, end_date)
  end

  def test_employee_exists
    assert_instance_of Employee, @employee
  end

  def test_attributes
    employee_id = '5'
    name = 'Sally Jackson'
    role = 'Engineer'
    start_date = '2015-01-01'
    end_date = '2018-01-01'
    @employee = Employee.new(employee_id, name, role, start_date, end_date)

    assert_equal 5, @employee.employee_id
    assert_equal 'Sally Jackson', @employee.name
    assert_equal 'Engineer', @employee.role
    assert_equal Time.parse(start_date), @employee.start_date
    assert_equal Time.parse(end_date), @employee.end_date
  end



end

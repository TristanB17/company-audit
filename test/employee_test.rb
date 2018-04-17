require './test/test_helper'
require './lib/employee'

class EmployeeTest < Minitest::Test
  def test_instantiation
    employee = Employee.new('./data/employees.csv')
    assert_instance_of Employee, 
  end

  def test_attributes
  end
end

require './test/test_helper'
require './lib/company'

class TimesheetTest < Minitest::Test

  def setup
    @company = Company.new
  end

  def test_company_exists
    assert_instance_of Company, @company
  end

  def test_company_attributes_start_empty
    assert_equal [], @company.employees
    assert_equal [], @company.timesheets
    assert_equal [], @company.projects
  end

  def test_loads_employees
     expected = @company.load_employees('./data/employees.csv')

     assert_equal { success: true, errors: nil}, expected
  end



end

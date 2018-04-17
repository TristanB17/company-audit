require './test/test_helper'
require './lib/company'

class CompanyTest < Minitest::Test

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

  def test_company_can_read_csv
    file = './data/employees.csv'
    @company.load_employees(file)
    assert_equal 1, @company.employees[0][0]
  end

  def test_employee_good_data_returns_success
     expected = @company.load_employees('./data/employees.csv')
     assert_equal({ success: true, errors: nil}, expected)
  end

  def test_employee_bad_data_returns_failure
    expected = @company.load_employees('./data/bad_employees.csv')
    assert_equal({ success: false, errors: 'bad data'}, expected)
  end



end

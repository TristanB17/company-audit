require './test/test_helper'
require './lib/company'

class TimesheetTest < Minitest::Test

  def test_company_exists
    company = Company.new
    assert_instance_of Company, company
  end

  def test_company_attributes_start_empty
    company = Company.new

    assert_equal [], company.employees
    assert_equal [], company.timesheets
    assert_equal [], company.projects
  end

end

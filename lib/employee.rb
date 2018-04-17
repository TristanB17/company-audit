require 'date'
require './modules/date_handler_module'

class Employee
  include


  attr_reader   :employee_id,
                :name,
                :role,
                :start_date,
                :end_date

  def initialize(employee_id, name, role, start_date, end_date)
    @employee_id = employee_id.to_i
    @name = name
    @role = role
    @start_date = DHDate.new(start_date)
    @end_date = DHDate.new(end_date)
  end



end

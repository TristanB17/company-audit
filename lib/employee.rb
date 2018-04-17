

class Employee
  include DateHandler


  attr_reader   :date_handler,
                :employee_id,
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

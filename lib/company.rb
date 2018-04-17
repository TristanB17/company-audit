class Company
  attr_reader :employees,
              :timesheets,
              :projects

  def initialize
    @employees = []
    @timesheets = []
    @projects = []
  end

  def load_employees(file)
    CSV.foreach(file) do |line|
      if line.length < 5
        {success: false, errors: 'bad data'}
      else line.length == 5
        employees = CSV.read(file).map do |line|
          
  end







end

require 'csv'
require './lib/employee'
require './lib/project'
require './lib/timesheet'

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
      return {success: false, errors: 'bad data'} if line.length < 5
    end
  end

  def load_projects(file)
    CSV.foreach(file) do |line|
      if line.length < 5
        {success: false, errors: 'bad data'}
      end
    end
  end

  def load_timesheets(file)
    CSV.foreach(file) do |line|
      return {success: false, errors: 'bad data'} if line.length < 5
    end
  end





end

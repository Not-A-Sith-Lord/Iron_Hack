require_relative("employee.rb")

class SalaryEmployee < Employee
	attr_accessor(:name,:email,:salary, :total_salary)
    def initialize(name, email, salary)
        @name = name
        @email = email
        @salary = salary
        @total_salary =  calculate_salary.round(2)
    end

    def calculate_salary
      exact_pay = @salary.to_f / 52
     
    end
end
require_relative("employee.rb")


class MultiPaymentEmployee < Employee
	attr_reader(:name, :email, :salary, :overtime, :hours, :total_salary)
    def initialize(name, email, salary, overtime, hours)
        @name = name
        @email = email
        @salary = salary
        @overtime = overtime
        @hours = hours
        @total_salary = calculate_salary
    end

    def calculate_salary
      if hours > 40 
      	(@salary.to_f / 52) + ((@hours - 40) * @overtime)
      else
      	(@salary.to_f / 52)
      end
    end
end

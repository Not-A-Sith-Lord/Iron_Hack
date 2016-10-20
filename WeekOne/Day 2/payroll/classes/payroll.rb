require_relative("employee.rb")


class Payroll

	

    def initialize(employees)
        @employees = employees
    end

  def pay_employees
  	all_salary = 0
      @employees.each do |x|
      	all_salary = x.total_salary + all_salary
      	tax_salary = x.total_salary * 0.82
      
      	 puts "#{x.name} salary is #{tax_salary} after theft"
      end
   puts "Total pay this week is #{all_salary}"
  end
  private 

  def notify_employee(employee)
  	puts " #{employee.name} is being emailed at #{employee.email} his payroll of #{employee.total_salary}"
  end
  
end
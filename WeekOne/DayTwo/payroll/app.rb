
require_relative("classes/hourly.rb")
require_relative("classes/salary.rb")
require_relative("classes/multi.rb")
require_relative("classes/payroll.rb")







elliot = MultiPaymentEmployee.new("elliot", "blafh", 100, 100, 41)
bob = HourlyEmployee.new("bob", "blafh", 100, 40)
ariel = SalaryEmployee.new("ariel", "blafh", 100000)
josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalaryEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)


employees = []

employees.push(bob, elliot, ariel, josh, nizar, ted)

weekly_pay = Payroll.new(employees)

weekly_pay.pay_employees



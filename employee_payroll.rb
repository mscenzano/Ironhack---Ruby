class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end
end

class Hourlyemployee < Employee
    def initialize(name, email, hourly_rate, hours_worked)
        super(name, email)
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
    		salary = 0
    		salary = (@hourly_rate * @hours_worked)
				salary = salary - (salary * 0.18)
			puts "#{@name} ´s salary is #{salary}"
    end
end



class Salaried_employee < Employee
	def initialize(name, email, year_salary)
	super(name, email)

	@year_salary = year_salary
	end

	def calculate_salary
			salary = 0
			salary = (@year_salary / 52)
			puts "#{@name} ´s salary is #{salary}"
	end
end

class Multipaymentemployee < Employee
	def initialize(name, email, base_salary, hourly_rate, hours_worked)
		super(name, email)
		@base_salary = base_salary
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
	end
	
	def calculate_salary
		salary = 0
		salary = @base_salary + (@hourly_rate * @hours_worked)
		puts "#{@name} ´s salary is #{salary}"

	end	
end

class Payroll 
	def initialize(employees)
		@employees = employees
		employees.each do|x|
			puts x.calculate_salary
	end  
  end	
end




josh = Hourlyemployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = Salaried_employee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = Multipaymentemployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
mariano = Hourlyemployee.new('Mariano', 'mscenzano@gmail.com', 15, 60)
herve = Hourlyemployee.new('Herve', 'herve.herbrich@gmail.com', 15, 50)

employees = [mariano, herve, ted, josh, nizar]

result = Payroll.new(employees)
puts result

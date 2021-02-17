# model an employee using ruby

# array
# employee1 = ["Majora", "Carter", 80000, true]
# p employee

# p employee1[0] + " " + employee1[1] + " " + "makes $" + employee1[2].to_s + " per year."
# p "Majora Carter Makes $80000 per year."

# employee2 = ["Danilo", "Campos", 100000, false]

# p "#{employee2[0]} #{employee2[1]} makes $#{employee2[2]} per year."



# hash
employee1 = {"last_name" => "Carter", "salary" => 80000, "active" => true, "first_name" => "Majora"}
# employee2 = {:first_name => "Danilo", :last_name => "Campos", :salary => 100000, :active => false}
# fancy version of the above line
employee2 = {first_name: "Danilo", last_name: "Campos", salary: 100000, active: false}
# p employee2


# what is the easies update i could do?
# chaging the name?




# p "#{employee1['first_name']} #{employee1['last_name']} makes $#{employee1['salary']} per year."
# p "#{employee2[:first_name]} #{employee2[:last_name]} makes $#{employee2[:salary]} per year."

# What's better? hash or array? why?


# object
# OOP

class Employee
  def initialize(input_first_name, input_last_name, input_salary, input_active)
    @first_name = input_first_name
    @last_name = input_last_name
    @salary = input_salary
    @active = input_active
    # p "in initialize"
  end

  def print_info
    p "#{@first_name} #{@last_name} makes $#{@salary} per year."
  end

  def give_annual_raise
    # @salary = @salary * 1.05
    @salary *= 1.05
  end
end

employee1 = Employee.new("Majora", "Carter", 80000, true)
employee1.print_info
employee1.give_annual_raise
employee1.print_info


employee2 = Employee.new("Danilo", "Campos", 100000, false)
employee2.print_info
employee2.give_annual_raise
employee2.print_info




# What do we need to do to make this?



class Employee
  attr_reader :first_name, :last_name
  attr_writer :first_name
  
  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    p "#{@first_name} #{@last_name} makes $#{@salary} per year."
  end

  def give_annual_raise
    @salary *= 1.05
  end
end


employee1 = Employee.new({
  :first_name => "Majora",
  :last_name => "Carter",
  :salary => 80000,
  :active => true
})

p employee1.first_name
employee1.print_info
p employee1.first_name
employee1.first_name = "Benji"
p employee1.first_name
employee1.give_annual_raise
employee1.print_info


employee2 = Employee.new(first_name: "Danilo", last_name: "Campos",salary:  100000, active: false)
employee2.print_info
employee2.give_annual_raise
employee2.print_info

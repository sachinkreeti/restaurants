class EmployeeMailer < ApplicationMailer
  def employee_created_email(employee)
    @employee = employee
    mail(to: 'HR@example.com', subject: 'New Employee Created')
  end
end

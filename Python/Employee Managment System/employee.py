import csv
import os

class EmployeeManager:
  def __init__(self):
    self.employees = {}
    self.csv_file = "employees.csv"
    self.load_employees()

  def load_employees(self):
    #Load employees from CSV file if it exists
    if os.path.exists(self.csv_file):
      with open(self.csv_file, 'r', newline='') as file:
        reader = csv.DictReader(file)
        for row in reader:
          self.employees[row['ID']] = row

  def save_to_csv(self):
    # Save employees to CSV file
    header = ['ID', 'Name', 'Position', 'Salary', 'Email']
    with open(self.csv_file, 'w', newline='') as file:
      writer = csv.DictWriter(file, fieldnames=header)
      writer.writeheader()
      for employee in self.employees.values():
        writer.writerow(employee)

  def add_employee(self, id, name, position, salary, email):
    # Add a new employee
    if id in self.employees:
      return False, "Employee ID already exists"
    
    self.employees[id] = {
      'ID': id,
      'Name': name,
      'Position': position,
      'Salary': salary,
      'Email': email
    }
    self.save_to_csv()
    return True, "Employee added successfully"

  def view_all_employees(self):
    # View all employees
    return self.employees

  def update_employee(self, id, name=None, position=None, salary=None, email=None):
    # Update employee details
    if id not in self.employees:
      return False, "Employee not found"
    
    if name:  # if i reach to this step, this means that i found the id
      self.employees[id]['Name'] = name
    if position: 
      self.employees[id]['Position'] = position
    if salary: 
      self.employees[id]['Salary'] = salary
    if email: 
      self.employees[id]['Email'] = email
    
    self.save_to_csv()
    return True, "Employee updated successfully"

  def delete_employee(self, id):
    # Delete an employee
    if id not in self.employees:
      return False, "Employee not found"
    
    self.employees.pop(id)  # Remove from dictionary
    self.save_to_csv()
    return True, "Employee deleted successfully"

  def search_employee(self, id):
    # Search for an employee by ID
    return self.employees.get(id, None)


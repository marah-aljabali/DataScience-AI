from employee import EmployeeManager 

def main():
  manager = EmployeeManager() #creat object
  
  while True:
    print("Welcome To The Employee Management System")
    print("1. Add Employee")
    print("2. View All Employees")
    print("3. Update Employee")
    print("4. Delete Employee")
    print("5. Search Employee")
    print("6. Exit")
      
    choice = int(input("Chose the service from 1 to 6: "))

    if choice == 1:
      id = input("Enter Employee ID: ")
      name = input("Enter Name: ")
      position = input("Enter Position: ")
      salary = input("Enter Salary: ")
      email = input("Enter Email: ")
      
      success, message = manager.add_employee(id, name, position, salary, email)
      print(message)

    elif choice == 2:
      employees = manager.view_all_employees() # store all employees
      if not employees:
        print("No employees found.")
      else:
        for emp in employees.values():
          print("\nID:", emp['ID'])
          print("Name:", emp['Name'])
          print("Position:", emp['Position'])
          print("Salary:", emp['Salary'])
          print("Email:", emp['Email'])
          print("--" * 15)

    elif choice == 3:
      id = input("Enter Employee ID to update: ")
      name = input("Enter new Name (press Enter to skip): ")
      position = input("Enter new Position (press Enter to skip): ")
      salary = input("Enter new Salary (press Enter to skip): ")
      email = input("Enter new Email (press Enter to skip): ")
      
      success, message = manager.update_employee(id, name, position, salary, email)
      print(message)

    elif choice == 4:
      id = input("Enter Employee ID to delete: ")
      success, message = manager.delete_employee(id)
      print(message)

    elif choice == 5:S
      id = input("Enter Employee ID to search: ")
      employee = manager.search_employee(id)
      if employee:
        print("\nEmployee found:")
        print("ID:", employee['ID'])
        print("Name:", employee['Name'])
        print("Position:", employee['Position'])
        print("Salary:", employee['Salary'])
        print("Email:", employee['Email'])
      else:
        print("Employee not found.")

    elif choice == 6:
      print("Thank you for using Employee Management System!")
      break

    else:
      print("Invalid choice. Please try again.")

if __name__ == "__main__":
  main()S
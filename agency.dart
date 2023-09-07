import 'package:car_rental_system/agency_manager.dart';import 'car.dart';import 'employee.dart';

class Agency {
   String? _agencyName;
   String? _address;
   String? _phone;
   List<Employee>? _employees;
  List<Car>? _cars;
   AgencyManager? _agencyManager;
  Agency({
     String? agencyName_,
     String? address_,
     String? phone_,
     List<Employee>? employees_,
     AgencyManager? agencyManager_,
     List<Car>? cars_,
  })  : _agencyName = agencyName_,
        _address = address_,
        _phone = phone_,
        _employees = employees_,
        _agencyManager = agencyManager_,
        _cars = cars_ {
    agencyName = _agencyName;
    address = _address;
    employees = _employees;
    agencyManager = _agencyManager;
    cars = _cars;
    phone = _phone;
  }

  set agencyName(agencyName) {
    _agencyName = agencyName;
  }
  get agencyName => _agencyName;

  set address(address) {
    _address = address;
  }
  get address => _address;

  set employees(employees) {
    _employees = employees;
  }
  get employees => _employees;

  set phone(phone) {
    if(phone.length == 11){
      _phone = phone;
    }
    else{
      throw Exception();
    }

  }
  get phone => _phone;

  set agencyManager(agencyManager) {
    _agencyManager = agencyManager;
  }
  get agencyManager => _agencyManager;

  set cars(cars) {
    _cars = cars;
  }
  get cars => _cars;

  addCar(Car car){
    cars.add(
      car
    );
  }

  addEmployee(Employee employee){
    employees.add(
        employee
    );
  }
}

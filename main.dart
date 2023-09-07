import 'package:car_rental_system/agency.dart';
import 'package:car_rental_system/agency_manager.dart';
import 'package:car_rental_system/contract.dart';
import 'package:car_rental_system/customer.dart';
import 'package:car_rental_system/employee.dart';
import 'car.dart';

void main() {
  Customer mahmoudElsolia = Customer(
    name_: 'Mahmoud Elosolia',
    age_: 21,
    phone_: '01062676647',
    email_: 'mahmoudelsolia@gmail.com',
    amountPaid_: 3000,
    remainingAmount_: 500,
    totalAmount_: 3500,
    rentedCar_: cars['BMW 2018'],
    contract_: contract,
  );

  mahmoudElsolia.renatCar(cars['BMW 2018']!);
  print(cars['BMW 2018']!.isAvailable);

  mahmoudElsolia.payCertainAmount(amount: 200);
  print(mahmoudElsolia.remainingAmount);

}



Map<String,Car> cars = {
  'BMW 2018': Car(
    color_: 'Red',
    isAvailable_: true,
    model_: '2018',
    price_: 500000,
    type_: 'BMW',
  ),
  'BMW 2016': Car(
    color_: 'Black',
    isAvailable_: true,
    model_: '2016',
    price_: 500000,
    type_: 'BMW',
  ),
  'BMW 2017': Car(
    color_: 'Blue',
    isAvailable_: true,
    model_: '2017',
    price_: 500000,
    type_: 'BMW',
  ),
  'BMW 2015': Car(
    color_: 'Red',
    isAvailable_: true,
    model_: '2015',
    price_: 500000,
    type_: 'BMW',
  ),
  'FIAT 2018': Car(
    color_: 'White',
    isAvailable_: true,
    model_: '2018',
    price_: 500000,
    type_: 'FIAT',
  ),
  'FIAT 2015': Car(
    color_: 'Grey',
    isAvailable_: true,
    model_: '2015',
    price_: 500000,
    type_: 'FIAT',
  ),
  'FIAT 2010': Car(
    color_: 'Red',
    isAvailable_: true,
    model_: '2010',
    price_: 500000,
    type_: 'Fiat',
  ),
};

AgencyManager mohamedAgencyManager =  AgencyManager(
  name_: 'Mohammed',
  age_: 50,
  phone_: '01062676645',
  email_: 'mohammed22@gmail.com',
);

Map<String,Employee> employees = {
  'Mohammed Ahmed' : Employee(
    age_: 25,
    email_: 'mohammedahmed@gmail.com',
    name_: 'Mohammed Ahmed',
    phone_: '01062676641',
    salary_: 3000
  ),
  'Yasser Ahmed' : Employee(
      age_: 27,
      email_: 'yasserahmed@gmail.com',
      name_: 'Yasser Ahmed',
      phone_: '01062676642',
      salary_: 3200
  ),
  'Youssef Ahmed' : Employee(
      age_: 32,
      email_: 'youssefahmed@gmail.com',
      name_: 'Youssef Ahmed',
      phone_: '01062676643',
      salary_: 3500
  ),
  'Khaled Ahmed' : Employee(
      age_: 37,
      email_: 'khaledahmed@gmail.com',
      name_: 'Khaled Ahmed',
      phone_: '01062676645',
      salary_: 3800
  ),

};

Agency agency = Agency(
  agencyName_: 'AGENCY',
  address_: 'Cairo,Egypt',
  phone_: '01062676649',
  employees_: employees.entries.map((e) => e.value).toList(),
  agencyManager_: mohamedAgencyManager,
  cars_: cars.entries.map((e) => e.value).toList(),
);

Contract contract = Contract(
  startDateOfRental_: '12/7-2023',
  endDateOfRental_: '18/7/2023',
  employee_: employees['Mohammed Ahmed'],
  price_: 3500,
  agency_: agency,
);






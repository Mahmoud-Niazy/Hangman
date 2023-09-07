import 'package:car_rental_system/person.dart';


class Employee extends Person {
   double? _salary;

  Employee({
     super.name_,
     super.age_,
     super.phone_,
     super.email_,
     double? salary_,
  }) :
      _salary = salary_{
    salary = _salary;
  }












  set salary(salary) {
    if (salary > 0) {
      _salary = salary;
    } else {
      throw Exception();
    }
  }
  get salary => _salary;

}


import 'agency.dart'
;import 'employee.dart';

class Contract {
   String? _startDateOfRental;
   String? _endDateOfRental;
   Employee? _employee;
   double? _price;
   Agency? _agency;

  Contract({
     String? startDateOfRental_,
     String? endDateOfRental_,
     Employee? employee_,
     double? price_,
     Agency? agency_,

  })  : _startDateOfRental = startDateOfRental_,
        _endDateOfRental = endDateOfRental_,
        _employee = employee_,
        _price = price_,
        _agency = agency_
       {
    endDateOfRental = _endDateOfRental;
    agency = _agency;
    startDateOfRental = _startDateOfRental;
    price = _price;
    employee = _employee;
  }





  set startDateOfRental(startDateOfRental) {
    _startDateOfRental = startDateOfRental;
  }
  get startDateOfRental => _startDateOfRental;

  set endDateOfRental(endDateOfRental) {
    _endDateOfRental = endDateOfRental;
  }
  get endDateOfRental => _endDateOfRental;

  set employee(employee) {
    _employee = employee;
  }
  get employee => _employee;


  set price(price) {
    if(price > 0){
      _price = price;
    }
    else{
      throw Exception();
    }

  }
  get price => _price;

  set agency(agency) {
    _agency = agency;
  }
  get agency => _agency;
}

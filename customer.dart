import 'package:car_rental_system/person.dart';
import 'car.dart';
import 'contract.dart';

class Customer extends Person {
   Car? _rentedCar;
   double? _amountPaid;
   double? _remainingAmount;
   double? _totalAmount;
   Contract? _contract ;

  Customer({
     super.name_,
     super.age_,
     super.phone_,
     super.email_,
     double? amountPaid_,
     double? remainingAmount_,
     double? totalAmount_,
     Car? rentedCar_,
     Contract? contract_,
  })  : _amountPaid = amountPaid_,
        _remainingAmount = remainingAmount_,
        _totalAmount = totalAmount_,
        _rentedCar = rentedCar_,
        _contract = contract_
      {
    amountPaid = _amountPaid;
    remainingAmount = _remainingAmount;
    rentedCar = _rentedCar;
    totalAmount = _totalAmount;
    contract = _contract;
  }

  set amountPaid(amountPaid) {
    if(amountPaid>0){
      _amountPaid = amountPaid;
    }
    else{
      throw Exception();
    }

  }
  get amountPaid => _amountPaid;

  set remainingAmount(remainingAmount) {
    if(remainingAmount>0){
      _remainingAmount = remainingAmount;
    }
    else{
      throw Exception();
    }
  }
  get remainingAmount => _remainingAmount;

  set totalAmount(totalAmount) {
    if(totalAmount>0){
      _totalAmount = totalAmount;
    }
    else{
      throw Exception();
    }
  }
  get totalAmount => _totalAmount;

  set rentedCar(rentedCar) {
    _rentedCar = rentedCar;
  }
  get rentedCar => _rentedCar;

  set contract(contract) {
    _contract = contract;
  }
  get contract => _contract;

  payCertainAmount({required int amount}) {
    amountPaid = amountPaid + amount;
    remainingAmount = remainingAmount - amount;
  }

  renatCar(Car car) {
    rentedCar = car;
    car.isAvailable = false ;
  }
}

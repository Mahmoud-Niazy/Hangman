abstract class Person{
   String? _name ;
   String? _email ;
   String? _phone ;
   int? _age ;

  Person({
     String? name_,
     int? age_,
     String? phone_,
     String? email_,
}):_email = email_,
    _phone = phone_,
    _age = age_,
    _name = name_
  {
    age = _age;
    name = _name;
    email = _email;
    phone = _phone;
  }


  set age (age){
    if(age>0){
      _age = age ;
    }
    else{
      throw Exception();
    }
  }
  get age => _age;

  set email (email){
    if(email.contains('@')){
      _email = email ;
    }
    else{
      throw Exception();
    }
  }
  get email => _email;

  set phone (phone){
    if(phone.length==11){
      _phone = phone ;
    }
    else{
      throw Exception();
    }
  }
  get phone => _phone;

  set name (name){
    _name= name;
  }
  get name => _name;
}


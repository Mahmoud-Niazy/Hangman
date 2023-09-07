class Car {
   String? _type;
   double? _price ;
   String? _color ;
   bool? _isAvailable ;
   String? _model ;

  Car({
     String? type_,
    double? price_,
     String? color_,
     bool? isAvailable_,
     String? model_,
}) :
        _type = type_,
        _price = price_,
        _color = color_,
        _model = model_,
        _isAvailable = isAvailable_
  {
    type = _type;
    price = _price;
    color = _color;
    model = _model;
    isAvailable = _isAvailable;
  }

  set type(type){
    _type = type;
  }

  get type => _type;

  set price(price){
    if(price > 0){
      _price = price;}
    else{
      throw Exception();
    }}

  get price => _price;

  set color(color){
    _color = color;
  }

  get color => _color;

  set model(model){
    _model = model;
  }

  get model => _model;

  set isAvailable(isAvailable){
    _isAvailable = isAvailable;
  }

  get isAvailable => _isAvailable;
}
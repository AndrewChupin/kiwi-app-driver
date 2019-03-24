import 'package:meta/meta.dart';


@immutable
class Order {
  final int id;
  final Place from;
  final Place to;
  final Car car;
  final List<Service> services;
  final String data;

  Order(this.id, this.from, this.to, this.car, this.services, this.data);
}


@immutable
class Car {
  final String brand;
  final String model;
  final String number;
  final String color;

  const Car(this.brand, this.model, this.number, this.color);
}


@immutable
class Place {
  final String city;
  final String address;

  const Place(this.city, this.address);
}


@immutable
class Service {
  final int id;
  final String name;
  final String code;

  Service(this.id, this.name, this.code);
}

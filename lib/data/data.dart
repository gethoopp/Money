import 'package:hive/hive.dart';

part 'data.g.dart';

@HiveType(typeId: 1)
class Person {
  Person({required this.nameHolder, required this.numberCard,required this.numberCVV,required this.nameBank});
  @HiveField(0)
  String nameHolder;

  @HiveField(1)
  String numberCard;

  @HiveField(2)
  String numberCVV;

  @HiveField(3)
  String nameBank;

  
}

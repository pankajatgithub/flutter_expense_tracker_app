import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

const uuid =  Uuid();
final formatter = DateFormat.yMd();
enum Category{food, travel, leisure,work}
const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work
  };

class Expense {
Expense({
  required this.title,
  required this.amount,
  required this.date,
  required this.category,
    //UUID package to generate unique id ,https://pub.dev/packages/uuid 
}) : id = uuid.v4();//initialise id

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category; //leisure Expense(category:'leisure')
  
  String get formattedDate{
    return formatter.format(date);  //https://pub.dev/packages/intl/install,  flutter intl package
   }

}
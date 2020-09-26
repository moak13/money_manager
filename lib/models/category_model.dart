import 'dart:convert';

import 'package:flutter/material.dart';

class CategoryModel {
  final IconData icon;
  final String title;
  CategoryModel({
    this.icon,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return {
      'icon': icon,
      'title': title,
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return CategoryModel(
      icon: map['icon'],
      title: map['title'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) =>
      CategoryModel.fromMap(json.decode(source));
}

List<CategoryModel> incomeCategory = [
  CategoryModel(
    icon: Icons.attach_money,
    title: 'Salary',
  ),
  CategoryModel(
    icon: Icons.attach_money,
    title: 'Awards',
  ),
  CategoryModel(
    icon: Icons.attach_money,
    title: 'Grants',
  ),
  CategoryModel(
    icon: Icons.attach_money,
    title: 'Rental',
  ),
  CategoryModel(
    icon: Icons.attach_money,
    title: 'Investment',
  ),
];
List<CategoryModel> expenseCategory = [
  CategoryModel(
    icon: Icons.attach_money,
    title: 'Food',
  ),
  CategoryModel(
    icon: Icons.attach_money,
    title: 'Bills',
  ),
  CategoryModel(
    icon: Icons.attach_money,
    title: 'Transportation',
  ),
  CategoryModel(
    icon: Icons.attach_money,
    title: 'Entertainment',
  ),
  CategoryModel(
    icon: Icons.attach_money,
    title: 'Pet',
  ),
];

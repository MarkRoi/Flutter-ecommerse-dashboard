import 'package:ecommerce_dashboard/models/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategorySubmitForm extends StatelessWidget {
  final Category? category;

  const CategorySubmitForm({super.key, this.category});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

void showAddCategoryForm(BuildContext context, Category? category){
  showDialog(
    context: context, 
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Color(0xFF1A1A1A),
        title: Center(child: Text("Add Category".toUpperCase(), style: TextStyle(color: Colors.white))),
        content: CategorySubmitForm(category: category),
       
      );
    });
}
import 'package:ecommerce_dashboard/screens/category/components/category_header.dart';
import 'package:ecommerce_dashboard/screens/category/components/category_list_section.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
    SingleChildScrollView( 
      primary: false,
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          CategoryHeader(),
          SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [ 
              Expanded( 
                flex: 5, 
                child: Column( 
                  children: [ 
                    Row(  
                      mainAxisAlignment: MainAxisAlignment.end, 
                      children: [ 
                        Expanded(
                          child: Text(
                          "My Categories", 
                          style: Theme.of(context).textTheme.titleMedium,
                          )
                        ), 
                        ElevatedButton.icon( 
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8 * 1.5,
                              vertical: 8,
                            ),
                          ),
                          onPressed: () { 
                            // showAddCategoryForm(context, null);
                          },
                          icon: Icon(Icons.add),
                          label: Text("Add New"),
                        ), 
                        SizedBox(width: 20), 
                        IconButton(onPressed: (){
                          //TODO: should complete get all categories
                        }, icon: Icon(Icons.refresh))
                      ],
                    ), 
                    SizedBox(height: 20),
                    CategoryListSection()
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ));




    
  }
}
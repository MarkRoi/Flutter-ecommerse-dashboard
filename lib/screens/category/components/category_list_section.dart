import 'package:ecommerce_dashboard/core/data/data_provider.dart';
import 'package:ecommerce_dashboard/models/category.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CategoryListSection extends StatefulWidget {
    const CategoryListSection({
    Key? key,
  }) : super(key: key);

  @override
  State<CategoryListSection> createState() => _CategoryListSectionState();
}

class _CategoryListSectionState extends State<CategoryListSection> {
  
  @override
  Widget build(BuildContext context) {
    return Container( 
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration( 
        color: Color(0xFF2A2A2A),
        borderRadius: BorderRadius.all(Radius.circular(10)
        ),
      ),
      child: Column( 
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ 
          Text( 
            "All Categories", 
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox( 
            width: double.infinity,
            child: Consumer<DataProvider>( 
              builder:(context, dataProvider, child) {
                return DataTable(
                  columns: [
                    DataColumn(label: Text('Category Name')),
                    DataColumn(label: Text('Date Added')),
                    DataColumn(label: Text('Edit')),
                    DataColumn(label: Text('Delete')),
                  ],
                  rows: List.generate(
                    dataProvider.categories.length,
                    (index) => categoryDataRow( 
                      dataProvider.categories[index], delete:() {
                        // Handle delete action
                      }, edit: () {
                        // showAddCategoryForm(context, dataProvider.categories[index]);
                      }
                 
                  ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}


DataRow categoryDataRow(Category CatInfo, {Function? edit, Function? delete}){
  return DataRow( 
    cells:[ 
      DataCell( 
        Row( 
          children:[  
            Image.network( 
              CatInfo.image ?? '' , 
              height: 30,
              width:30, 
              errorBuilder:(BuildContext context, Object error, StackTrace? stackTrace) {
                return Icon(Icons.error, color: Colors.red);
              }
            ), 
            Padding( 
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(CatInfo.name ?? 'No Name'),
            )
            
          ],
        ),
      ), 
      DataCell( 
        Text(CatInfo.createdAt ?? 'No Date')
      ),
      DataCell( 
        IconButton( 
          icon: Icon(Icons.edit, color: Colors.white),
          onPressed: () {
            if (edit != null) edit();
          },
        )
      ),
      DataCell( 
        IconButton( 
          icon: Icon(Icons.delete, color: Colors.red),
          onPressed: () {
            if (delete != null) delete();
          },
        )
      ),
    ]
  );
}
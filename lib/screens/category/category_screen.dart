import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          title: Text('Category Management'),
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                child: Text('AJ'),
              ),
            ),
          ],
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Card(
                  color: Color(0xFF2A2A2A),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('My Categories', style: TextStyle(fontSize: 20)),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('+ Add New'),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(child: Text('Product Name')),
                            Expanded(child: Text('Category')),
                            Expanded(child: Text('Sub Category')),
                            Expanded(child: Text('Price')),
                            Expanded(child: Text('Edit')),
                            Expanded(child: Text('Delete')),
                          ],
                        ),
                        ...List.generate(6, (index) => ListTile(
                          leading: Icon(Icons.phone_android),
                          title: Text('Product ${index + 1}'),
                          subtitle: Text('Category ${index + 1}'),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('\$${index * 1000}.00'),
                              IconButton(icon: Icon(Icons.edit), onPressed: () {}),
                              IconButton(icon: Icon(Icons.delete), onPressed: () {}),
                            ],
                          ),
                        )),
                      ],
                    ),
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ],
    );
  }
}
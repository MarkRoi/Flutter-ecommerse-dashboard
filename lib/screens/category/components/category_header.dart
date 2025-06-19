import 'package:flutter/material.dart';

class CategoryHeader extends StatelessWidget {
  const CategoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row( 
      children: [ 
        Text( 
          "Category", 
          style: Theme.of(context).textTheme.titleLarge
          ),
        Spacer(flex: 2,), 
        Expanded(child: SearchField( 
          onChange: (value) {
            // Handle search input
          },
        )), 
        ProfileCard()
      ],
    );
  }
}

class SearchField extends StatelessWidget {
  final Function(String) onChange;

  const SearchField({required this.onChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 40,
      child: TextField(
        onChanged: onChange,
        decoration: InputDecoration(
          hintText: 'Search',
          prefixIcon: Icon(Icons.search, color: Colors.grey),
          filled: true,
          fillColor: Colors.white12,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 10),
        ),
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage('https://via.placeholder.com/150'),
            child: Text('AJ', style: TextStyle(color: Colors.black)),
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Angelina Jolie',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'admin',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            child: Image(
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Text(
              'Large Title should be places in this place Large Title should be places in this place',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Text(
            'and here is the description of the news you can place your desc here',
            maxLines: 2,
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

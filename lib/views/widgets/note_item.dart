import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey.withValues(alpha: 0.2),
      ),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                'Flutter tips',
                style: TextStyle(fontSize: 25),
                maxLines: 1,
              ),
              subtitle: const Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  'build your career with tharwat samy using flutter',
                  style: TextStyle(fontSize: 12),
                  maxLines: 5,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete),
                iconSize: 29,
              ),
            ),
            const Text('may 21/2022'),
          ],
        ),
      ),
    );
  }
}

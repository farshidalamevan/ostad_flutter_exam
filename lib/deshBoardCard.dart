import 'package:flutter/material.dart';

class deshBoardCard extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String city;

  final String population;
  final String area;
  final String elevatedButton;

  const deshBoardCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.population,
    required this.area,
    required this.elevatedButton,
    required this.city,
  });

  @override
  State<deshBoardCard> createState() => _deshBoardCardState();
}

class _deshBoardCardState extends State<deshBoardCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            child: Image.network(
              widget.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            widget.title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Text('Capital City: ${widget.city}'),
          Text('Population: ${widget.population}'),
          Text('Total area: ${widget.area}'),
          const SizedBox(
            height: 6,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.grey[400]),
                foregroundColor: const WidgetStatePropertyAll(Colors.black)),
            child: Text(widget.elevatedButton),
          )
        ],
      ),
    );
  }
}

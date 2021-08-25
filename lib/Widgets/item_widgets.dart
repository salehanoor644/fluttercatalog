import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalogs.dart';

class ItemWidget extends StatelessWidget {
  final Items item;

  const ItemWidget({Key? key, required this.item, }) : assert(item != null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
      leading: Image.network(item.image,

      ),
      title: Text(item.name),
      subtitle: Text(item.desc),
      trailing: Text("\$${item.price}",

      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold
      ),
      ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:untitled1/models/catalog.dart';
import 'package:untitled1/widget/dawer.dart';
import 'package:untitled1/widget/item_widget.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Codepur";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(
                itemCount: CatalogModel.items.length,
                itemBuilder: (context, index) {
                  return ItemWidget(item: CatalogModel.items[index],);
                },
              ),
            ),
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

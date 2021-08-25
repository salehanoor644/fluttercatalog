import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/Widgets/drawer.dart';
import 'package:flutter_catalog/Widgets/item_widgets.dart';
import 'package:flutter_catalog/Widgets/theme.dart';
import 'package:flutter_catalog/models/catalogs.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Home_Page extends StatelessWidget {
  final int day = 30;
  final String name = "Saleha";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.CreamColor,
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CatalogHeader(),
            if (CatalogModels.items != null && CatalogModels.items.isNotEmpty)
            CatalogList().expand()
              else
              Center(
                  child: CircularProgressIndicator(),
          )
          ],
        )
      ),
      ),
    );
  }
}

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(

        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.bold.color(MyTheme.darkBluish).make(),
        "Tranding Products".text.xl2.make(),
      ],
        );
  }
}
class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
        itemCount: CatalogModels.items.length,
        itemBuilder: (context, index) {
          final catalog = CatalogModels.items[index];
          return CatalogItems(catalog: catalog);
        },
    );
  }
}
class CatalogItems extends StatelessWidget {
  final Items catalog;
  const CatalogItems({Key? key, required this.catalog}) : assert(catalog != null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
          children: [CatalogImage(image:catalog.image)]
      ),
    ).white.roundedLg.square(150).make().py16();
  }
}
class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    ).box.rounded.p8.color(MyTheme.CreamColor).make().p16().w40(context);
  }
}



















































































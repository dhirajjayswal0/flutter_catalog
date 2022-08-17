import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: MyTheme.creamColor),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            '\$${catalog.price}'.text.bold.xl3.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(MyTheme.darkBluishColor),
                shape: MaterialStateProperty.all(StadiumBorder()),
              ),
              child: 'Buy'.text.make(),
            ).wh(80, 40)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h24(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: SingleChildScrollView(
                  child: Container(
                    color: Colors.white,
                    width: context.screenWidth,
                    child: Column(
                      children: [
                        catalog.name.text.xl3
                            .color(MyTheme.darkBluishColor)
                            .bold
                            .make(),
                        catalog.desc.text
                            .textStyle(context.captionStyle)
                            .xl
                            .make(),
                        10.heightBox,
                        "Sodales. Arcu enim curabitur scelerisque turpis euismod mattis quisque elit. Duis mus bibendum porta cubilia. Duis. Neque sociis. Tempor sagittis penatibus quisque. Cum volutpat. Ut ornare natoque volutpat, ante montes turpis semper. Lorem curabitur egestas congue auctor condimentum. Curabitur lectus est montes ante nascetur nostra. Sit fames faucibus, adipiscing etiam diam hymenaeos in. Mi potenti mollis, diam vel elementum suscipit massa suspendisse faucibus porta. Nonummy. Habitasse. Sodales. Arcu enim curabitur scelerisque turpis euismod mattis quisque elit. Duis mus bibendum porta cubilia. Duis. Neque sociis. Tempor sagittis penatibus quisque. Cum volutpat. Ut ornare natoque volutpat, ante montes turpis semper. Lorem curabitur egestas congue auctor condimentum. Curabitur lectus est montes ante nascetur nostra. Sit fames faucibus, adipiscing etiam diam hymenaeos in. Mi potenti mollis, diam vel elementum suscipit massa suspendisse faucibus porta. Nonummy. Habitasse."
                            .text
                            .textStyle(context.captionStyle)
                            .make()
                            .p16()
                      ],
                    ).py64(),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

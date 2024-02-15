import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:university_app/helper/app_colors.dart';
import 'package:university_app/helper/app_text_style.dart';
import 'package:university_app/helper/ratio_calculator.dart';
import 'package:university_app/models/wishlists/wishlists.dart';
import 'package:university_app/pages/wishlist/controller/wishliat_controller.dart';

class Wishlist2Page extends StatelessWidget {
  const Wishlist2Page({super.key});

  @override
  Widget build(BuildContext context) {
    final RatioCalculator ratioCalculator = RatioCalculator();
    return ChangeNotifierProvider(
      create: (_) => WishlistController()..init(),
      child: Scaffold(
        body: SafeArea(child: Builder(builder: (contextF) {
          final controller = Provider.of<WishlistController>(contextF);
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: ratioCalculator.calculateWidth(40),
                    top: ratioCalculator.calculateHeight(23),
                    bottom: ratioCalculator.calculateHeight(18.77)),
                child: Text(
                  "Wishlist",
                  style: AppTextStyle.text20W500TextStyle,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: ratioCalculator.calculateWidth(10),
                    right: ratioCalculator.calculateWidth(10)),
                height: 550,
                child: ListView.builder(
                    itemCount: controller.listWishlistObject.length,
                    itemBuilder: (context, index) {
                      return CardWishlist(
                        wishlists: controller.listWishlistObject[index],
                        fhaterContext: contextF,
                        index: index,
                      );
                    }),
              ),
            ],
          );
        })),
      ),
    );
  }
}

class CardWishlist extends StatefulWidget {
  final Wishlists wishlists;
  final BuildContext fhaterContext;
  final int index;

  const CardWishlist({
    super.key,
    required this.wishlists,
    required this.fhaterContext,
    required this.index,
  });

  @override
  State<CardWishlist> createState() => _CardWishlistState();
}

class _CardWishlistState extends State<CardWishlist> {
  final RatioCalculator ratioCalculator = RatioCalculator();

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<WishlistController>(widget.fhaterContext, listen: true);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.fondoCardWishlistColor,
            ),
            width: ratioCalculator.calculateWidth(331),
            height: ratioCalculator.calculateHeight(145),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                    left: ratioCalculator.calculateWidth(25),
                    top: ratioCalculator.calculateHeight(42),
                    bottom: ratioCalculator.calculateHeight(42),
                    right: ratioCalculator.calculateHeight(24.72),
                  ),
                  child: Image.network(
                    widget.wishlists.urlImage,
                    height: ratioCalculator.calculateHeight(61),
                    width: ratioCalculator.calculateHeight(84.28),
                  ),
                ),
                Container(
                  color: AppColors.fondoCardWishlistColor,
                  padding: EdgeInsets.only(
                      top: ratioCalculator.calculateHeight(14),
                      left: ratioCalculator.calculateWidth(16),
                      right: ratioCalculator.calculateWidth(20)),
                  width: ratioCalculator.calculateWidth(190),
                  height: ratioCalculator.calculateHeight(140),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Text(
                                  widget.wishlists.title,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTextStyle.text16W500HomeTextStyle,
                                ),
                              ),
                              Spacer(),
                              SizedBox(
                                // con esto se regula la onda expansiva que aparece al tocar el boton(efecto).
                                width: ratioCalculator.calculateWidth(25),
                                height: ratioCalculator.calculateHeight(30),
                                child: IconButton(
                                  splashRadius: 50,
                                  // constraints: BoxConstraints(maxHeight: 36),
                                  padding: EdgeInsets.all(0.5),
                                  onPressed: () {
                                    controller
                                        .removeElementWishlist(widget.index);
                                  },
                                  icon: Icon(
                                    Icons.delete_forever,
                                    color: AppColors.iconCardWishlistColor,
                                    size: 25,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                child: Text(
                                  widget.wishlists.question,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTextStyle.textCardWishlist,
                                ),
                              ),
                              Container(
                                child: Text(
                                  " question",
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      AppTextStyle.text12W400CardWishlistColor,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                child: Text(
                                  widget.wishlists.time,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTextStyle.textCardWishlist,
                                ),
                              ),
                              Container(
                                child: Text(
                                  " remaining",
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      AppTextStyle.text12W400CardWishlistColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: ratioCalculator.calculateHeight(8),
                      ),
                      ButtonBar(
                        buttonPadding:
                            EdgeInsets.only(left: 5), // Padding del boton
                        children: [
                          Container(
                            height: ratioCalculator.calculateHeight(35),
                            width: ratioCalculator.calculateWidth(161),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.56),
                              color: AppColors.containerButtonColor,
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                controller.addNewElement();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    AppColors.botonCardWishlistColor,
                              ),
                              child: Center(
                                child: Text(
                                  "Start Test",
                                  style: AppTextStyle.text14W400TextStyle,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


// class MyWidget extends StatefulWidget {
//   final BuildContext fatherContext;
//   const MyWidget({super.key, required this.fatherContext});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
//     final controller = Provider.of<WishlistController>(widget.fatherContext);
//     return Container(
//       child: Center(
//           child: ElevatedButton(
//         onPressed: () {
//           controller.init();
//         },
//         child: Text("09888"),
//       )),
//     );
//   }
// }

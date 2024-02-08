import 'package:flutter/material.dart';
import 'package:university_app/helper/app_colors.dart';
import 'package:university_app/helper/app_text_style.dart';
import 'package:university_app/helper/data_test/data_test.dart';
import 'package:university_app/helper/ratio_calculator.dart';
import 'package:university_app/models/wishlists/wishlists.dart';

class WhishlistPage extends StatefulWidget {
  const WhishlistPage({super.key});

  @override
  State<WhishlistPage> createState() => _WhishlistPageState();
}

class _WhishlistPageState extends State<WhishlistPage> {
  final RatioCalculator ratioCalculator = RatioCalculator();

  @override
  Widget build(BuildContext context) {
    // Convercion de Json a Object:
    List<dynamic> listWishlist = wishlist["wishlists"];
    List<Wishlists> listWishlistObject =
        listWishlist.map((json) => Wishlists.fromJson(json)).toList();

    return Scaffold(
      body: SafeArea(
        child: Column(
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
                left: ratioCalculator.calculateWidth(25.38),
                // right: ratioCalculator.calculateWidth(33.62),
              ),
              height: 550,
              child: ListView.builder(
                  itemCount: listWishlistObject.length,
                  itemBuilder: (context, index) {
                    return CardWishlist(
                      wishlists: listWishlistObject[index],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class CardWishlist extends StatefulWidget {
  final Wishlists wishlists;

  const CardWishlist({super.key, required this.wishlists});

  @override
  State<CardWishlist> createState() => _CardWishlistState();
}

class _CardWishlistState extends State<CardWishlist> {
  final RatioCalculator ratioCalculator = RatioCalculator();
  @override
  Widget build(BuildContext context) {
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
                      right: ratioCalculator.calculateWidth(77)),
                  width: ratioCalculator.calculateWidth(200),
                  height: ratioCalculator.calculateHeight(145),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.wishlists.title,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyle.text16W500HomeTextStyle,
                          ),
                          Text(
                            widget.wishlists.question,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyle.text12W400CardWishlist,
                          ),
                          Text(
                            widget.wishlists.time,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyle.text12W400CardWishlist,
                          ),
                        ],
                      ),
                      ButtonBar(
                        children: [
                          Container(
                            height: ratioCalculator.calculateHeight(35),
                            width: ratioCalculator.calculateWidth(161),
                            // margin: EdgeInsets.only(
                            //   left: ratioCalculator.calculateWidth(16),
                            //   right: ratioCalculator.calculateWidth(20),
                            // ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.56),
                              color: AppColors.containerButtonColor,
                            ),
                            child: ElevatedButton(
                              onPressed: () {},
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

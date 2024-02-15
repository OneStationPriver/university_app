import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:university_app/helper/app_colors.dart';
import 'package:university_app/helper/app_text_style.dart';
import 'package:university_app/helper/data_test/data_test.dart';
import 'package:university_app/helper/ratio_calculator.dart';
import 'package:university_app/models/wishlists/wishlists.dart';
import 'package:university_app/pages/account_page.dart';

class WhishlistPage extends StatefulWidget {
  const WhishlistPage({super.key});

  @override
  State<WhishlistPage> createState() => _WhishlistPageState();
}

class _WhishlistPageState extends State<WhishlistPage> {
  // creo la lista fuera del build para tener acesos a la lista desde la otra clase.
  final RatioCalculator ratioCalculator = RatioCalculator();
  List<dynamic> listWishlist = wishlist["wishlists"];
  List<Wishlists> listWishlistObject = [];

  // Con el initState() se carga una ves al cargar la pagina.
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Convercion de Json a Object:
    listWishlistObject =
        listWishlist.map((json) => Wishlists.fromJson(json)).toList();
  }

  // En esta funcion se remueve un elemento de la lista con el removeAt indicandole con el index que sera el elemento que se precione.
  // El setState() es para recargar la pagina con los cambios generados.
  void removeElementWishlist(int index) {
    listWishlistObject.removeAt(index);
    setState(() {});
  }

  // En esta funcion creo el objeto con sus parametros y se lo agrego a la lista listWishtObject con el add.
  void addNewElement() {
    final Wishlists wishlists = Wishlists(
      urlImage: "https://www.ibm.com/content/dam/adobe-cms/instana/media_logo/Docker.png/_jcr_content/renditions/cq5dam.web.1280.1280.png",
      title: "Docker",
      question: "32",
      time: "55min",
    );
    listWishlistObject.add(wishlists);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
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
                  left: ratioCalculator.calculateWidth(10),
                  right: ratioCalculator.calculateWidth(10)),
              height: 550,
              child: ListView.builder(
                  itemCount: listWishlistObject.length,
                  itemBuilder: (context, index) {
                    return CardWishlist(
                      wishlists: listWishlistObject[index],
                      remove: () {
                        removeElementWishlist(index);
                      },
                      add: () {
                        addNewElement();
                      },
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
  final VoidCallback remove;
  final VoidCallback add;

  const CardWishlist(
      {super.key,
      required this.wishlists,
      required this.remove,
      required this.add});

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
                                    widget.remove();
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
                                widget.add();
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

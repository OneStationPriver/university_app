import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:university_app/helper/data_test/data_test.dart';
import 'package:university_app/models/wishlists/wishlists.dart';

class WishlistController extends ChangeNotifier {
  List<dynamic> listWishlist = wishlist["wishlists"];
  List<Wishlists> listWishlistObject = [];

  void init() {
    listWishlistObject =
        listWishlist.map((json) => Wishlists.fromJson(json)).toList();
  }

  void change() {
    ChangeNotifier();
  }

  void removeElementWishlist(int index) {
    listWishlistObject.removeAt(index);
    notifyListeners();
  }

  void addNewElement() {
    final Wishlists wishlists = Wishlists(
      urlImage:
          "https://www.ibm.com/content/dam/adobe-cms/instana/media_logo/Docker.png/_jcr_content/renditions/cq5dam.web.1280.1280.png",
      title: "Docker",
      question: "32",
      time: "55min",
    );
    listWishlistObject.add(wishlists);
   notifyListeners();
  }
}

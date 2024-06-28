import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:tourism_app/Restaurants/restaurants_data.dart';
import 'package:tourism_app/Restaurants/restaurants_details.dart';

import 'package:tourism_app/features/home/presentation/home_view.dart';
import 'package:tourism_app/features/svscreen/Restaurants.dart';
import 'package:tourism_app/features/svscreen/profile.dart';
import 'package:tourism_app/features/svscreen/streo.dart';
import 'package:tourism_app/generated/l10n.dart';
import 'package:tourism_app/models/Resturant_model.dart';

import '../home/presentation/favourite/favourite.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  bool isEnabledLocation = false;
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
  }

  List<RestaurantModel> searchResult = [];
  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, right: 0, left: 16, bottom: 16),
                child: Material(
                  shadowColor: const Color(0xffE4D1B9),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.055,
                    width: 280,
                    child: TextFormField(
                      controller: searchController,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFFBE8C63),
                            ),
                            borderRadius: BorderRadius.circular(
                              22,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(
                              16,
                            ),
                          ),
                          hintText: 'Search',
                          hintStyle: const TextStyle(color: Color(0xffE4D1B9)),
                          prefixIconColor: const Color(0xffE4D1B9)),
                    ),
                  ),
                ),
              ),
              //
              MaterialButton(
                onPressed: () async {
                  if (isEnabledLocation) {
                    if (searchController.text.isEmpty) {
                      searchResult = [];
                      setState(() {});
                      return;
                    }
                    isLoading = true;
                    setState(() {});
                    await Future.delayed(const Duration(seconds: 1));
                    if (searchKeys.contains(searchController.text)) {
                      searchResult = restaurants;
                    } else {
                      searchResult = [];
                    }
                    isLoading = false;
                    setState(() {});
                    return;
                  }

                  AwesomeDialog(
                    width: MediaQuery.of(context).size.width * 1,
                    bodyHeaderDistance: 24,
                    context: context,
                    dialogType: DialogType.noHeader,
                    animType: AnimType.rightSlide,
                    title: S.of(context).Location_Access,
                    desc: S.of(context).dost,
                    titleTextStyle: const TextStyle(
                      color: Color(0xff6C3428),
                      fontSize: 16,
                      fontFamily: 'intr',
                      fontWeight: FontWeight.w500,
                    ),
                    btnCancelOnPress: () {
                      isEnabledLocation = false;
                    },
                    btnCancelText: (S.of(context).Log_Out),
                    btnCancelColor: Colors.white,
                    buttonsTextStyle: const TextStyle(
                      color: Color(0xFFE4D1B9),
                      fontSize: 16,
                      fontFamily: 'intr',
                      fontWeight: FontWeight.w500,
                    ),
                    btnOkOnPress: () {
                      isEnabledLocation = true;
                    },
                    btnOkText: (S.of(context).Allow),
                    btnOkColor: const Color(0xff6C3428),
                  ).show();
                },
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFF6C3428),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Icon(
                      Icons.search,
                      color: Color(0xFFFFFFFF),
                      size: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Column(
            children: <Widget>[
              for (int i = 0; i < searchResult.length; i++)
                ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RestaurantsDetails(
                          model: searchResult[i],
                        ),
                      ),
                    );
                  },
                  title: Text(
                    searchResult[i].name ?? "",
                    style: const TextStyle(
                      color: Color(0xFFBE8C63),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          if (searchResult.isEmpty)
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Now You Can Search About Near Coffee Or',
                    style: TextStyle(
                      color: Color(0xFFBE8C63),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          if (searchResult.isEmpty)
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Restaurant.',
                    style: TextStyle(
                      color: Color(0xFFBE8C63),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          if (isLoading) const CircularProgressIndicator(),

          //
          const SizedBox(height: 50),
          //

          //
        ],
      ),
      floatingActionButton: CircleAvatar(
        radius: 32,
        backgroundColor: Colors.white,
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 3, color: Colors.brown),
            borderRadius: BorderRadius.circular(100),
          ),
          backgroundColor: const Color(
            0xff6C3428,
          ),
          child: const Icon(
            Icons.camera_alt_rounded,
            size: 32,
            color: Color(
              0xffE4D1B9,
            ),
          ),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: MediaQuery.of(context).size.height * 0.1,
        padding: EdgeInsets.zero,
        shape: const CircularNotchedRectangle(),
        notchMargin: 4,
        child: Container(
          padding: EdgeInsets.zero,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: Color(0xff6c3428),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width * 0.2,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home_Screen()));
                    },
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: Color(0xffE4D1B9),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width * 0.2,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Favourite()));
                    },
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Color(0xffE4D1B9),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width * 0.2,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Search()));
                    },
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search,
                          color: Color(0xffBE8C63),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width * 0.2,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProfileScreen()));
                    },
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_rounded,
                          color: Color(0xffE4D1B9),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

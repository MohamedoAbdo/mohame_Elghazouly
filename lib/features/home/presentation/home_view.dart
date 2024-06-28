import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tourism_app/Helper/api.dart';
import 'package:tourism_app/Helper/app_helper.dart';
import 'package:tourism_app/features/controllers/favourit_controller.dart';
import 'package:tourism_app/features/controllers/home_controller.dart';
import 'package:tourism_app/features/home/presentation/favourite/favourite.dart';
import 'package:tourism_app/features/home/presentation/quick_servay/quick_survey%201.dart';
import 'package:tourism_app/features/home/presentation/trip_info/trip_info.dart';
import 'package:tourism_app/features/svscreen/Coastaltourism.dart';
import 'package:tourism_app/features/svscreen/country_details.dart';
import 'package:tourism_app/features/svscreen/place_details.dart';
import 'package:tourism_app/features/svscreen/PharaonicVillage.dart';
import 'package:tourism_app/features/svscreen/profile.dart';
import 'package:tourism_app/features/svscreen/search.dart';
import 'package:tourism_app/models/home_places_model.dart';

import '../scan/scan_design.dart';
import 'drawer.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({
    Key? key,
  }) : super(key: key);
  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

var mainColor = const Color(0xff6C3428);
GlobalKey<ScaffoldState> key = GlobalKey();

class _Home_ScreenState extends State<Home_Screen> {
  int currentIndex = 0;

  // List imgList = [
  //   'assets/image/giza.png',
  //   'assets/image/luxor.jpg',
  //   'assets/image/aswan.png',
  //   'assets/image/hurghada.png',
  //   'assets/image/siwa.png',
  // ];

  List photo1 = [
    'assets/image/cleopatra Bath.png',
    'assets/image/salt cave.png'
  ];
  List photo2 = [
    'assets/image/taba10%.png',
    'assets/image/luxoraswan.png',
  ];

  final HomeController homeController = HomeController();
  final FavouritController favouritController = FavouritController();
  late Future<PlacesModel> places;
  late Future<PlacesModel> suggestionPlaces;

  @override
  void initState() {
    super.initState();
    // to solve the error of dublicated GlobalKey
    key = GlobalKey();
    places = homeController.getCountries();
    suggestionPlaces = homeController.getSuggestionPlaces();
    favouritController.getFavourit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              title: Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Text(
                  "KEMET",
                  style: TextStyle(
                      fontSize: 32,
                      color: mainColor,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 20),
                          child: Text(
                            'Choose City You Need:',
                            style: TextStyle(
                                color: mainColor,
                                fontSize: 24,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        //
                        FutureBuilder<PlacesModel>(
                            future: places,
                            builder: (context, snapShot) {
                              if (snapShot.connectionState ==
                                  ConnectionState.waiting) {
                                return const Center(
                                    child: CircularProgressIndicator());
                              }

                              if (snapShot.hasError) {
                                return Text('Error: ${snapShot.error}');
                              }

                              if (snapShot.hasData) {
                                final data = snapShot.data!.data!;
                                return CarouselSlider.builder(
                                  itemCount: snapShot.data!.data!.length,
                                  itemBuilder: (BuildContext context, int index,
                                      int realIndex) {
                                    return InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  CountryDetails(
                                                    id: data[index].id!,
                                                  )),
                                        );
                                      },
                                      child: buildImage(
                                        data[index],
                                      ),
                                    );
                                  },
                                  options: CarouselOptions(
                                    viewportFraction: 0.45,
                                    padEnds: false,
                                    initialPage: 0,
                                    height: 150,
                                    enlargeCenterPage: false,
                                    autoPlay: false,
                                    onPageChanged: (index, _) {
                                      setState(() {
                                        currentIndex = index;
                                      });
                                    },
                                  ),
                                );
                              } else {
                                return const Text('No data');
                              }
                            }),
                        //

                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            buildCircleContainer(0),
                            buildCircleContainer(1),
                            buildCircleContainer(2),
                            buildCircleContainer(3),
                            buildCircleContainer(4),
                          ],
                        ),
                        //
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 18, top: 25, bottom: 16),
                          child: Text(
                            'Suggested For You:',
                            style: TextStyle(
                                color: mainColor,
                                fontSize: 24,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        // ده ايه
                        InkWell(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => const Coastaltourism()),
                            // );
                          },
                          child: FutureBuilder<PlacesModel>(
                              future: suggestionPlaces,
                              builder: (context, snapShot) {
                                if (snapShot.connectionState ==
                                    ConnectionState.waiting) {
                                  return const Center(
                                      child: CircularProgressIndicator());
                                }

                                if (snapShot.hasError) {
                                  return Text('Error: ${snapShot.error}');
                                }

                                if (snapShot.hasData) {
                                  final data = snapShot.data!.data!;
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0),
                                    child: GridView.count(
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      crossAxisCount: 2,
                                      mainAxisSpacing: 20,
                                      crossAxisSpacing: 15,
                                      childAspectRatio: 188 / 271,
                                      children: List.generate(
                                          data.length,
                                          (index) => InkWell(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            PlaceDetailsScreen(
                                                              id: data[index]
                                                                  .id!,
                                                            )),
                                                  );
                                                },
                                                child: GridViewItem(
                                                  place: data[index],
                                                  photo1:
                                                      '$base/images/${data[index].image}',
                                                ),
                                              )),
                                    ),
                                  );
                                }
                                return const Text('No data');
                              }),
                        ),

                        //

                        //
                        const Padding(
                          padding:
                              EdgeInsets.only(bottom: 32, top: 43, left: 18),
                          child: Text(
                            'Recommendation Trips :',
                            style: TextStyle(
                                color: Colors.brown,
                                fontSize: 24,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.55,
                          child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2),
                            itemCount: photo2.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Taba()));
                                },
                                child: Card(
                                  child: Image.asset(photo2[index]),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //todo
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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ScanDesign()),
            );
          },
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
      endDrawer: const NavDrawer(),
      key: key,
    );
  }

  Container buildCircleContainer(index) {
    return Container(
      width: 10,
      height: 10,
      margin: const EdgeInsets.symmetric(horizontal: 3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: currentIndex == index
            ? Colors.brown
            : Colors.brown.withOpacity(0.5),
      ),
    );
  }
}

Container buildImage(Place place) {
  return Container(
    width: 200,
    margin: const EdgeInsets.symmetric(horizontal: 5),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Column(
        children: [
          Expanded(
            child: Image.network(
              '$base/images/${place.image}',
              fit: BoxFit.cover,
              height: 100,
              width: double.infinity,
            ),
          ),
          Container(
            height: 30,
            width: 190,
            alignment: Alignment.center,
            color: const Color(0xff6C3428),
            child: Text(
              place.name!,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    ),
  );
}

class GridViewItem extends StatelessWidget {
  const GridViewItem({
    super.key,
    this.photo1,
    required this.place,
  });

  final photo1;
  final Place place;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      clipBehavior: Clip.antiAlias,
      child: Container(
        width: 188,
        height: 271,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.network(photo1),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
            child: Text(
              place.name ?? "",
              style: const TextStyle(
                  color: Colors.brown,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Text(
                place.description ?? "",
                style: const TextStyle(
                    color: Color(0xffBE8C63),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          )
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Coastal extends StatelessWidget {
  const Coastal({super.key});

  @override
  Widget build(BuildContext context) {
    List photo1 = [
      'assets/image/blue_laggon.png',
      'assets/image/ford_pay.png',
      'assets/image/blue_laggon.png',
      'assets/image/ford_pay.png',
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                      child: Image(
                    image: AssetImage("assets/image/coastal.png"),
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.24,
                  )),
                  Padding(
                    padding: const EdgeInsets.only(top: 127.0),
                    child: Image(
                        image: AssetImage('assets/image/coustal tourism.png')),
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Lorem Ipsum Dolor Sit Amet, Consectetur Adipi',
                      style: TextStyle(
                        color: Color(0xFFBE8C63),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),

              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Adipiscing Elit, Sed Do Eiusmod Tempor Incididunt',
                      style: TextStyle(
                        color: Color(0xFFBE8C63),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),

              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Ut Labore Et Dolore Magna Aliqua. Ut Enim Ad',
                      style: TextStyle(
                        color: Color(0xFFBE8C63),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),

              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Minim Veniam.',
                      style: TextStyle(
                        color: Color(0xFFBE8C63),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),

              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Lorem Ipsum Dolor Sit Amet, Consectetur ',
                      style: TextStyle(
                        color: Color(0xFFBE8C63),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),

              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Adipiscing Elit, Sed Do Eiusmod Tempor Incididunt',
                      style: TextStyle(
                        color: Color(0xFFBE8C63),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),

              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Ut Labore Et Dolore Magna Aliqua. Ut Enim Ad  ',
                      style: TextStyle(
                        color: Color(0xFFBE8C63),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),

              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Minim Veniam.Lorem Ipsum Dolor Sit Amet,',
                      style: TextStyle(
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
                height: 24,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Some Pics:',
                      style: TextStyle(
                        color: Color(0xff6C3428),
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 24),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 5,
                childAspectRatio: 188 / 200,
                children: List.generate(
                    photo1.length,
                    (index) => GridViewItem(
                          photo1: photo1[index],
                        )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GridViewItem extends StatelessWidget {
  const GridViewItem({
    super.key,
    this.photo1,
  });

  final photo1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(photo1,),
        ),

        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}

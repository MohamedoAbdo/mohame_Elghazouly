import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tourism_app/features/home/presentation/transport/transport.dart';
import 'package:tourism_app/features/svscreen/TourismType.dart';
import 'package:tourism_app/features/svscreen/aboutus.dart';
import 'package:tourism_app/features/svscreen/logup.dart';
import 'package:url_launcher/url_launcher.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});
  void _launchURL() async {
    final Uri url = Uri.parse(
        'https://ar.trivago.com/ar-145/srl?themeId=1319&search=200-8&sem_keyword=trivago%20%D9%85%D8%B5%D8%B1&sem_creativeid=552725280474&sem_matchtype=e&sem_network=g&sem_device=m&sem_placement=&sem_target=&sem_adposition=&sem_param1=&sem_param2=&sem_campaignid=719999417&sem_adgroupid=36045443445&sem_targetid=kwd-274601589058&sem_location=9073644&cipc=br&cip=9661900005&gad_source=1&gbraid=0AAAAAD6-gN_op9xqR--W27kLYOQ0EY5eh&gclid=CjwKCAjw48-vBhBbEiwAzqrZVOGcyKsYQ0fcZe41GReu-b0ExQ0ZOQW-u-BJcAPTY-totYxc1EZzFRoCWrEQAvD_BwE');
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 331,
      child: Drawer(
        backgroundColor: Color(0xff6C3428),
        child: Padding(
          padding: EdgeInsets.only(left: 24, right: 16),
          child: ListView(children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TourismType()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'Tourism Type',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffE4D1B9)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 24),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Transprant()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'Transportation',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffE4D1B9)),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: _launchURL,
              child: const Text(
                'hotels',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffE4D1B9)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 24),
              child: Text(
                'share with',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffE4D1B9)),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 4),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => aboutus()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'about us',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffE4D1B9)),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

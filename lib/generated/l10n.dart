// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `the easiest way to discover Egypt.`
  String get title1 {
    return Intl.message(
      'the easiest way to discover Egypt.',
      name: 'title1',
      desc: '',
      args: [],
    );
  }

  /// `the application provides comprehensive information on various recommended tourist destination in egypt.`
  String get text1 {
    return Intl.message(
      'the application provides comprehensive information on various recommended tourist destination in egypt.',
      name: 'text1',
      desc: '',
      args: [],
    );
  }

  /// `find restaurants or cafes around you.`
  String get title2 {
    return Intl.message(
      'find restaurants or cafes around you.',
      name: 'title2',
      desc: '',
      args: [],
    );
  }

  /// `The Recombination feature enable you to find restaurants or cafes around you, wherever you are.`
  String get text2 {
    return Intl.message(
      'The Recombination feature enable you to find restaurants or cafes around you, wherever you are.',
      name: 'text2',
      desc: '',
      args: [],
    );
  }

  /// `Availability of complete & valuable information.`
  String get title3 {
    return Intl.message(
      'Availability of complete & valuable information.',
      name: 'title3',
      desc: '',
      args: [],
    );
  }

  /// `we provide you qr code helps you with information about artifacts and another feature help them determine the tourist places in Egypt.`
  String get text3 {
    return Intl.message(
      'we provide you qr code helps you with information about artifacts and another feature help them determine the tourist places in Egypt.',
      name: 'text3',
      desc: '',
      args: [],
    );
  }

  /// `book your hotel or rent car.`
  String get title4 {
    return Intl.message(
      'book your hotel or rent car.',
      name: 'title4',
      desc: '',
      args: [],
    );
  }

  /// `you are able to book at comfortable, best hotel and resorts and make it easier for tourists to move around easily.`
  String get text4 {
    return Intl.message(
      'you are able to book at comfortable, best hotel and resorts and make it easier for tourists to move around easily.',
      name: 'text4',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `start`
  String get start {
    return Intl.message(
      'start',
      name: 'start',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get notification {
    return Intl.message(
      'Notification',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// ` 'Now When You Book From App You Can Get 10% Discount On Taba Trip.`
  String get not_text1 {
    return Intl.message(
      ' \'Now When You Book From App You Can Get 10% Discount On Taba Trip.',
      name: 'not_text1',
      desc: '',
      args: [],
    );
  }

  /// `Change Language `
  String get change_language {
    return Intl.message(
      'Change Language ',
      name: 'change_language',
      desc: '',
      args: [],
    );
  }

  /// ` choose your preferred language to\n           continue your adventure.`
  String get cl_text {
    return Intl.message(
      ' choose your preferred language to\n           continue your adventure.',
      name: 'cl_text',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get Profile {
    return Intl.message(
      'Profile',
      name: 'Profile',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get Edit_Profile {
    return Intl.message(
      'Edit Profile',
      name: 'Edit_Profile',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get Language {
    return Intl.message(
      'Language',
      name: 'Language',
      desc: '',
      args: [],
    );
  }

  /// `favourite`
  String get fav {
    return Intl.message(
      'favourite',
      name: 'fav',
      desc: '',
      args: [],
    );
  }

  /// `Help`
  String get Help {
    return Intl.message(
      'Help',
      name: 'Help',
      desc: '',
      args: [],
    );
  }

  /// `Log Out`
  String get Log_Out {
    return Intl.message(
      'Log Out',
      name: 'Log_Out',
      desc: '',
      args: [],
    );
  }

  /// `Are You Sure You Want To Log Out?`
  String get log_title {
    return Intl.message(
      'Are You Sure You Want To Log Out?',
      name: 'log_title',
      desc: '',
      args: [],
    );
  }

  /// `cancel`
  String get cancel {
    return Intl.message(
      'cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'Edit profile' key

  /// `Name`
  String get Name {
    return Intl.message(
      'Name',
      name: 'Name',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get Email {
    return Intl.message(
      'Email',
      name: 'Email',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get Phone {
    return Intl.message(
      'Phone',
      name: 'Phone',
      desc: '',
      args: [],
    );
  }

  /// `password`
  String get password {
    return Intl.message(
      'password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `save`
  String get save {
    return Intl.message(
      'save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the '' key

  /// `tourism type`
  String get tourism_type {
    return Intl.message(
      'tourism type',
      name: 'tourism_type',
      desc: '',
      args: [],
    );
  }

  /// `Coastal Tourism`
  String get Coastal_Tourism {
    return Intl.message(
      'Coastal Tourism',
      name: 'Coastal_Tourism',
      desc: '',
      args: [],
    );
  }

  /// `Egypt is the best vacation spot in the world. It includes  recreational activities taking place in the proximity of the sea (such as swimming, sunbathing, coastal walks, and wildlife watching).`
  String get ct_text {
    return Intl.message(
      'Egypt is the best vacation spot in the world. It includes  recreational activities taking place in the proximity of the sea (such as swimming, sunbathing, coastal walks, and wildlife watching).',
      name: 'ct_text',
      desc: '',
      args: [],
    );
  }

  /// `Religious tourism`
  String get Religious_tourism {
    return Intl.message(
      'Religious tourism',
      name: 'Religious_tourism',
      desc: '',
      args: [],
    );
  }

  /// `Egypt is the home of heavenly religions, where people of different faiths met and lived together for many years. As a result, the land of the pharaohs had gathered all the dominions.`
  String get rt_text {
    return Intl.message(
      'Egypt is the home of heavenly religions, where people of different faiths met and lived together for many years. As a result, the land of the pharaohs had gathered all the dominions.',
      name: 'rt_text',
      desc: '',
      args: [],
    );
  }

  /// `Medical tourism`
  String get Medical_tourism {
    return Intl.message(
      'Medical tourism',
      name: 'Medical_tourism',
      desc: '',
      args: [],
    );
  }

  /// `Egypt’s holy waters and sacred lands have always been known to have magical and healing powers. Egypt’s best and most famous thing is its mineral water, which has no moisture.`
  String get mt_text {
    return Intl.message(
      'Egypt’s holy waters and sacred lands have always been known to have magical and healing powers. Egypt’s best and most famous thing is its mineral water, which has no moisture.',
      name: 'mt_text',
      desc: '',
      args: [],
    );
  }

  /// `Archaeological tourism`
  String get Archaeological_tourism {
    return Intl.message(
      'Archaeological tourism',
      name: 'Archaeological_tourism',
      desc: '',
      args: [],
    );
  }

  /// `Since great attractions were found in ancient Egypt, this is Egypt’s primary type of tourism. Egypt has a lot of beautiful archaeological tourist sites that date back more than 5000 years.`
  String get at_text {
    return Intl.message(
      'Since great attractions were found in ancient Egypt, this is Egypt’s primary type of tourism. Egypt has a lot of beautiful archaeological tourist sites that date back more than 5000 years.',
      name: 'at_text',
      desc: '',
      args: [],
    );
  }

  /// `comprises recreational activities taking place in the proximity of the sea (such as swimming, sunbathing, coastal walks, and wildlife watching) as well as those taking place in the maritime area, including nautical sports. The stunning coastlines have luxury resorts, off-grid lagoons where you can totally unplug, fantastic diving opportunities in the Red Sea packed with wildlife sightings, and plenty of beaches for relaxing downtime by the Mediterranean.`
  String get Coastal_text {
    return Intl.message(
      'comprises recreational activities taking place in the proximity of the sea (such as swimming, sunbathing, coastal walks, and wildlife watching) as well as those taking place in the maritime area, including nautical sports. The stunning coastlines have luxury resorts, off-grid lagoons where you can totally unplug, fantastic diving opportunities in the Red Sea packed with wildlife sightings, and plenty of beaches for relaxing downtime by the Mediterranean.',
      name: 'Coastal_text',
      desc: '',
      args: [],
    );
  }

  /// `Religious tourism has taken place since the dawn of civilisation. Pilgrims travelled to pay homage to the sacred places and their guardians throughout the world. Tourism to sacred sites has merged with pilgrimage in the past 2,000 years.\r\nThe management of religious tourism presents many challenges that are unique in both breadth and application. Sites of religious significance have existed since biblical times and pilgrimage in the Judeo-Christian context is mentioned in the Old Testament of the Bible, for example, in the story of Elkanah, who travels annually to Shiloh to worship and sacrifice`
  String get Religious_text {
    return Intl.message(
      'Religious tourism has taken place since the dawn of civilisation. Pilgrims travelled to pay homage to the sacred places and their guardians throughout the world. Tourism to sacred sites has merged with pilgrimage in the past 2,000 years.\r\nThe management of religious tourism presents many challenges that are unique in both breadth and application. Sites of religious significance have existed since biblical times and pilgrimage in the Judeo-Christian context is mentioned in the Old Testament of the Bible, for example, in the story of Elkanah, who travels annually to Shiloh to worship and sacrifice',
      name: 'Religious_text',
      desc: '',
      args: [],
    );
  }

  /// `Each year, millions of US residents travel to another country for medical care which is called medical tourism. Medical tourists from the United States most commonly travel to Mexico and Canada, and to several other countries in Central America, South America, and the Caribbean.\r\nThe reasons people may seek medical care in another country include:\r\nCost: To get a treatment or procedure that may be cheaper in another country\r\nCulture: To receive care from a clinician who shares the traveler’s culture and language\r\nUnavailable or unapproved procedures: To get a procedure or therapy that is not available or approved in the United States\r\nThe most common procedures that people undergo on medical tourism trips include dental care, cosmetic surgery, fertility treatments, organ and tissue transplantation, and cancer treatment`
  String get Medical_text {
    return Intl.message(
      'Each year, millions of US residents travel to another country for medical care which is called medical tourism. Medical tourists from the United States most commonly travel to Mexico and Canada, and to several other countries in Central America, South America, and the Caribbean.\r\nThe reasons people may seek medical care in another country include:\r\nCost: To get a treatment or procedure that may be cheaper in another country\r\nCulture: To receive care from a clinician who shares the traveler’s culture and language\r\nUnavailable or unapproved procedures: To get a procedure or therapy that is not available or approved in the United States\r\nThe most common procedures that people undergo on medical tourism trips include dental care, cosmetic surgery, fertility treatments, organ and tissue transplantation, and cancer treatment',
      name: 'Medical_text',
      desc: '',
      args: [],
    );
  }

  /// `Archaeological tourism can include all products associated with public archaeological promotion, including visits to archaeological sites, museums, interpretation centers, reenactments of historical occurrences, and the rediscovery of indigenous products, festivals, or theaters.Archaeological tourism promotes archaeological sites and an area's cultural heritage. Its intent is to not cause more damage to the sites, thus avoiding becoming invasive tourism.\r\nArchaeologists have expressed concerns that tourism encourages particular ways of seeing and knowing the past.When archaeological sites are run by tourist boards, ticket fees and souvenir revenues can become a priority.`
  String get Archaeological_text {
    return Intl.message(
      'Archaeological tourism can include all products associated with public archaeological promotion, including visits to archaeological sites, museums, interpretation centers, reenactments of historical occurrences, and the rediscovery of indigenous products, festivals, or theaters.Archaeological tourism promotes archaeological sites and an area\'s cultural heritage. Its intent is to not cause more damage to the sites, thus avoiding becoming invasive tourism.\r\nArchaeologists have expressed concerns that tourism encourages particular ways of seeing and knowing the past.When archaeological sites are run by tourist boards, ticket fees and souvenir revenues can become a priority.',
      name: 'Archaeological_text',
      desc: '',
      args: [],
    );
  }

  /// `  some pics: `
  String get some_pics {
    return Intl.message(
      '  some pics: ',
      name: 'some_pics',
      desc: '',
      args: [],
    );
  }

  /// `  Description:                                                          `
  String get Description {
    return Intl.message(
      '  Description:                                                          ',
      name: 'Description',
      desc: '',
      args: [],
    );
  }

  /// `Karam Al-Sham Restaurant is a distinctive destination for lovers of Levantine cuisine in the heart of the city. It is distinguished by serving delicious traditional dishes such as kebab, fattoush, and hummus, while using fresh, high-quality ingredients. The restaurant has a warm atmosphere and upscale service, making it an ideal place to experience the authentic taste of the Levant. Whether you are looking for a quick lunch or a sumptuous dinner, Karam El Sham offers an unforgettable experience to its visitors.`
  String get Karam {
    return Intl.message(
      'Karam Al-Sham Restaurant is a distinctive destination for lovers of Levantine cuisine in the heart of the city. It is distinguished by serving delicious traditional dishes such as kebab, fattoush, and hummus, while using fresh, high-quality ingredients. The restaurant has a warm atmosphere and upscale service, making it an ideal place to experience the authentic taste of the Levant. Whether you are looking for a quick lunch or a sumptuous dinner, Karam El Sham offers an unforgettable experience to its visitors.',
      name: 'Karam',
      desc: '',
      args: [],
    );
  }

  /// `Balban Sweets Shop is not only famous for serving traditional sweets, but it is also creative in offering new and innovative sweet inventions. Among these inventions you can find kunafa with dark chocolate sauce, and basbousa with cream filling and fresh fruits. The shop also offers a variety of sweets that combine Eastern and Western flavors, such as macarons with saffron and rose flavors. Thanks to these innovations, Balban Sweets Shop has become a favorite destination for sweet lovers looking for unique and distinctive taste experiences.`
  String get B_labn {
    return Intl.message(
      'Balban Sweets Shop is not only famous for serving traditional sweets, but it is also creative in offering new and innovative sweet inventions. Among these inventions you can find kunafa with dark chocolate sauce, and basbousa with cream filling and fresh fruits. The shop also offers a variety of sweets that combine Eastern and Western flavors, such as macarons with saffron and rose flavors. Thanks to these innovations, Balban Sweets Shop has become a favorite destination for sweet lovers looking for unique and distinctive taste experiences.',
      name: 'B_labn',
      desc: '',
      args: [],
    );
  }

  /// `Kunafa and Basbousa sweets shop offers the most delicious types of kunafa and basbousa, fresh daily. The sweets are prepared with great skill and using excellent quality ingredients, to ensure the authentic taste and rich flavour. The store is an ideal destination for lovers of oriental sweets, where customers can enjoy a unique and distinctive experience with every visit. The store also offers a variety of options to suit all tastes.`
  String get Kunafa {
    return Intl.message(
      'Kunafa and Basbousa sweets shop offers the most delicious types of kunafa and basbousa, fresh daily. The sweets are prepared with great skill and using excellent quality ingredients, to ensure the authentic taste and rich flavour. The store is an ideal destination for lovers of oriental sweets, where customers can enjoy a unique and distinctive experience with every visit. The store also offers a variety of options to suit all tastes.',
      name: 'Kunafa',
      desc: '',
      args: [],
    );
  }

  /// `Hyper Carrefour is a chain of famous retail stores, and is considered part of the French Carrefour group. It provides a wide range of products including food, clothing, electronics, and household appliances. Hyper Carrefour is distinguished by its competitive prices and attractive promotions that attract customers. It is also known for its excellent customer service and providing a comfortable and comprehensive shopping experience.`
  String get Carrefour {
    return Intl.message(
      'Hyper Carrefour is a chain of famous retail stores, and is considered part of the French Carrefour group. It provides a wide range of products including food, clothing, electronics, and household appliances. Hyper Carrefour is distinguished by its competitive prices and attractive promotions that attract customers. It is also known for its excellent customer service and providing a comfortable and comprehensive shopping experience.',
      name: 'Carrefour',
      desc: '',
      args: [],
    );
  }

  /// `Bazooka Restaurant is a popular destination for fast food lovers in Egypt, featuring delicious and varied chicken sandwiches. The restaurant is famous for its unique dishes, such as chicken bazooka and its signature burgers, in addition to its special sauces that add a distinctive flavor. Bazooka's quality food and fast service make it an ideal choice for fast food. The restaurant is very popular with young people and families thanks to its fun atmosphere and reasonable prices.`
  String get Bazooka {
    return Intl.message(
      'Bazooka Restaurant is a popular destination for fast food lovers in Egypt, featuring delicious and varied chicken sandwiches. The restaurant is famous for its unique dishes, such as chicken bazooka and its signature burgers, in addition to its special sauces that add a distinctive flavor. Bazooka\'s quality food and fast service make it an ideal choice for fast food. The restaurant is very popular with young people and families thanks to its fun atmosphere and reasonable prices.',
      name: 'Bazooka',
      desc: '',
      args: [],
    );
  }

  /// `Walking in front of the university`
  String get textb {
    return Intl.message(
      'Walking in front of the university',
      name: 'textb',
      desc: '',
      args: [],
    );
  }

  /// `  Log Into \n  Your Account..`
  String get log {
    return Intl.message(
      '  Log Into \n  Your Account..',
      name: 'log',
      desc: '',
      args: [],
    );
  }

  /// `Forget password?`
  String get Forget {
    return Intl.message(
      'Forget password?',
      name: 'Forget',
      desc: '',
      args: [],
    );
  }

  /// `login faild`
  String get login_faild {
    return Intl.message(
      'login faild',
      name: 'login_faild',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get Login {
    return Intl.message(
      'Login',
      name: 'Login',
      desc: '',
      args: [],
    );
  }

  /// ` Login With`
  String get Login_With {
    return Intl.message(
      ' Login With',
      name: 'Login_With',
      desc: '',
      args: [],
    );
  }

  /// `you don’t have account?`
  String get you_don {
    return Intl.message(
      'you don’t have account?',
      name: 'you_don',
      desc: '',
      args: [],
    );
  }

  /// ` sign up`
  String get sign_up {
    return Intl.message(
      ' sign up',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `  Create  \n  your account..`
  String get Create {
    return Intl.message(
      '  Create  \n  your account..',
      name: 'Create',
      desc: '',
      args: [],
    );
  }

  /// `sign in`
  String get sign_in {
    return Intl.message(
      'sign in',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `you have account?`
  String get you_have {
    return Intl.message(
      'you have account?',
      name: 'you_have',
      desc: '',
      args: [],
    );
  }

  /// `       Blue Lagoon`
  String get Blue_Lagoon {
    return Intl.message(
      '       Blue Lagoon',
      name: 'Blue_Lagoon',
      desc: '',
      args: [],
    );
  }

  /// `          Ford Bay`
  String get Ford_Bay {
    return Intl.message(
      '          Ford Bay',
      name: 'Ford_Bay',
      desc: '',
      args: [],
    );
  }

  /// `             nuweiba`
  String get nuweiba {
    return Intl.message(
      '             nuweiba',
      name: 'nuweiba',
      desc: '',
      args: [],
    );
  }

  /// `          Marsa Alam`
  String get Marsa_Alam {
    return Intl.message(
      '          Marsa Alam',
      name: 'Marsa_Alam',
      desc: '',
      args: [],
    );
  }

  /// `           Abu Simbel`
  String get Abu_Simbel {
    return Intl.message(
      '           Abu Simbel',
      name: 'Abu_Simbel',
      desc: '',
      args: [],
    );
  }

  /// `             Dendera`
  String get Dendera {
    return Intl.message(
      '             Dendera',
      name: 'Dendera',
      desc: '',
      args: [],
    );
  }

  /// `           pyramids`
  String get pyramids {
    return Intl.message(
      '           pyramids',
      name: 'pyramids',
      desc: '',
      args: [],
    );
  }

  /// `       Villa of Birds`
  String get Villa_of_Birds {
    return Intl.message(
      '       Villa of Birds',
      name: 'Villa_of_Birds',
      desc: '',
      args: [],
    );
  }

  /// `    Dakrour Mountain`
  String get Dakrour_Mountain {
    return Intl.message(
      '    Dakrour Mountain',
      name: 'Dakrour_Mountain',
      desc: '',
      args: [],
    );
  }

  /// `           siwa Oasis`
  String get siwa_Oasis {
    return Intl.message(
      '           siwa Oasis',
      name: 'siwa_Oasis',
      desc: '',
      args: [],
    );
  }

  /// `           salt cave`
  String get salt_cave {
    return Intl.message(
      '           salt cave',
      name: 'salt_cave',
      desc: '',
      args: [],
    );
  }

  /// `        pharaoh's bath`
  String get pharaohs_bath {
    return Intl.message(
      '        pharaoh\'s bath',
      name: 'pharaohs_bath',
      desc: '',
      args: [],
    );
  }

  /// `Muhammad Ali Mosque`
  String get Muhammad_Ali_Mosque {
    return Intl.message(
      'Muhammad Ali Mosque',
      name: 'Muhammad_Ali_Mosque',
      desc: '',
      args: [],
    );
  }

  /// `    Khan el-Khalili`
  String get Khan {
    return Intl.message(
      '    Khan el-Khalili',
      name: 'Khan',
      desc: '',
      args: [],
    );
  }

  /// `     RED MONASTERy`
  String get RED_MONASTERy {
    return Intl.message(
      '     RED MONASTERy',
      name: 'RED_MONASTERy',
      desc: '',
      args: [],
    );
  }

  /// `CATHERINE MONASTERY`
  String get CATHERINE_MONASTERY {
    return Intl.message(
      'CATHERINE MONASTERY',
      name: 'CATHERINE_MONASTERY',
      desc: '',
      args: [],
    );
  }

  /// `Lorem ipsum dolor sit amet, consecteturAdipiscing elit, sed do eiusmod tempor incididuntUt labore et dolore magna aliqua. Ut enim adMinim veniam.Lorem ipsum dolor sit amet, consecteturAdipiscing elit, sed do eiusmod tempor incididuntUt labore et dolore magna aliqua.  .  `
  String get streo_text {
    return Intl.message(
      'Lorem ipsum dolor sit amet, consecteturAdipiscing elit, sed do eiusmod tempor incididuntUt labore et dolore magna aliqua. Ut enim adMinim veniam.Lorem ipsum dolor sit amet, consecteturAdipiscing elit, sed do eiusmod tempor incididuntUt labore et dolore magna aliqua.  .  ',
      name: 'streo_text',
      desc: '',
      args: [],
    );
  }

  /// `please allow kemet access to your location \n    to find restaurants or caffees near you.`
  String get dost {
    return Intl.message(
      'please allow kemet access to your location \n    to find restaurants or caffees near you.',
      name: 'dost',
      desc: '',
      args: [],
    );
  }

  /// `Location Access`
  String get Location_Access {
    return Intl.message(
      'Location Access',
      name: 'Location_Access',
      desc: '',
      args: [],
    );
  }

  /// `   Allow`
  String get Allow {
    return Intl.message(
      '   Allow',
      name: 'Allow',
      desc: '',
      args: [],
    );
  }

  /// ` Suggestted For You:`
  String get Suggestted {
    return Intl.message(
      ' Suggestted For You:',
      name: 'Suggestted',
      desc: '',
      args: [],
    );
  }

  /// `About Us `
  String get About_Us {
    return Intl.message(
      'About Us ',
      name: 'About_Us',
      desc: '',
      args: [],
    );
  }

  /// `The Kemet application aims to provide services to tourists coming from all over the world so that they can have a unique tourist experience through the application, due to the availability of several advantages, including:`
  String get The_Kemet {
    return Intl.message(
      'The Kemet application aims to provide services to tourists coming from all over the world so that they can have a unique tourist experience through the application, due to the availability of several advantages, including:',
      name: 'The_Kemet',
      desc: '',
      args: [],
    );
  }

  /// `QR code:`
  String get QR {
    return Intl.message(
      'QR code:',
      name: 'QR',
      desc: '',
      args: [],
    );
  }

  /// `One of the services provided in the application is the QR code feature, which helps the user and makes it easier for him to find out the information he needs easily and conveniently by reading the code next to each artifact.`
  String get TQR {
    return Intl.message(
      'One of the services provided in the application is the QR code feature, which helps the user and makes it easier for him to find out the information he needs easily and conveniently by reading the code next to each artifact.',
      name: 'TQR',
      desc: '',
      args: [],
    );
  }

  /// `Ease of use: `
  String get Ease {
    return Intl.message(
      'Ease of use: ',
      name: 'Ease',
      desc: '',
      args: [],
    );
  }

  /// ` Among the advantages of the application is the ease of navigation within the application, the absence of complications in the design, and the presence of more than one language, which makes it suitable for most users.`
  String get Among {
    return Intl.message(
      ' Among the advantages of the application is the ease of navigation within the application, the absence of complications in the design, and the presence of more than one language, which makes it suitable for most users.',
      name: 'Among',
      desc: '',
      args: [],
    );
  }

  /// `Artificial Intelligence: `
  String get Artificial {
    return Intl.message(
      'Artificial Intelligence: ',
      name: 'Artificial',
      desc: '',
      args: [],
    );
  }

  /// `Another thing that has been provided in the application is artificial intelligence, which in turn helps the user by displaying the user’s preferences, displays each user’s preferences individually, and provides nearby services based on geographical location.`
  String get Another {
    return Intl.message(
      'Another thing that has been provided in the application is artificial intelligence, which in turn helps the user by displaying the user’s preferences, displays each user’s preferences individually, and provides nearby services based on geographical location.',
      name: 'Another',
      desc: '',
      args: [],
    );
  }

  /// `Medical tourism`
  String get medical_tourism {
    return Intl.message(
      'Medical tourism',
      name: 'medical_tourism',
      desc: '',
      args: [],
    );
  }

  /// `Coastal tourism`
  String get coastal_tourism {
    return Intl.message(
      'Coastal tourism',
      name: 'coastal_tourism',
      desc: '',
      args: [],
    );
  }

  /// `Religious tourism`
  String get religious_tourism {
    return Intl.message(
      'Religious tourism',
      name: 'religious_tourism',
      desc: '',
      args: [],
    );
  }

  /// `Archaeological tourism`
  String get archaeologicalTourism {
    return Intl.message(
      'Archaeological tourism',
      name: 'archaeologicalTourism',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'fr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

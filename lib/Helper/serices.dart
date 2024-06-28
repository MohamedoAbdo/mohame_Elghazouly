import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class serices extends StatefulWidget {
  const serices({super.key});

  @override
  State<serices> createState() => _sericesState();
}

class _sericesState extends State<serices> {
  final _firestore = FirebaseFirestore.instance;

  String? email;
  String? name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //       StreamBuilder<QuerySnapshot>(
              //         stream: _firestore.collection('messages').snapshots(),
              //         builder: (context, snaphot) {
              //           List<MessageLine> messagewidgets = [];

              //           if (!snaphot.hasData) {
              //             // add here a spinner
              //           }

              //           final messages = snaphot.data!.docs;
              //           for (var message in messages) {
              //             final messagesemail = message.get('email');
              //             final messagesname = message.get('name');
              //             final messageswidget = MessageLine(
              //               email: messagesemail,
              //               name: messagesname,
              //             );
              //             messagewidgets.add(messageswidget);
              //           }

              //           return Expanded(
              //             child: ListView(
              //               padding: const EdgeInsets.symmetric(
              //                   horizontal: 10, vertical: 20),
              //               children: messagewidgets,
              //             ),
              //           );
              //         },
              //       ),
            ],
          ),
        ),
      ),
    );
  }
}

// class MessageLine extends StatelessWidget {
//   const MessageLine({this.email, this.name, Key? key}) : super(key: key);
//   final String? email;
//   final String? name;
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.blue,
//       child: Text(
//         '$email-$name',
//       ),
//     );
//   }
// }

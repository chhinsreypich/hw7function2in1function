// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 94, 134, 143),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 68, 111, 120),
        foregroundColor: Colors.black,
        title: const Text("PROFILE", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings_rounded, color: Colors.white,),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          // COLUMN THAT WILL CONTAIN THE PROFILE
          Column(
            children: const [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1554151228-14d9def656e4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=386&q=80",
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Milli Matt",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Text("Junior Product Designer")
            ],
          ),
          const SizedBox(height: 25),
          ///// complette ur profile
          // Row(
          //   children: const [
          //     Padding(
          //       padding: EdgeInsets.only(right: 5),
          //       child: Text(
          //         "Complete your profile",
          //         style: TextStyle(
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //     ),
          //     Text(
          //       "(1/5)",
          //       style: TextStyle(
          //         color: Colors.blue,
          //       ),
          //     )
          //   ],
          // ),
          const SizedBox(height: 10),
          // Row(
          //   children: List.generate(5, (index) {
          //     return Expanded(
          //       child: Container(
          //         height: 7,
          //         margin: EdgeInsets.only(right: index == 4 ? 0 : 6),
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(10),
          //           color: index == 0 ? Colors.blue : Colors.black12,
          //         ),
          //       ),
          //     );
          //   }),
          // ),
          // const SizedBox(height: 10),
          // SizedBox(
          //   height: 180,
          //   child: ListView.separated(
          //     physics: const BouncingScrollPhysics(),
          //     scrollDirection: Axis.horizontal,
          //     itemBuilder: (context, index) {
          //       final card = profileCompletionCards[index];
          //       return SizedBox(
          //         width: 160,
          //         child: Card(
          //           shadowColor: Colors.black12,
          //           child: Padding(
          //             padding: const EdgeInsets.all(15),
          //             child: Column(
          //               children: [
          //                 Icon(
          //                   card.icon,
          //                   size: 30,
          //                 ),
          //                 const SizedBox(height: 10),
          //                 Text(
          //                   card.title,
          //                   textAlign: TextAlign.center,
          //                 ),
          //                 const Spacer(),
          //                 ElevatedButton(
          //                   onPressed: () {},
          //                   style: ElevatedButton.styleFrom(
          //                     elevation: 0,
          //                     shape: RoundedRectangleBorder(
          //                         borderRadius: BorderRadius.circular(10)),
          //                   ),
          //                   child: Text(card.buttonText),
          //                 )
          //               ],
          //             ),
          //           ),
          //         ),
          //       );
          //     },
          //     separatorBuilder: (context, index) =>
          //         const Padding(padding: EdgeInsets.only(right: 5)),
          //     itemCount: profileCompletionCards.length,
          //   ),
          // ),
          const SizedBox(height: 35),
          ...List.generate(
            customListTiles.length,
            (index) {
              final tile = customListTiles[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Card(
                  elevation: 4,
                  shadowColor: Colors.black12,
                  child: ListTile(
                    leading: Icon(tile.icon),
                    title: Text(tile.title),
                    trailing: const Icon(Icons.chevron_right),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class ProfileCompletionCard {
  final String title;
  final String buttonText;
  final IconData icon;
  ProfileCompletionCard({
    required this.title,
    required this.buttonText,
    required this.icon,
  });
}

List<ProfileCompletionCard> profileCompletionCards = [
  ProfileCompletionCard(
    title: "Set Your Profile Details",
    icon: CupertinoIcons.person_circle,
    buttonText: "Continue",
  ),
  ProfileCompletionCard(
    title: "Upload your resume",
    icon: CupertinoIcons.doc,
    buttonText: "Upload",
  ),
  ProfileCompletionCard(
    title: "Add your skills",
    icon: CupertinoIcons.square_list,
    buttonText: "Add",
  ),
];

class CustomListTile {
  final IconData icon;
  final String title;
  CustomListTile({
    required this.icon,
    required this.title,
  });
}

List<CustomListTile> customListTiles = [
  CustomListTile(
    icon: Icons.person_2_outlined,
    title: "Edit Name",
  ),
  CustomListTile(
    icon: Icons.email_outlined,
    title: "Email",
  ),
  CustomListTile(
    icon: Icons.insights,
    title: "Activity",
  ),
  CustomListTile(
    icon: Icons.location_on_outlined,
    title: "Location",
  ),
  CustomListTile(
    title: "Notifications",
    icon: CupertinoIcons.bell,
  ),
  CustomListTile(
    title: "Logout",
    icon: CupertinoIcons.arrow_right_arrow_left,
  ),
];


// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

// // import 'dart:math';

// //// dont forget to add term page and something more

// import 'package:flutter/material.dart';


// class Profile extends StatefulWidget {
//   const Profile({super.key});

//   @override
//   State<Profile> createState() => _ProfileState();
// }

// class _ProfileState extends State<Profile> {
//   String? profile, name, email;
//   getTheSharedpred() {
//     // profile = await shared
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Stack(
//                 children: [
//                   Container(
//                     padding: EdgeInsets.only(top: 45, left: 70, right: 70),
//                     height: MediaQuery.of(context).size.height / 4.3,
//                     width: MediaQuery.of(context).size.width,
//                     decoration: BoxDecoration(
//                         color: Color.fromARGB(255, 70, 93, 87),
          
//                         /// color on the top and behind profile
//                         borderRadius: BorderRadius.vertical(
//                             bottom: Radius.elliptical(
//                                 MediaQuery.of(context).size.width, 105))),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(10),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         // arrow back button
//                         IconButton(
//                           onPressed: () {
//                             Navigator.pushNamed(context, "/homePage");
//                           },
//                           icon: Icon(Icons.arrow_back, color: Colors.white),
//                         ),
          
//                         // setting button
//                         IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.settings,
//                               color: Colors.white,
//                             )),
//                       ],
//                     ),
//                   ),
//                   Center(
//                     child: Container(
//                       margin: EdgeInsets.only(
//                           top: MediaQuery.of(context).size.height / 6.5),
//                       child: Material(
//                         elevation: 10,
//                         borderRadius: BorderRadius.circular(60),
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(60),
//                           // profile pic
//                           child: Image.asset(
//                               "lib/images/1.png", ////// change profile pic here
//                               height: 120,
//                               width: 120,
//                               fit: BoxFit.cover),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(top: 60),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           "LEEEEEE", // name on the top
//                           style: TextStyle(
//                             fontSize: 25,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                             fontFamily: "Poppins",
//                           ),
//                         )
//                       ],
//                     ),
//                   )
//                 ],
//               ),
          
//               /// first row
//               SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 margin: EdgeInsets.symmetric(
//                   horizontal: 20,
//                 ),
//                 child: Material(
//                   borderRadius: BorderRadius.circular(10),
//                   elevation: 2.0,
//                   child: Container(
//                     padding: EdgeInsets.symmetric(
//                       vertical: 15,
//                       horizontal: 10,
//                     ),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Container(
//                           child: Row(
//                             children: [
//                               ///
//                               Icon(Icons.person, color: Colors.black),
//                               SizedBox(
//                                 width: 20,
//                               ),
          
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     "Name",
//                                     style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                   ),
//                                   Text(
//                                     "LEEEEEE",
//                                     style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                         IconButton(
//                           onPressed: () {
//                             /// cannot find 
//                           },
//                           icon: Icon(
//                             Icons.edit,
//                             color: Colors.black,
//                           )
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
          
//               // second row
//               SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 margin: EdgeInsets.symmetric(
//                   horizontal: 20,
//                 ),
//                 child: Material(
//                   borderRadius: BorderRadius.circular(10),
//                   elevation: 2.0,
//                   child: Container(
//                     padding: EdgeInsets.symmetric(
//                       vertical: 15,
//                       horizontal: 10,
//                     ),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Row(
//                       children: [
//                         Icon(Icons.email, color: Colors.black),
//                         SizedBox(
//                           width: 20,
//                         ),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Email",
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                             Text(
//                               "chin5803pich@gamil.com",
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
          
//               // third row
//               SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 margin: EdgeInsets.symmetric(
//                   horizontal: 20,
//                 ),
//                 child: Material(
//                   borderRadius: BorderRadius.circular(10),
//                   elevation: 2.0,
//                   child: Container(
//                     padding: EdgeInsets.symmetric(
//                       vertical: 15,
//                       horizontal: 10,
//                     ),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Row(
//                       children: [
//                         Icon(Icons.description, color: Colors.black),
//                         SizedBox(
//                           width: 20,
//                         ),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "History",
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
          
//               // fourth row
//               SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 margin: EdgeInsets.symmetric(
//                   horizontal: 20,
//                 ),
//                 child: Material(
//                   borderRadius: BorderRadius.circular(10),
//                   elevation: 2.0,
//                   child: Container(
//                     padding: EdgeInsets.symmetric(
//                       vertical: 15,
//                       horizontal: 10,
//                     ),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Row(
//                       children: [
//                         Icon(Icons.description, color: Colors.black),
//                         SizedBox(
//                           width: 20,
//                         ),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Terms and Condition",
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
          
//               // fifth row
//               SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 margin: EdgeInsets.symmetric(
//                   horizontal: 20,
//                 ),
//                 child: Material(
//                   borderRadius: BorderRadius.circular(10),
//                   elevation: 2.0,
//                   child: Container(
//                     padding: EdgeInsets.symmetric(
//                       vertical: 15,
//                       horizontal: 10,
//                     ),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Row(
//                       children: [
//                         Icon(Icons.delete, color: Colors.black),
//                         SizedBox(
//                           width: 20,
//                         ),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Delete Account",
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
          
//               // sixth row
//               SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 margin: EdgeInsets.symmetric(
//                   horizontal: 20,
//                 ),
//                 child: Material(
//                   borderRadius: BorderRadius.circular(10),
//                   elevation: 2.0,
//                   child: Container(
//                     padding: EdgeInsets.symmetric(
//                       vertical: 15,
//                       horizontal: 10,
//                     ),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Row(
//                       children: [
//                         Icon(Icons.logout, color: Colors.black),
//                         SizedBox(
//                           width: 20,
//                         ),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Log Out",
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

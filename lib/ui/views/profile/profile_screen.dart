import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nuapp/ui/views/profile/widgets/edit_profile.dart';
import 'package:nuapp/ui/views/profile/widgets/tile_item_widget.dart';
import 'package:nuapp/utils/colors_utils.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: const BoxDecoration(
                            color: Palette.primaryColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const Icon(
                          Icons.fiber_manual_record_outlined,
                          color: Colors.white,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 13),
                        child: Text(
                          'Profile',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                              color: Palette.primaryColorLight,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7))),
                          child: const Icon(
                            Icons.edit,
                            color: Palette.primaryColor,
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                              color: Palette.primaryColorLight,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7))),
                          child: const Icon(
                            Icons.more_vert,
                            color: Palette.primaryColor,
                          ))
                    ],
                  )
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: size.height * 0.25,
                child: Stack(alignment: Alignment.center, children: [
                  Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 25, bottom: 10),
                        child: SizedBox(
                          height: 110,
                          width: 110,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/examples.jpg'),
                          ),
                        ),
                      ),
                      Text(
                        "Adam Smith",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Positioned(
                      top: 100,
                      right: 120,
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Palette.primaryColor,
                        ),
                        child: const Center(
                            child: Icon(Icons.edit,
                                color: Colors.white, size: 10)),
                      ))
                ]),
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(children: [
                    Divider(
                      height: 2,
                      color: Colors.grey.shade400,
                    ),
                    TileItemWidget(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => EditProfile()));
                      },
                      label: "Edit Profile",
                      icon: Icons.person,
                      widgetComplement: const Icon(
                        Icons.keyboard_arrow_right_sharp,
                        color: Palette.primaryColor,
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: Colors.grey.shade400,
                    ),
                    TileItemWidget(
                      onTap: () {},
                      label: "Notification",
                      icon: Icons.notifications,
                      widgetComplement: const Icon(
                        Icons.keyboard_arrow_right_sharp,
                        color: Palette.primaryColor,
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: Colors.grey.shade400,
                    ),
                    TileItemWidget(
                      onTap: () {},
                      label: "Security",
                      icon: Icons.lock,
                      widgetComplement: const Icon(
                        Icons.keyboard_arrow_right_sharp,
                        color: Palette.primaryColor,
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: Colors.grey.shade400,
                    ),
                    TileItemWidget(
                      onTap: () {},
                      label: "Dark Mode",
                      icon: Icons.remove_red_eye,
                      widgetComplement: CupertinoSwitch(
                        activeColor: Palette.primaryColor,
                        value: switchValue,
                        onChanged: (value) {
                          setState(() {
                            switchValue = value;
                          });
                        },
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: Colors.grey.shade400,
                    ),
                    TileItemWidget(
                        onTap: () {},
                        label: "Invinte Friends",
                        icon: Icons.person_add_alt,
                        widgetComplement: const Icon(
                          Icons.keyboard_arrow_right_sharp,
                          color: Palette.primaryColor,
                        )),
                    Divider(
                      height: 2,
                      color: Colors.grey.shade400,
                    ),
                    TileItemWidget(
                        onTap: () {},
                        label: "Logout",
                        icon: Icons.logout,
                        widgetComplement: const Icon(
                          Icons.keyboard_arrow_right_sharp,
                          color: Palette.primaryColor,
                        )),
                    Divider(
                      height: 2,
                      color: Colors.grey.shade400,
                    ),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

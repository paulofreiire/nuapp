import 'package:flutter/material.dart';
import 'package:nuapp/ui/views/chat/widgets/search_widget.dart';

import '../../../model/perfil_user.dart';
import '../../../utils/colors_utils.dart';

List<PerfilUser> draggableItems = [
  const PerfilUser(
      name: 'Rohini',
      distance: '10 miles away',
      imageAsset: 'assets/images/examples.jpg'),
  const PerfilUser(
      name: 'Rohini',
      distance: '10 miles away',
      imageAsset: 'assets/images/examples3.jpg'),
  const PerfilUser(
      name: 'Rohini',
      distance: '10 miles away',
      imageAsset: 'assets/images/examples2.jpg'),
  const PerfilUser(
      name: 'Rohini',
      distance: '10 miles away',
      imageAsset: 'assets/images/examples.jpg'),
  const PerfilUser(
      name: 'Rohini',
      distance: '10 miles away',
      imageAsset: 'assets/images/examples.jpg'),
];

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                        color: Palette.primaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: const Icon(
                      Icons.fiber_manual_record_outlined,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Inbox',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
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
                          borderRadius: BorderRadius.all(Radius.circular(7))),
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
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                      child: const Icon(
                        Icons.filter_list,
                        color: Palette.primaryColor,
                      ))
                ],
              ),
            ]),
            const SizedBox(
              height: 20,
            ),
            const SearchBarWidget(),
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: draggableItems.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Colors.grey.shade200)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 55,
                              height: 55,
                              decoration: const BoxDecoration(
                                  color: Palette.primaryColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25))),
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(25)),
                                  child: Image.asset(
                                    'assets/images/examples3.jpg',
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(children: [
                              Text(
                                draggableItems[index].name,
                                style: const TextStyle(color: Colors.black),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                draggableItems[index].name,
                                maxLines: 1,
                                style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    color: Colors.grey.shade500,
                                    fontSize: 13),
                              )
                            ]),
                          ],
                        ),
                        Column(children: [
                          Container(
                            width: 25,
                            height: 25,
                            decoration: const BoxDecoration(
                                color: Palette.primaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                            child: const Center(
                              child: Text(
                                '2',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            '20.20',
                            maxLines: 1,
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color: Colors.grey.shade500,
                                fontSize: 13),
                          )
                        ]),
                      ],
                    ),
                  ),
                );
              },
            )
          ]),
        ),
      ),
    );
  }
}

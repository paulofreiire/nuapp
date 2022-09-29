import 'package:flutter/material.dart';
import 'package:nuapp/ui/views/match/screen/widget/card_details_listview_widget.dart';
import 'package:nuapp/ui/views/match/screen/widget/interest_widget.dart';
import 'package:nuapp/utils/colors_utils.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.greenAccent,
        height: size.height,
        child: Stack(children: [
          // Lista De fotos Usuario
          SizedBox(
            height: size.height * 0.70,
            width: size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 52,
              itemBuilder: (BuildContext context, int index) {
                return const CardDetailsListWidget();
              },
            ),
          ),
          // Container Card Com detalhes
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(25),
              height: size.height * 0.40,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Colors.white),
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(children: [
                    //Cabeçalho
                    SizedBox(
                      width: size.height,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Nome Sobrenome, idade",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "profissão",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: const BoxDecoration(
                                  color: Palette.primaryColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: const Icon(
                                Icons.chat,
                                color: Colors.white,
                              ),
                            ),
                          ]),
                    ),
                    //About Detalhes

                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      width: size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            "About",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    //Interest
                    SizedBox(
                      width: size.width,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Interest",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Wrap(
                              spacing: 9,
                              runSpacing: 9,
                              alignment: WrapAlignment.center,
                              children: const [
                                InterestWidget(),
                                InterestWidget(),
                                InterestWidget(),
                                InterestWidget(),
                                InterestWidget(),
                              ],
                            )
                          ]),
                    )
                  ])),
            ),
          ),
          //Arrow Button Back Match Page
          Positioned(
              top: 50,
              left: 15,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back_rounded,
                  size: 25,
                  color: Palette.primaryColor,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )),
        ]),
      ),
    );
  }
}

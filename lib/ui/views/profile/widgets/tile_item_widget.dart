import 'package:flutter/material.dart';

import '../../../../utils/colors_utils.dart';

class TileItemWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final String? label;
  final IconData? icon;
  final Widget widgetComplement;

  const TileItemWidget(
      {super.key,
      required this.onTap,
      required this.label,
      required this.icon,
      required this.widgetComplement});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Container(
                    height: 55,
                    width: 55,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Palette.primaryColorLight),
                    child: Center(
                        child: Icon(
                      icon,
                      color: Palette.primaryColor,
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    label!,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            widgetComplement
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../../../../model/perfil_user.dart';
import '../../../../utils/colors_utils.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key, required this.profile}) : super(key: key);
  final PerfilUser profile;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 580,
      width: 340,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                profile.imageAsset,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

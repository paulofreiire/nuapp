import 'package:flutter/material.dart';

import '../../../../utils/colors_utils.dart';
import 'text_field_edit.dart';

class EditProfile extends StatelessWidget {
  EditProfile({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController fullName = TextEditingController();
  void validarCampos() {
    if (formKey.currentState!.validate()) {
    } else {}
  }

  final List<String> listaString = ['Valor 1', 'Valor 2', 'Valor 3'];

  final List<Map<String, dynamic>> devLevel = [
    {"name": "Junior"},
    {"name": "Pleno"},
    {"name": "Senior"},
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back_rounded,
                          size: 25,
                          color: Palette.primaryColor,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      const Text(
                        "Edite Profile",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextEditProfile(
                    maxLines: 1,
                    labelText: 'Full Name',
                    iconData: null,
                    controller: null,
                    validator: (
                      value,
                    ) {
                      if (value != null && value.isNotEmpty) {
                        return null;
                      } else {
                        return "Este Campo não pode estar vazio";
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextEditProfile(
                    maxLines: 1,
                    labelText: 'Email',
                    iconData: Icons.email,
                    controller: null,
                    validator: (
                      value,
                    ) {
                      if (value != null && value.isNotEmpty) {
                        return null;
                      } else {
                        return "Este Campo não pode estar vazio";
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextEditProfile(
                    maxLines: 1,
                    labelText: 'Phone',
                    iconData: Icons.phone,
                    controller: null,
                    validator: (
                      value,
                    ) {
                      if (value != null && value.isNotEmpty) {
                        return null;
                      } else {
                        return "Este Campo não pode estar vazio";
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextEditProfile(
                    maxLines: 5,
                    labelText: 'About',
                    iconData: Icons.arrow_drop_down_rounded,
                    controller: null,
                    validator: (
                      value,
                    ) {
                      if (value != null && value.isNotEmpty) {
                        return null;
                      } else {
                        return "Este Campo não pode estar vazio";
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextEditProfile(
                    maxLines: 1,
                    labelText: 'Interest',
                    iconData: Icons.edit,
                    controller: null,
                    validator: (
                      value,
                    ) {
                      if (value != null && value.isNotEmpty) {
                        return null;
                      } else {
                        return "Este Campo não pode estar vazio";
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextEditProfile(
                    maxLines: 1,
                    labelText: 'Address',
                    iconData: Icons.location_on,
                    controller: null,
                    validator: (
                      value,
                    ) {
                      if (value != null && value.isNotEmpty) {
                        return null;
                      } else {
                        return "Este Campo não pode estar vazio";
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 170,
                        child: DropdownButtonFormField(
                          onChanged: (value) {},
                          decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Palette.primaryColor, width: 2),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30.0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Palette.primaryColor, width: 2),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30.0),
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Palette.primaryColor, width: 2),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30.0),
                                ),
                              ),
                              filled: true,
                              hintText: "Age",
                              hintStyle: TextStyle(color: Palette.primaryColor),
                              fillColor: Colors.transparent),
                          items: devLevel.map(
                            (val) {
                              return DropdownMenuItem<String>(
                                value: val["name"],
                                child: Text(val["name"]),
                              );
                            },
                          ).toList(),
                        ),
                      ),
                      SizedBox(
                        width: 170,
                        child: DropdownButtonHideUnderline(
                            child: ButtonTheme(
                          alignedDropdown: true,
                          child: DropdownButtonFormField(
                            onChanged: (value) {},
                            decoration: const InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Palette.primaryColor, width: 2),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Palette.primaryColor, width: 2),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Palette.primaryColor, width: 2),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),
                                ),
                                filled: true,
                                hintText: "Gander",
                                hintStyle:
                                    TextStyle(color: Palette.primaryColor),
                                fillColor: Colors.transparent),
                            items: devLevel.map(
                              (val) {
                                return DropdownMenuItem<String>(
                                  value: val["name"],
                                  child: Text(val["name"]),
                                );
                              },
                            ).toList(),
                          ),
                        )),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        validarCampos();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Palette.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: const Text("Save Changes"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

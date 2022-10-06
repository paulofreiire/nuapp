import 'package:flutter/material.dart';
import 'package:nuapp/utils/utils.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile>
    with CustomStyleFormMixin, FormsValidateMixin {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController fullName = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController about = TextEditingController();
  final TextEditingController interest = TextEditingController();
  final TextEditingController address = TextEditingController();

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
                  TextFormField(
                    maxLines: 1,
                    controller: fullName,
                    decoration: defaultTextInputStyle(
                      label: "Full name",
                    ),
                    validator: nameValid,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    maxLines: 1,
                    controller: email,
                    decoration: defaultTextInputStyle(
                      suffixIcon: Icons.email_outlined,
                      label: "Email",
                    ),
                    validator: isEmailValid,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    maxLines: 1,
                    controller: phone,
                    decoration: defaultTextInputStyle(
                      suffixIcon: Icons.phone,
                      label: "Phone",
                    ),
                    validator: isPhoneNumberValid,
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
                    height: 20,
                  ),
                  TextFormField(
                    maxLines: 2,
                    controller: about,
                    decoration: defaultTextInputStyle(
                      suffixIcon: Icons.arrow_drop_down_rounded,
                      label: "About",
                    ),
                    validator: notIsEmptyAndNull,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    maxLines: 1,
                    controller: interest,
                    decoration: defaultTextInputStyle(
                      suffixIcon: Icons.edit,
                      label: "Interest",
                    ),
                    validator: notIsEmptyAndNull,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    maxLines: 1,
                    controller: address,
                    decoration: defaultTextInputStyle(
                      suffixIcon: Icons.edit,
                      label: "Address",
                    ),
                    validator: notIsEmptyAndNull,
                  ),
                  const SizedBox(
                    height: 20,
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



import 'package:flutter/material.dart';


import '../../../../utils/colors_utils.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
                decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              isDense: true,
              hintText: 'Pesquise aqui...',
              hintStyle: TextStyle(
                color: Colors.grey.shade400,
                fontSize: 14,
              ),
              prefixIcon: const Icon(
                Icons.search,
                color: Palette.primaryColor,
                size: 21,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(60),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              suffixIcon: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  FocusScope.of(context).unfocus();
                },
              ),
            ));
  }
}
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../library/values.dart';
import '../dynamic_spacer.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 29),
            child: Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.vertical(bottom: context.highRadius),
              ),
              padding: context.paddingMedium,
              child: SafeArea(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Günaydın Özgür",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(fontWeight: FontWeight.bold)),
                        const DynamicSpacer(height: 0.01),
                        Text(
                          "09:06",
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const DynamicSpacer(height: 0.01),
                        Text("8 Haziran Çarşamba",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(fontWeight: FontWeight.bold)),
                        const DynamicSpacer(height: 0.05),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.abc),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: context.horizontalPaddingMedium,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: context.highBorderRadius,
                ),
                hintText: 'Arama',
                filled: true,
                fillColor: cTextFieldFillColor,
                enabledBorder: _outlineInputBorder(),
                focusedBorder: _outlineInputBorder(),
                prefixIcon: const Icon(Icons.search, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }

  OutlineInputBorder _outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: context.highBorderRadius,
      borderSide: const BorderSide(color: cTextFieldBorderColor),
    );
  }
}

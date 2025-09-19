// import 'package:flutter/material.dart';
import 'package:responsive/flex_widget.dart';
import 'package:responsive/responsive_row.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Accueil'),
      //   backgroundColor: Theme.of(context).colorScheme.primary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(Adaptive.h(10)),

          ResponsiveRow(
            columnsCount: 12,
            // crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              // Container(color: Colors.red),
              FlexWidget(lg: 6, md: 6, sm: 2, xs: 2, child: Container()),
              FlexWidget(
                lg: 6,
                md: 6,
                sm: 10,
                xs: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SelectableText('Hi, my name is Jean Luc Kabulu').x2Large,
                    Gap(20),
                    Avatar(
                      backgroundColor: Colors.red,
                      initials: Avatar.getInitials('Kabulu Jean Luc'),
                      provider: AssetImage('assets/yC8phRay_400x400.jpg'),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Gap(Adaptive.h(5)),
          ResponsiveRow(
            columnsCount: 12,
            // crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              // Container(color: Colors.red),
              FlexWidget(lg: 6, md: 6, sm: 2, xs: 2, child: Container()),
              FlexWidget(
                lg: 6,
                md: 6,
                sm: 10,
                xs: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SelectableText(
                      'I build productivity apps & package',
                    ).xLarge,
                    Gap(20),
                  ],
                ),
              ),
            ],
          ),

          Gap(Adaptive.h(7)),
          ResponsiveRow(
            columnsCount: 12,
            // crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              // Container(color: Colors.red),
              FlexWidget(lg: 3, md: 3, sm: 2, xs: 2, child: Container()),
              FlexWidget(
                lg: 6,
                md: 6,
                sm: 10,
                xs: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SelectableText(
                      'I also post regularly on these platforms',
                    ).xLarge,
                    // Gap(20),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

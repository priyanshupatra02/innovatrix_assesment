import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:innovatrix_assesment/features/login/view/widgets/header_text.dart';
import 'package:innovatrix_assesment/features/login/view/widgets/subtitle_text.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage(
  deferredLoading: true,
)
class LoginBasePage extends StatelessWidget {
  const LoginBasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: <Widget>[
        20.heightBox,
        const HeaderText(),
        15.heightBox,
        const SubtitleText(),
        50.heightBox,
        // .objectTopCenter().pOnly(top: 30, bottom: 70),
        const AutoRouter().h(context.screenHeight * 0.7),
      ]
          .vStack(
            crossAlignment: CrossAxisAlignment.start,
            axisSize: MainAxisSize.max,
          )
          .px(20)
          .scrollVertical(
            physics: const ClampingScrollPhysics(),
          )
          .safeArea(),
    );
  }
}

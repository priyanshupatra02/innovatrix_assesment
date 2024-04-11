import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:innovatrix_assesment/features/homepage/view/widgets/home_page_body.dart';
import 'package:innovatrix_assesment/features/homepage/view/widgets/logout_button.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
         actions: const [
          LogoutButton(),
        ],
      ),
      body: const HomePageBody(),
    );
  }
}

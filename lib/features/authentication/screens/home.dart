import 'package:flutter/material.dart';
import 'package:t_store/common/wigdets/container/primary_header_container.dart';
import 'package:t_store/common/wigdets/home_app_bar/home_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            TPrimaryHeaderContainer(
                child: Column(
              children: [THomeAppBar()],
            )),
          ],
        ),
      ),
    );
  }
}

import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/core/routes.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 131, 1),
      body: SizedBox.expand(
        child: Column(
          children: [
            // Logo bölümü
            Expanded(
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), // Köşe yumuşatma
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.webp'),
                    fit: BoxFit.cover, // Resmi düzgün sığdırmak için
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),

            const SizedBox(height: 20),

            InkWell(
              onTap:() => context.go("/home"),
              child: SizedBox(
                width: 500,
                child: DotLottieLoader.fromAsset(
                  "assets/motions/loading1.lottie",
                  frameBuilder: (BuildContext ctx, DotLottie? dotlottie) {
                    if (dotlottie != null) {
                      return Lottie.memory(dotlottie.animations.values.single);
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

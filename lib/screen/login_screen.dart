import 'package:e_commerce_ui/constants/lib/constants/image_paths.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BackArrow(),
            const SizedBox(height: 33),
            const LogoHeader(),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LogoHeader extends StatelessWidget {
  const LogoHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 150,
        width: 200,
        decoration: BoxDecoration(
            color: Colors.red,
            image: DecorationImage(
                fit: BoxFit.cover,
                scale: 1,
                image: AssetImage(
                  ImagePaths
                      .logo_login_heder, // Corrected typo: `logo_login_heder` to `logo_login_header`
                ))),
      ),
    );
  }
}

class BackArrow extends StatelessWidget {
  const BackArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28, top: 23),
      child: Container(
        width: 44,
        height: 44,
        child: Center(
            child: Image.asset(
          ImagePaths.back_arrow,
          scale: 3,
        )),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.black, width: 2)),
      ),
    );
  }
}

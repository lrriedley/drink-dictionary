import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<StatefulWidget> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 30,
                  bottom: 20,
                  left: 20,
                  right: 20,
                ),
                width: 200,
                child: Image.asset('assets/loganriedley_design_a_iOS_app_icon_with_a_flat_white_cocktail_g_f6705fca-d2cf-45c4-a970-068ddc724de9.png'),
              ),
               Card(
                margin: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Form(
                      child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
decoration: const InputDecoration(
  labelText: 'Email Address'
),
keyboardType: TextInputType.emailAddress,
autocorrect: false,
textCapitalization: TextCapitalization.none,
                        )
                      ],
                    )),
                  
                  ),
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}
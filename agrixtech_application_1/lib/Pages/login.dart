import 'package:flutter/material.dart';
import 'package:agrixtech_application_1/Components/text_feild.dart';
import 'package:agrixtech_application_1/Components/button.dart';
import 'package:agrixtech_application_1/Components/squarre_tile.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              width: w,
              height: h,
              decoration: const BoxDecoration(color: Colors.transparent),
              child: Column(
                children: <Widget>[
                  Image.asset("assets/Images/Trace.png", height: 100),
                  const SizedBox(height:35),
                  Image.asset("assets/Images/Image1.jpg", height: 120),
                  const SizedBox(height: 13.0),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Text(
                          "Bienvenue dans ",
                          style: TextStyle(
                          fontFamily: 'Poppins-Regular',
                          fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "SmartFamAPP",
                          style: TextStyle(
                          fontFamily: 'Poppins-Black',
                          fontSize: 16,
                          color: Color.fromRGBO(64, 212, 0, 1)),
                          textAlign: TextAlign.center,
                        )
                    ]
                  ),
                  const SizedBox(height: 40,),
                  MyTextField(controller: usernameController,
                              hintText: "Nom d'utilisateur", 
                              obscureText: false,
                              icon: Icons.account_circle,
                  ),
                  const SizedBox(height: 17,),
                  MyTextField(controller: passwordController,
                              hintText: "Mot de passe", 
                              obscureText: true,
                              icon: Icons.lock,
                  ),
                  const SizedBox(height: 1,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row (
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          child: const Text("Mot de passe oublié ?" ,style: TextStyle(color: Color.fromRGBO(64, 212, 0, 1), fontSize: 15)), 
                          onPressed:() {
                          },
                        ),
                      ]
                    ),
                  ),
                  const SizedBox(height: 0,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: MyButton(rad: 6.0, butText: "Connexion"),
                  ),
                  const SizedBox(height: 30,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal:25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.4,
                            color: Color.fromARGB(201, 158, 158, 158),
                          )
                        ),
                        Text(
                          "Se connecter avec"
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.4,
                            color: Color.fromARGB(201, 158, 158, 158),
                          )
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      MysquareTile(
                        linkImage: "assets/Images/search.png"
                      )
                    ]
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Pas encore inscrit ?",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(width: 5,),
                      TextButton(
                        child: const Text("Inscrivez-vous maintenant",
                                    style: TextStyle(
                                    color: Color.fromRGBO(64, 212, 0, 1), 
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                        )), 
                        onPressed: () {

                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        )
      )
    );
  }
}

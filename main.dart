import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Application'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey[200],
        ),
        body: const LoginPage(),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(
            left: 15.0,
            right: 15.0,
            top: 15.0,
            bottom: 0.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.account_box_outlined),
                        labelText: "Enter your Username",
                        hintText: "Enter Username or E-mail",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.fingerprint_rounded),
                        labelText: "Enter your Password",
                        hintText: "Password",
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          onPressed: null,
                          icon: Icon(Icons.remove_red_eye_sharp),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          showModalBottomSheet(context: context,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),
                            ),
                            builder: (context) =>
                                Container(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Forget Password', style: Theme
                                          .of(context)
                                          .textTheme
                                          .headline2),
                                      Text('Select an option to reset your password', style: Theme
                                          .of(context)
                                          .textTheme
                                          .bodyText2),
                                      const SizedBox(height: 10.0),
                                      ForgotPassword(),


                                    ],


                                  ),

                                ),
                          );
                        },
                        child: const Text('Forgot Password?'),

                      ),

                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('LOGIN'),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp()
                            ),
                          );
                        },
                        child: Text('SIGN UP'),


                      ),

                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
              10.0),
          color: Colors.blueGrey[200],
        ),
        child: Row(
          children: [
            const Icon(
                Icons.mail_outline_rounded,size: 40.0),
            SizedBox(width: 10.0),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Email',style: Theme.of(context).textTheme.headline6),
                Text('Reset via Email',style: Theme.of(context).textTheme.bodyText2),

              ],

            ),
          ],
        ),
      ),
    );
  }
}

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    title: Text('Sign up');
    return Scaffold(

      body: SingleChildScrollView(
        child: Container(


        padding: const EdgeInsets.only(
          left: 15.0,
          right: 15.0,
          top: 15.0,
          bottom: 0.0,
        ),

          child: Column(
            children:  [
          Form(
          child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           TextFormField(
             decoration: InputDecoration(
               prefixIcon: Icon(Icons.contact_mail_sharp),
               labelText: 'Enter your name/surname',
               hintText: 'Name and Surname',
               border: OutlineInputBorder(),

             ),


           ),
           const SizedBox(height: 10),
           TextFormField(
             decoration: InputDecoration(
               prefixIcon: Icon(Icons.add_call),
               labelText: 'Enter your phone number',
               hintText: '+90',
               border: OutlineInputBorder(),
             ),
           ),
           const SizedBox(height: 10),
           TextFormField(
             decoration: InputDecoration(
               prefixIcon: Icon(Icons.abc),
               labelText:'Create a password' ,
               hintText: '8 characters required with special characters' ,
               border: OutlineInputBorder(),
               suffixIcon: IconButton(
                 onPressed: null,
                 icon: Icon(Icons.remove_red_eye_sharp),
             ),
           ),
           ),
           const SizedBox(height: 10),
      SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder:(context)=> const SuccessfulRegistered()
              ),
            );

          },
          child: Text('Sign Up'),


        ),
      ),


         ],

           ),
          ),
            ],
          ),
        ),
      ),
    );
  }
}



class SuccessfulRegistered extends StatelessWidget {
  const SuccessfulRegistered({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Container(


      padding: const EdgeInsets.only(
      left: 15.0,
      right: 15.0,
      top: 15.0,
      bottom: 0.0,
    ),



      ),
    ),
    );
  }
}

class Confirmation extends StatelessWidget {
  const Confirmation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}

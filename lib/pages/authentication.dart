import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Color.fromARGB(247, 247, 247, 247)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/AnimMyLOGO.png',
              height: 150,
            ),
            Text(
              'My Hobby, My Life!',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blue.shade200.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3))
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SingleChildScrollView(
                    // Wrap in SingleChildScrollView
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Username',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 82, 82, 82)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'LukmanIsMee',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Password',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 82, 82, 82)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'lukman123',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Text('coba inget inget dah');
                            },
                            child: Text(
                              'Forgot your Password?',
                              style: TextStyle(
                                  color: Colors.blue.shade300, fontSize: 16),
                            )),
                        Center(
                          // Wrap the button in a Center widget
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[300],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.all(10),
                            ),
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, 'homePage');
                            },
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width *
                                  0.8, // 80% of the screen width
                              child: Center(
                                child: Text(
                                  'Log In!',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'signUp');
                              },
                              child: Text(
                                'Don\'t have an account? Sign Up!',
                                style: TextStyle(color: Colors.blue),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

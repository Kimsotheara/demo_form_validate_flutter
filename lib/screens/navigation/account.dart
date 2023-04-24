import 'package:flutter/material.dart';
import '../login_screen.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(12.5),
          child: Column(
            children: [
              /// -- IMAGE
              Stack(
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        'assets/avatar.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.blueAccent),
                      child: const Icon(
                        // LineAwesomeIcons.alternate_pencil,
                        Icons.alternate_email_outlined,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text('User', style: Theme.of(context).textTheme.headline4),
              Text('user1@gmail.com',
                  style: Theme.of(context).textTheme.bodyText2),
              const SizedBox(height: 20),

              // const SizedBox(height: 10),
              GestureDetector(
                onTap: () {},
                child: Card(
                  color: themeManager.themeMode == ThemeMode.light
                      ? Colors.white
                      : Colors.grey.shade900,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 10,
                      bottom: 6,
                      top: 6,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const <Widget>[
                        ListTile(
                          title: Text(
                            'Personal Information',
                            style: TextStyle(
                              color: Colors.cyan,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Divider(),
                        ListTile(
                          title: Text(
                            'Email',
                            style: TextStyle(
                              color: Colors.cyan,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            'palmeiro.leonardo@gmail.com',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Divider(),
                        ListTile(
                          title: Text(
                            'GitHub',
                            style: TextStyle(
                              color: Colors.cyan,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            'https://github.com/leopalmeiro',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Divider(),
                        ListTile(
                          title: Text(
                            'Linkedin',
                            style: TextStyle(
                              color: Colors.cyan,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            'www.linkedin.com/in/leonardo-palmeiro-834a1755',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

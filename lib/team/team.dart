import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher.dart' as luncher;

List<Map<String, dynamic>> team = [
  {
    "id": 1,
    "name": "Fokrul Islam",
    "Title": "Flutter Developer",
    "phone": "01726032986",
    "email": "islamfokrul2002@gmail.com",
    "facebook": "",
    "gitHub": "",
    "image": "https://avatars.githubusercontent.com/u/73265474?v=4",
  },
  {
    "id": 2,
    "name": "Dipon Dev",
    "Title": "Graphics Designer and Flutter Developer",
    "phone": "",
    "email": "",
    "facebook": "",
    "gitHub": "",
    "image": "",
  },
  {
    "id": 3,
    "name": "Sojib",
    "Title": "Digital Marketer and Developer",
    "phone": "",
    "email": "",
    "facebook": "",
    "gitHub": "",
    "image": "",
  }
];

class Team extends StatefulWidget {
  const Team({Key? key}) : super(key: key);

  @override
  State<Team> createState() => _TeamState();
}

class _TeamState extends State<Team> {
  Uri call = Uri(scheme: 'tel', path: '+8801726032986');
  Uri email = Uri(scheme: 'mailto', path: 'islamfokrul2002@gmail.com');

  fokrul_call() async {
    await launchUrl(call);
  }

  fokrul_email() async {
    await launchUrl(email);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Team'),
          ),
          body: ListView.builder(
            itemCount: team.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 8,
                margin: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 15.0,
                    ),
                    Center(
                      child: CircleAvatar(
                        maxRadius: 100.0,
                        backgroundImage:
                            NetworkImage(team[index]['image'] ?? ''),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      team[index]['name'],
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.w900),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      "Computer Technology",
                      style: TextStyle(fontSize: 20.0),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                     'Flutter Developer',
                      style: TextStyle(fontSize: 20.0),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            fokrul_call();
                          },
                          icon: const Icon(
                            Icons.call,
                            color: Colors.blue,
                            size: 30.0,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            fokrul_email();
                          },
                          icon: const Icon(
                            Icons.email,
                            color: Colors.blue,
                            size: 30.0,
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            luncher.launchUrl(
                                Uri.parse(
                                    'https://web.facebook.com/humien.ahmad.9'),
                                mode: luncher.LaunchMode.externalApplication);
                          },
                          icon: const Icon(
                            Icons.facebook,
                            color: Colors.blue,
                            size: 30.0,
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            luncher.launchUrl(
                                Uri.parse('https://github.com/fokrul511'),
                                mode: luncher.LaunchMode.externalApplication);
                          },
                          icon: const FaIcon(
                            FontAwesomeIcons.github,
                            size: 30.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                  ],
                ),
              );
            },
          )),
    );
  }
}

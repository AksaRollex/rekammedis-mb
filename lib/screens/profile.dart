import 'package:flutter/material.dart';
import 'package:rekammedis/components/buttonlogout.dart';
import '../utils/config.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // for favorite button
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: <Widget>[
        Config.spaceMedium,
        const AboutDoctor(),
        const Spacer(),
        Padding(
            padding: const EdgeInsets.all(5),
            child: Buttonlogout(
                width: double.infinity,
                title: 'Keluar',
                onPressed: () {
                  // navigate to booking page
                  Navigator.of(context).pushNamed('auth_page');
                },
                disable: false))

        // details of the doctor
      ]),
    ));
  }
}

class AboutDoctor extends StatelessWidget {
  const AboutDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          const CircleAvatar(
            radius:40.0,
            backgroundImage: AssetImage('assets/img/penyro.jpg'),
            backgroundColor: Colors.white,
          ),
          Config.spaceMedium,
           SizedBox(
            width: Config.widthSize * 0.75,
            child: const Text(
              'Nama Lengkap',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ),
          
          Text(
            'Saa Rollcake',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
           SizedBox(
            width: Config.widthSize * 0.75,
            child: const Text(
              'NIK',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            '3578318323230001',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
           SizedBox(
            width: Config.widthSize * 0.75,
            child: const Text(
              'Nomor Telepon',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            '08623423423',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
           SizedBox(
            width: Config.widthSize * 0.75,
            child: const Text(
              'Alamat Rumah',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            'Sambiarum Lor VIII/9 54E',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: Config.widthSize * 0.75,
            child: const Text(
              'Tanggal Lahir',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            '29/10/1999',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Config.spaceSmall,
          // SizedBox(
          //   width: Config.widthSize * 0.75,
          //   child: const Text(
          //     'JL. Sambirejo VIII/2 Blok 57E',
          //     style: TextStyle(
          //       color: Colors.grey,
          //       fontSize: 15,
          //     ),
          //     softWrap: true,
          //     textAlign: TextAlign.center,
          //   ),
          // ),
          Config.spaceSmall,
          // SizedBox(
          //   width: Config.widthSize * 0.75,
          //   child: const Text(
          //     '18/10/1999',
          //     style: TextStyle(
          //         color: Colors.grey,
          //         fontSize: 15,
          //         ),
          //     softWrap: true,
          //     textAlign: TextAlign.center,
          //   ),
          // ),
        ],
      ),
    );
  }
}

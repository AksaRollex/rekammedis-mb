import 'package:flutter/material.dart';
// import '../components/custom_appbar.dart';
import '../utils/config.dart';

class Service extends StatefulWidget {
  const Service({super.key});

  @override
  State<Service> createState() => _ServiceState();
}


class _ServiceState extends State<Service> {
  // for favorite button
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: <Widget>[
        Config.spaceMedium,
        const Judul(),
        const Artikel(),
        const Spacer(),


        // details of the doctor
      ]),
    ));
  }
}

class Judul extends StatelessWidget {
  const Judul({super.key});

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          const CircleAvatar(
            radius: 65.0,
            backgroundImage: AssetImage('assets/img/rs.jpg'),
            backgroundColor: Colors.white,
          ),
          Config.spaceMedium,
          const Text(
            'Rumah Sakit REDIC',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Config.spaceSmall,
        ],
      ),
    );
  }
}

class Artikel extends StatelessWidget {
  const Artikel({super.key});

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: <Widget>[
          Config.spaceMedium,
          const Card2(),
          Config.spaceBig,
          const Text(
            '! PERINGATAN !',
            style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 18, color: Colors.red            ),
          ),
          Config.spaceSmall,
          const Text(
            'Silahkan Hubungi Di Saat Anda Membutuhkan Bantuan Rumah Sakit',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
            softWrap: true,
            textAlign: TextAlign.justify,
          )
          // doctor exp, patient and rating
        ],
      ),
    );
  }
}

class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const <Widget>[
        InfoCard(
          label: 'Masalah Hidup',
          value: '+658542462874',
        ),
        SizedBox(
          width: 3,
        ),
        InfoCard(
          label: 'Masalah Tai',
          value: '+865348534535',
        ),
        SizedBox(
          width: 3,
        ),
        
      ],
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({super.key, required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Config.primaryColor),
      padding: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 15,
      ),
      child: Column(
        children: <Widget>[
          Text(
            label,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            value,
            style: const TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w800),
          )
        ],
      ),
    ));
  }
}

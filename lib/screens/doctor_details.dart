import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rekammedis/components/button.dart';
import '../components/custom_appbar.dart';
import '../utils/config.dart';

class DoctorDetails extends StatefulWidget {
  const DoctorDetails({super.key});

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  // for favorite button
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar( 
          appTitle: 'Detail Dokter',
          // icon: const FaIcon(Icons.arrow_back_ios),
          // actions: [
          //   // favorite butotn
          //   IconButton(
          //       onPressed: () {
          //         setState(() {
          //           isFav = !isFav;
          //         });
          //       },
          //       icon: FaIcon(
          //           isFav ? Icons.favorite_rounded : Icons.favorite_outline,
          //           color: Colors.red))
          // ],
        ),
        body: SafeArea(
          child: Column(children: <Widget>[
            AboutDoctor(),
            DetailBody(),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(5),
            child: Button(width: double.infinity, 
            title: 'Daftar',
            onPressed: () {
              // navigate to booking page
              Navigator.of(context).pushNamed('booking_page');
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
            radius: 65.0,
            backgroundImage: AssetImage('assets/img/penyro.jpg'),
            backgroundColor: Colors.white,
          ),
          Config.spaceMedium,
          const Text(
            'Dr Richard Tan',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Config.spaceSmall,
          SizedBox(
            width: Config.widthSize * 0.75,
            child: const Text(
              'Surabaya, Indonesia',
              style: TextStyle(
                color: Colors.grey,
              fontWeight : FontWeight.bold,
                fontSize: 15,
              ),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            width: Config.widthSize * 0.75,
            child: const Text(
              'Kami Akan Selalu Memberikan Yang Terbaik',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class DetailBody extends StatelessWidget {
  const DetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: <Widget>[
          Config.spaceSmall,
          // const DoctorInfo(),
          const Text(
            'About Doctor',
            style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18
            ),
          ),
          Config.spaceSmall,
          const Text(
            'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using,  making it look like readable English.',
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

// class DoctorInfo extends StatelessWidget {
//   const DoctorInfo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: const <Widget>[
//         InfoCard(
//           label: 'Patients',
//           value: '190',
//         ),
//         SizedBox(
//           width: 15,
//         ),
//         InfoCard(
//           label: 'Experiences',
//           value: '100 Years',
//         ),
//         SizedBox(
//           width: 15,
//         ),
//         InfoCard(
//           label: 'Rating',
//           value: '9.9.9',
//         ),
//       ],
//     );
//   }
// }

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

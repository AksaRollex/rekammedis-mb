import 'package:flutter/material.dart';
import '../utils/config.dart';

class Histori extends StatefulWidget {
  const Histori({super.key});

  @override
  State<Histori> createState() => _AppointmentPageState();
}

// enum for appointment status
enum FilterStatus { selesai, mendatang }

class _AppointmentPageState extends State<Histori> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Histori',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Config.spaceMedium,
            const ScheduleCard(),
            Config.spaceSmall,
          ],
        ),
      ),
    );
  }
}

class ScheduleCard extends StatelessWidget {
  const ScheduleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text(
                'Dr. Richard Tan',
                style: TextStyle(color: Color.fromARGB(255, 187, 32, 32)),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Poli Umum',
                style: TextStyle(color: Colors.black),
              ),

             
              Text(
                'Monday, 11/29/2022',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Text(
                '15.00 - 18.00',
              ),
              Text(
                'Berhasil',
                style: TextStyle(
                  color: Colors.green
                ),
              )
            ],
          ),

          const SizedBox(
            width: 20,
          ),
          // const Icon(
          //   Icons.access_alarm,
          //   color: Config.primaryColor,
          //   size: 17,
          // ),
          const Spacer(),
        ],
      ),
    );
  }
}

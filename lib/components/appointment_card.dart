import 'package:flutter/material.dart';
import '../utils/config.dart';

class AppointmentCard extends StatefulWidget {
  const AppointmentCard({super.key});

  @override
  State<AppointmentCard> createState() => _AppointmentCardState();
}

class _AppointmentCardState extends State<AppointmentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Config.primaryColor, borderRadius: BorderRadius.circular(10)),
      child: Material(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/img/penyro.jpg'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        'Dr. Richard Tan',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Dental',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  )
                ],
              ),
              Config.spaceSmall,
              const ScheduleCard(),
              // action button
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Expanded(
              //         child: ElevatedButton(
              //       style: ElevatedButton.styleFrom(
              //         backgroundColor: Colors.red,
              //       ),
              //       child: const Text(
              //         'Cancel',
              //         style: TextStyle(color: Colors.white),
              //       ),
              //       onPressed: () {},
              //     )),
              //     const SizedBox(
              //       width: 20,
              //     ),
              //     Expanded(
              //         child: ElevatedButton(
              //       style: ElevatedButton.styleFrom(
              //         backgroundColor: Colors.blue,
              //       ),
              //       child: const Text(
              //         'Completed',
              //         style: TextStyle(color: Colors.white),
              //       ),
              //       onPressed: () {},
              //     )),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}

// schedule widget
class ScheduleCard extends StatelessWidget {
  const ScheduleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 72, 69, 69),
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const <Widget>[
          Icon(
            Icons.calendar_today,
            color: Colors.white,
          ),
          SizedBox( 
            width: 5,
          ),
          Text(
            'Monday, 11/29/2022',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 20,
          ), // Baris ini harus dipindahkan di luar Text sebelumnya
          Icon(
            Icons.access_alarm,
            color: Colors.white,
            size: 17,
          ),
          SizedBox(
            width: 5,
          ),
          Flexible(
            child: Text(
              '2:00 PM',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

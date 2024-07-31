import 'package:flutter/material.dart';
import 'package:rekammedis/utils/config.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key, required this.route});

  final String route;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 150,
      child: GestureDetector(
        child: Card(
          elevation: 5,
          color: Colors.white,
          child: Row(children: [
            SizedBox(
              width: Config.widthSize * 0.33,
              child: Image.asset(
                'assets/img/penyro.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Flexible(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    'Poli Anak',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                  Text(
                    'Untuk Anak Anak Yang Seharusnya Tuh Harus Ash',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                  ),
                  const Spacer(),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   children: const <Widget>[
                  //     Icon(
                  //       Icons.star_border,
                  //       color: Colors.yellow,
                  //       size: 16,
                  //     ),
                  //     Spacer(
                  //       flex: 1,
                  //     ),
                  //     Text('4.5'),
                  //     Spacer(
                  //       flex: 1,
                  //     ),
                  //     Text('Reviews'),
                  //     Spacer(
                  //       flex: 1,
                  //     ),
                  //     Text('20'),
                  //     Spacer(
                  //       flex: 7,
                  //     ),
                  //   ],
                  // )
                ],
              ),
            ))
          ]),
        ),
        onTap: () {
          // redirect to doctor page
          Navigator.of(context).pushNamed(route);
        }, // redirect to doctor details
      ),
    );
  }
}

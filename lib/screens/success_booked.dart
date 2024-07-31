import 'package:flutter/material.dart';
import 'package:rekammedis/components/button.dart';
// import 'package:lottie/lottie.dart';
import 'package:rekammedis/components/buttonPrint.dart';

class AppointmentBooked extends StatelessWidget {
  const AppointmentBooked({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const Spacer(), // Pushes the text to the center
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: const Text(
                'Pendaftaran Berhasil',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Text('Invoice'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: ButtonPrint(
                  width: double.infinity,
                  title: 'Download PDF',
                  onPressed: () => Navigator.of(context).pushNamed(''),
                  disable: false),
            ),
            const Spacer(), // Pushes the text to the center

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Button(
                width: double.infinity,
                title: 'Kembali Ke Halaman Utama',
                onPressed: () => Navigator.of(context).pushNamed('main'),
                disable: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

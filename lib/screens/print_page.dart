import 'package:flutter/material.dart';
import 'package:rekammedis/components/button.dart';
import '../utils/config.dart';

class PrintPage extends StatefulWidget {
  const PrintPage({super.key});

  @override
  State<PrintPage> createState() => _PrintPageState();
}

class _PrintPageState extends State<PrintPage> {
  final _nikController = TextEditingController();
  bool _showHistoriCard = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Reprint Hasil Pendaftaran',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Config.spaceSmall,
            TextFormField(
              controller: _nikController,
              keyboardType: TextInputType.number,
              cursorColor: Config.primaryColor,
              decoration: const InputDecoration(
                hintText: '16 Digit',
                labelText: 'NIK',
                alignLabelWithHint: true,
                prefixIcon: Icon(Icons.badge_outlined),
                prefixIconColor: Config.primaryColor,
              ),
            ),
            Config.spaceSmall,
            Button(
              width: double.infinity,
              title: 'Cari',
              onPressed: () {
                setState(() {
                  _showHistoriCard = true;
                });
              },
              disable: false,
            ),
            Config.spaceSmall,
            if (_showHistoriCard) const HistoriCard(),
            Config.spaceSmall,
          ],
        ),
      ),
    );
  }
}

class HistoriCard extends StatelessWidget {
  const HistoriCard({super.key});

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
            children: <Widget>[
              const Text(
                'Dr. Richard Tan',
                style: TextStyle(color: Color.fromARGB(255, 187, 32, 32)),
              ),
              const SizedBox(
                height: 2,
              ),
              const Text(
                'Poli Umum',
                style: TextStyle(color: Colors.black),
              ),
              const Text(
                'Monday, 11/29/2022',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Config.spaceSmall,
              ButtonPrint(
                title: '',
                onPressed: () {},
                width:  205,
                disable: false,
              )
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class ButtonPrint extends StatelessWidget {
  const ButtonPrint(
      {super.key,
      required this.width,
      required this.title,
      required this.onPressed,
      required this.disable});

  final double width;
  final String title;
  final bool disable; // this is used to disabled button
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 111, 114, 5),
            foregroundColor: Colors.white,
          ),
          onPressed: disable ? null : onPressed,
          child: const Text(
            'Cetak Sekarang',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:rekammedis/components/doctorList_card.dart';
import '../utils/config.dart';

class DoctorList extends StatefulWidget {
  const DoctorList({super.key});

  @override
  State<DoctorList> createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                
                const Text(
                  'Daftar Dokter Dari Poli ...',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Config.spaceSmall,
                
                Column(
                  children : List.generate(1, (index) {
                    return const DoctorlistCard(
                      route: 'doc_details',
                    );
                  })
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

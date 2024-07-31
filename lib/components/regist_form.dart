import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rekammedis/components/button.dart';
import '../utils/config.dart';

class RegistForm extends StatefulWidget {
  const RegistForm({super.key});

  @override
  State<RegistForm> createState() => _RegistFormState();
}

class _RegistFormState extends State<RegistForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaController = TextEditingController();
  final _nikController = TextEditingController();
  final _alamatController = TextEditingController();
  final _telpController = TextEditingController();
  final _tgllahirController = TextEditingController();
  bool obsecurePass = true;

  @override
  void dispose() {
    _namaController.dispose();
    _nikController.dispose();
    _alamatController.dispose();
    _telpController.dispose();
    _tgllahirController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), // Set the initial date
      firstDate: DateTime(2000), // Set the earliest allowable date
      lastDate: DateTime(2101), // Set the latest allowable date
    );
    if (picked != null) {
      setState(() {
        _tgllahirController.text = DateFormat('MM/dd/yyyy').format(picked); // Format the date
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            controller: _namaController,
            keyboardType: TextInputType.text,
            cursorColor: Config.primaryColor,
            decoration: const InputDecoration(
              hintText: 'Nama Lengkap Kamu',
              labelText: 'Nama',
              alignLabelWithHint: true,
              prefixIcon: Icon(Icons.person_outline),
              prefixIconColor: Config.primaryColor,
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
          TextFormField(
            controller: _telpController,
            keyboardType: TextInputType.number,
            cursorColor: Config.primaryColor,
            decoration: const InputDecoration(
              hintText: 'No. Telp Yang Bisa Di Hubungi',
              labelText: 'Nomor Telepon',
              alignLabelWithHint: true,
              prefixIcon: Icon(Icons.phone_outlined),
              prefixIconColor: Config.primaryColor,
            ),
          ),
          Config.spaceSmall,
          TextFormField(
            controller: _alamatController,
            keyboardType: TextInputType.text,
            cursorColor: Config.primaryColor,
            decoration: const InputDecoration(
              hintText: 'Alamat Lengkap',
              labelText: 'Alamat',
              alignLabelWithHint: true,
              prefixIcon: Icon(Icons.home_outlined),
              prefixIconColor: Config.primaryColor,
            ),
          ),
          Config.spaceSmall,
          TextFormField(
            controller: _tgllahirController,
            readOnly: true,
            cursorColor: Config.primaryColor,
            decoration: InputDecoration(
              hintText: 'Select Date',
              labelText: 'Tanggal Lahir',
              alignLabelWithHint: true,
              prefixIcon: Icon(Icons.calendar_today, color: Config.primaryColor),
              suffixIcon: IconButton(
                icon: Icon(Icons.date_range, color: Config.primaryColor),
                onPressed: () {
                  _selectDate(context);
                },
              ),
            ),
            onTap: () {
              _selectDate(context);
            },
          ),
          Config.spaceSmall,
          Button(
            width: double.infinity,
            title: 'Daftar Sekarang',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Navigate to the login form after successful registration
                Navigator.of(context).pushNamed('auth_page');
              }
            },
            disable: false,
          ),
        ],
      ),
    );
  }
}

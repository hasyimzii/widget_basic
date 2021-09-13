import 'package:flutter/material.dart';
import '../widgets/style.dart';
import '../widgets/scaffold_theme.dart';
import '../widgets/text_field_input.dart';
import '../widgets/radio_input.dart';
import '../widgets/checkbox_input.dart';
import '../widgets/datetime_picker.dart';
import '../widgets/submit_button.dart';

class BiodataForm extends StatefulWidget {
  const BiodataForm({Key? key}) : super(key: key);

  @override
  _BiodataFormState createState() => _BiodataFormState();
}

class _BiodataFormState extends State<BiodataForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _namaLengkap = '';
  String _noTelepon = '';
  String _jenisKelamin = '';
  String _dateText = 'yyyy-mm-dd';
  DateTime _initialDate = DateTime.now();
  Map check = {
    'Java': false,
    'Python': false,
    'Dart': false,
    'Javascript': false,
  };

  List _bahasaPemrograman = [''];
  getCheckboxItems() {
    check.forEach((key, value) {
      if (value == true) {
        _bahasaPemrograman.add(key);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldTheme(
      title: 'Biodata Form',
      floatingActionButton: Text(''),
      body: Column(
        children: [
          Icon(
            Icons.assignment,
            color: whiteColor,
            size: 50,
          ),
          Text(
            'Isi Biodatamu',
            style: titleTextStyle,
          ),
          Text(
            'Isi form ini dengan benar.',
            style: subtitleTextStyle,
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFieldInput(
                    keyboardType: TextInputType.text,
                    hintText: 'Nama Lengkap',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Nama Lengkap harus diisi!';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        _namaLengkap = value;
                      });
                    },
                  ),
                  SizedBox(height: 16),
                  TextFieldInput(
                    keyboardType: TextInputType.phone,
                    hintText: 'No. Telepon',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'No. Telepon harus diisi!';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        _noTelepon = value;
                      });
                    },
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Jenis Kelamin',
                    style: titleListTextStyle,
                  ),
                  RadioInput(
                    title: 'Laki-Laki',
                    group: _jenisKelamin,
                    value: 'Laki-Laki',
                    onChanged: (value) {
                      setState(() {
                        _jenisKelamin = value;
                      });
                    },
                  ),
                  RadioInput(
                    title: 'Perempuan',
                    group: _jenisKelamin,
                    value: 'Perempuan',
                    onChanged: (value) {
                      setState(() {
                        _jenisKelamin = value;
                      });
                    },
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Tanggal Lahir',
                    style: titleListTextStyle,
                  ),
                  SizedBox(height: 10),
                  DatetimePicker(
                    initialValue: _dateText,
                    onTap: () {
                      showDatePicker(
                        context: context,
                        initialDate: _initialDate,
                        firstDate: DateTime(1980),
                        lastDate: DateTime.now(),
                      ).then((value) {
                        setState(() {
                          _initialDate = value!;
                          _dateText = '${_initialDate.toLocal()}'.split(' ')[0];
                        });
                      });
                    },
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Bahasa Favorit',
                    style: titleListTextStyle,
                  ),
                  CheckboxInput(
                    title: 'Java',
                    value: check['Java'],
                    onChanged: (value) {
                      setState(() {
                        check['Java'] = value;
                      });
                    },
                  ),
                  CheckboxInput(
                    title: 'Python',
                    value: check['Python'],
                    onChanged: (value) {
                      setState(() {
                        check['Python'] = value;
                      });
                    },
                  ),
                  CheckboxInput(
                    title: 'Dart',
                    value: check['Dart'],
                    onChanged: (value) {
                      setState(() {
                        check['Dart'] = value;
                      });
                    },
                  ),
                  CheckboxInput(
                    title: 'Javascript',
                    value: check['Javascript'],
                    onChanged: (value) {
                      setState(() {
                        check['Javascript'] = value;
                      });
                    },
                  ),
                  SizedBox(height: 16),
                  SubmitButton(
                    label: 'Submit',
                    icon: Icons.save,
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _bahasaPemrograman.clear();
                        getCheckboxItems();
                        showModalBottomSheet(
                          context: context,
                          backgroundColor: greyColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(40),
                            ),
                          ),
                          builder: (context) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Wrap(
                                direction: Axis.vertical,
                                spacing: 10,
                                children: [
                                  SizedBox(height: 10),
                                  Text(
                                    'Hasil Form',
                                    style: titleTextStyle,
                                  ),
                                  Text(
                                    'Nama Lengkap : $_namaLengkap',
                                    style: inputFieldTextStyle,
                                  ),
                                  Text(
                                    'No. Telepon : $_noTelepon',
                                    style: inputFieldTextStyle,
                                  ),
                                  Text(
                                    'Jenis Kelamin : $_jenisKelamin',
                                    style: inputFieldTextStyle,
                                  ),
                                  Text(
                                    'Tanggal Lahir : ' +
                                        '${_initialDate.toLocal()}'
                                            .split(' ')[0],
                                    style: inputFieldTextStyle,
                                  ),
                                  Text(
                                    'Bahasa Favorit : $_bahasaPemrograman',
                                    style: inputFieldTextStyle,
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            );
                          },
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

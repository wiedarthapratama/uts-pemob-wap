import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uts_pemob_wap/login_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage(
      {Key? key, required this.nim, required this.nama, required this.password})
      : super(key: key);

  final String nim;
  final String nama;
  final String password;

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdff9fb),
      appBar: AppBar(
          backgroundColor: const Color(0xffc7ecee),
          title: Text(
            'Profile',
            key: widget.key,
          )),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                  "https://siakad.esaunggul.ac.id/siakad/siakad/index.php?page=download&type=fotomhs&id=Y3VVR0t1JTJGTyUyQkNCQ29BeGZJZCUyQlpwR3kwJTJGSTlSZ1phNnAxS1hTRHQ2eiUyQkxtRnRDRFNiNWRQSFA4anF3Q0dPRGlsc01ZTldLbjhTeDAlMkJNck9mRWlUNlElM0QlM0Q="),
              Text(
                "Nim:",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                key: widget.key,
              ),
              Text(widget.nim),
              widget.nama != ''
                  ? Text(
                      "Nama:",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                      key: widget.key,
                    )
                  : Container(),
              widget.nama != '' ? Text(widget.nama) : Container(),
              Text(
                "Password:",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                key: widget.key,
              ),
              Text(widget.password),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  primary: Colors.blue,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 32.0, vertical: 8.0),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                onPressed: () {
                  Get.offAll(() => LoginPage(
                        key: widget.key,
                      ));
                },
                child: Text(
                  'Keluar',
                  key: widget.key,
                ),
              ),
              Expanded(
                child: Container(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Copyright: ',
                    key: widget.key,
                  ),
                  Text(
                    'Wied Artha Pratama - 20180801316',
                    style: const TextStyle(color: Colors.blue),
                    key: widget.key,
                  )
                ],
              )
            ]),
      ),
    );
  }
}

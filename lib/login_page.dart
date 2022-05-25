import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uts_pemob_wap/profile_page.dart';
import 'package:uts_pemob_wap/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nimCtrl = TextEditingController();
  TextEditingController pswdCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdff9fb),
      appBar: AppBar(
          backgroundColor: const Color(0xffc7ecee),
          title: Text(
            'Login',
            key: widget.key,
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                    "https://1.bp.blogspot.com/-VJgRSAhsI1c/Xh3SfUORqtI/AAAAAAAABcY/keGpGeXFaa4AysS9PqMVmQHXhussWxqfACEwYBhgL/s1600/Logo%2BUniversitas%2BEsa%2BUnggul.png"),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text(
                        'Nim',
                        key: widget.key,
                      ),
                    ),
                    controller: nimCtrl,
                  ),
                ),
                SizedBox(
                  height: 10,
                  key: widget.key,
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text(
                        'Password',
                        key: widget.key,
                      ),
                    ),
                    controller: pswdCtrl,
                    obscureText: true,
                  ),
                ),
                SizedBox(
                  height: 10,
                  key: widget.key,
                ),
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
                    if (nimCtrl.text.isEmpty) {
                      Get.snackbar("Nim", "Inputan nim tidak boleh kosong");
                      return;
                    }
                    if (pswdCtrl.text.isEmpty) {
                      Get.snackbar(
                          "Password", "Inputan password tidak boleh kosong");
                      return;
                    }
                    Get.offAll(() => ProfilePage(
                          key: widget.key,
                          nim: nimCtrl.text,
                          nama: '',
                          password: pswdCtrl.text,
                        ));
                  },
                  child: Text(
                    'Login',
                    key: widget.key,
                  ),
                ),
                SizedBox(
                  height: 5,
                  key: widget.key,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Belum punya akun?',
                      key: widget.key,
                    ),
                    SizedBox(
                      width: 5,
                      key: widget.key,
                    ),
                    InkWell(
                      onTap: () {
                        Get.offAll(() => RegisterPage(
                              key: widget.key,
                            ));
                      },
                      child: Text(
                        'Register Disini!',
                        style: const TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                        key: widget.key,
                      ),
                    ),
                  ],
                )
              ]),
        ),
      ),
    );
  }
}

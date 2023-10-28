import 'package:flutter/material.dart';
import 'package:navigator/dashboard.dart';


void main() {
  runApp(profil());
}

class profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Saya'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('image/kuu.jpg'), // Ganti dengan path gambar profil Anda
            ),
            SizedBox(height: 20),
            Text(
              'Naufal Agung Rizkina',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'naufalagungr235@gmail.com',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Alamat: Patemon',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Nomor Telepon: 08976464346754',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 35,),
                  Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 20,),
                    child: ElevatedButton(
                      onPressed: (){
                       Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => dashboard(),
                    )
                  );
                      }, 
                      child: Text("Kembali"),
                      ),
                  ),
          ],
        ),
      ),
    );
  }
}

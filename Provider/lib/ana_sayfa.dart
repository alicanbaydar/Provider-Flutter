import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_setstate/my_container.dart';
import 'package:provider_setstate/state_data.dart';

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Deneme'),
        centerTitle: true,
        elevation: 3,
      ),
      body: EkranSayfasi(),
    );
  }
}

class EkranSayfasi extends StatelessWidget {
  const EkranSayfasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        MyContainer(
          renk: Colors.amber,
          mesaj: "Memleket: ${Provider.of<StateData>(context).sehir}",
        ),
        MyContainer(
          renk: Colors.blue,
          mesaj: "Yaş: ${Provider.of<StateData>(context).yas}",
        ),
        Expanded(
            child: TextField(
          decoration: InputDecoration(
            labelText: " Lütfen yeni şehir giriniz",
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepPurple),
            ),
          ),
          style: TextStyle(fontSize: 20, color: Colors.deepPurple),
          cursorColor: Colors.deepPurple,
          onChanged: (input) {
            Provider.of<StateData>(context, listen: false).newCity(input);
          },
        ))
      ],
    );
  }
}

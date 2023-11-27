

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}



class _HomeState extends State<Home> {

  TextEditingController _controllerDollar = TextEditingController();
  TextEditingController _controllerLira = TextEditingController();
  TextEditingController _controllerEuro = TextEditingController();
  TextEditingController _controllerGBP = TextEditingController();
  TextEditingController _controllerDinar = TextEditingController();

  double _Dollar = 0;
  double _Lira = 0;
  double _Euro = 0;
  double _GBP = 0;
  double _Dinar = 0;

  void resetZero(){

    _controllerDollar.text = "";
    _controllerLira.text = "";
    _controllerEuro.text = "";
    _controllerGBP.text = "";
    _controllerDinar.text = "";
  }


  void UpdateUnits(String unit, double price) {
    updateLira(unit, price);
    updateGBP(unit, price);
    updateEuro(unit, price);
    updateDollar(unit, price);
    updateDinar(unit, price);

    _controllerDollar.text= "$_Dollar";
    _controllerLira.text = "$_Lira";
    _controllerEuro.text = "$_Euro";
    _controllerGBP.text = "$_GBP";
    _controllerDinar.text = "$_Dinar";


  }

  void updateDollar(String unit, double dol) {
    if (unit == "Dollar") {
      _Dollar = dol;
    }

    if (unit == "Lira") {
      _Dollar = dol / 100000;
    }
    if (unit == "Euro") {
      _Dollar = dol * 1.09;
    }
    if (unit == "GBP") {
      _Dollar = dol * 1.26;
    }
    if (unit == "Dinar") {
      _Dollar = dol * 3.23;
    }
  }

  void updateEuro(String unit, double eur) {
    if (unit == "Dollar") {
      _Euro = eur * 0.91;
    }

    if (unit == "Lira") {
      _Euro = eur / 91000;
    }
    if (unit == "Euro") {
      _Euro = eur;
    }
    if (unit == "GBP") {
      _Euro = eur * 1.15;
    }
    if (unit == "Dinar") {
      _Euro = eur * 2.96;
    }
  }

  void updateLira(String unit, double lir) {
    if (unit == "Dollar") {
      _Lira = lir * 100000;
    }

    if (unit == "Lira") {
      _Lira = lir;
    }
    if (unit == "Euro") {
      _Lira = lir * 91000;
    }
    if (unit == "GBP") {
      _Lira = lir * 126000;
    }
    if (unit == "Dinar") {
      _Lira = lir * 323000;
    }
  }

  void updateGBP(String unit, double gb) {
    if (unit == "Dollar") {
      _GBP = gb * 0.79;
    }

    if (unit == "Lira") {
      _GBP = gb / 79000;
    }
    if (unit == "Euro") {
      _GBP = gb * 0.86;
    }
    if (unit == "GBP") {
      _GBP = gb;
    }
    if (unit == "Dinar") {
      _GBP = gb * 2.56;
    }
  }


  void updateDinar(String unit, double din) {
    if (unit == "Dollar") {
      _Dinar = din * 0.309;
    }

    if (unit == "Lira") {
      _Dinar = din / 309000;
    }
    if (unit == "Euro") {
      _Dinar = din * 0.337;
    }
    if (unit == "GBP") {
      _Dinar = din * 0.389;
    }
    if (unit == "Dinar") {
      _Dinar = din;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text( 'Currency Converter' , style: const TextStyle(fontSize: 30.0, color: Colors.white, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.red,

          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 20.0),
              Text('Price In Dollar:', style: const TextStyle(fontSize: 18.0)),
              const SizedBox(height: 10.0,),
              SizedBox(width: 300.0, height: 40.0,
                child : TextField(
                  controller: _controllerDollar,
                  style: const TextStyle(fontSize: 18.0),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Enter Price in Dollar'
                  ),

                  onChanged: (price) {
                    setState(() {
                      UpdateUnits("Dollar", double.parse(price));
                    });


                  },

                ),

              ),


              const SizedBox(height: 10.0),
              Text('Price In Lira:', style: const TextStyle(fontSize: 18.0)),
              const SizedBox(height: 10.0,),
              SizedBox(width: 300.0, height: 40.0,
                child: TextField(
                    controller: _controllerLira,
                    style: const TextStyle(fontSize: 18.0),
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Enter price in Lira'
                    ),

                    onChanged: (price) {
                      setState(() {
                        UpdateUnits("Lira", double.parse(price));
                      });
                    }

                ),
              ),
              const SizedBox(height: 10.0),
              Text('Price In Euro: ', style: const TextStyle(fontSize: 18.0)),
              const SizedBox(height: 10.0,),
              SizedBox(width: 300.0, height: 40.0,
                child: TextField(
                    controller: _controllerEuro,
                    style: const TextStyle(fontSize: 18.0),
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Enter Price in Euro'
                    ),

                    onChanged: (price) {
                      setState(() {
                        UpdateUnits("Euro", double.parse(price));
                      });
                    }



                ),
              ),
              const SizedBox(height: 10.0),
              Text('Price In GBP:', style: const TextStyle(fontSize: 18.0)),
              const SizedBox(height: 10.0,),
              SizedBox(width: 300.0, height: 40.0,
                child: TextField(
                    controller: _controllerGBP,
                    style: const TextStyle(fontSize: 18.0),
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Enter Price in GBP'
                    ),

                    onChanged: (price) {
                      setState(() {
                        UpdateUnits("GBP", double.parse(price));
                      });
                    }

                ),
              ),
              const SizedBox(height: 10.0),
              Text('Price In Dinar: ', style: const TextStyle(fontSize: 18.0)),
              const SizedBox(height: 10.0,),
              SizedBox(width: 300.0, height: 40.0,
                child: TextField(
                  controller: _controllerDinar,
                  style: const TextStyle(fontSize: 18.0),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Enter Price in Dinar'
                  ),

                  onChanged: (price) {

                    setState(()
                    {
                      UpdateUnits("Dinar", double.parse(price));
                    });

                  },



                ),
              ),
              const SizedBox(height: 10.0,),
              ElevatedButton(onPressed: () { resetZero(); }, child: Text('Clear', style: TextStyle(fontSize: 24.0,  color: Colors.red),)),
              const SizedBox(height: 10.0,),
              Image.asset('images/currency.jpg', width: 250.0, height: 150.0),


            ],

          ),

        )

    );

  }
}

import 'package:flutter/material.dart';

class AvatarPage extends StatefulWidget {
  @override
  State createState() => AvatarPageState();
}

class Avatar {
  String id;
  String nombre;
  String imagen;
  String descripcion;

  Avatar(this.id, this.nombre, this.imagen, this.descripcion);
}

class AvatarPageState extends State<AvatarPage> {
  final globalkey = new GlobalKey<ScaffoldState>();
  int _cIndex = 0;

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  final List<Avatar> lista = [];

  @override
  void initState() {
    lista.add(Avatar("1", "DENNIS", "assets/dennis.jpg",
        "I´m a family man with a\nholistic approach to\nfinance.Taking thoughtful\nand calculated risk\nis prudent.Oh, and\nthere is a BIG\ndifference between\ngood debt and\nbad debt!"));
    lista.add(Avatar("2", "JULIE", "assets/julie.jpg",
        "I approach finances \nwith balance.Lifestyle,\ngoals and career choices\nall deserve consideration\nin the pursuit offinancial\nsuccess.Balance in\nlife,as in yoga,\nis key."));
    lista.add(Avatar("3", "STEPHEN", "assets/stephen.jpg",
        "Slow and steady WINS\nyout race. I am all\nabout stability in planning.\nDelayed gratification\nand focus on the\nend goal will reap\nmany rewards,\ntrust me."));
    lista.add(Avatar("4", "ALEX", "assets/alex.JPG",
        "There is no one size\nfits all. Life is dynamic\nand constantly changes.\nI am here to help you\nreflect, learn and\nadapt with your financial\ngoals in mind."));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/fondoprincipal.jpg'),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
              child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              const Column(
                //padding: EdgeInsets.only(left: 30, top: 60),
                children: [
                  Text(
                    'Let´s select your therapist.\nYour therapist will travel\nthis journey with you. Each have skills\nthat match your needs.\n\n',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70, fontSize: 25),
                  ),
                ],
              ),
              Container(
                key: globalkey,
                child: Row(
                  children: <Widget>[
                    _buildPrevButton(),
                    _chargeImageTextDescription(),
                    _buildNextButton(),
                  ],
                ),
              ),
            ],
          )),
        ));
  }

  Column _chargeImageTextDescription() {
    return Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 5.0,
                      ),
                      Padding( padding: const EdgeInsets.only(left: 50.0, right:50.0,top: 5.0, ),
                        child: Column(children: [
                          Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 8, color: Colors.white),
                                boxShadow: [
                                  BoxShadow(
                                      spreadRadius: 2,
                                      blurRadius: 10,
                                      color: Colors.black.withOpacity(0.1))
                                ],
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(lista[_cIndex].imagen),
                                ),
                              )),
                        ]),
                      ),
                      Text(
                        lista[_cIndex].nombre,textAlign: TextAlign.center,
                        style:
                            const TextStyle(color: Colors.white70, fontSize: 25.0),
                      ),
                      const SizedBox(height: 60),
                      Text(
                        lista[_cIndex].descripcion,textAlign: TextAlign.center,
                        style:
                            const TextStyle(color: Colors.white70, fontSize: 25.0),
                      ),
                    ],
                  );
  }

  Widget _buildNextButton() {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: IconButton(
        onPressed: () {
          //print("Next");
          setState(() {
            if (_cIndex < lista.length - 1) _cIndex++;
          });
        },
        icon: const Icon(
          Icons.navigate_next,
          size: 50.0,
        ),
        color: Colors.grey,
      ),
    );
  }

  Widget _buildPrevButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: IconButton(
        onPressed: () {
          setState(() {
            if (_cIndex > 0) _cIndex--;
          });
        },
        icon: const Icon(
          Icons.navigate_before,
          color: Colors.grey,
          size: 50.0,
        ),
      ),
    );
  }
}

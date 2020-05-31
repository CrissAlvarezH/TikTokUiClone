import 'package:flutter/material.dart';


void main() {
  runApp(PantallaPrincipal());
}


class PantallaPrincipal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: CloneTiktok()
        ),
        bottomNavigationBar: _navBarInferior(),
      ),
    );
  }

  Widget _navBarInferior() {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      type: BottomNavigationBarType.fixed,

      items: <BottomNavigationBarItem> [
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 3.0),
            child: Image.asset('icons/inicio.png'),
          ),
          title: Text(
            'Inicio',
            style: TextStyle(fontSize: 10.0),
          )
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 3.0),
            child: Image.asset('icons/tendencias.png'),
          ),
          title: Text(
            'Tendencias',
            style: TextStyle(fontSize: 10.0),
          )
        ),
        BottomNavigationBarItem(
          icon: Image.asset('icons/plus.png'),
          title: Container()
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 3.0),
            child: Image.asset('icons/bandeja.png'),
          ),
          title: Text(
            'Bandeja',
            style: TextStyle(fontSize: 10.0),
          )
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(bottom: 3.0),
            child: Image.asset('icons/yo.png'),
          ),
          title: Text(
            'Yo',
            style: TextStyle(fontSize: 10.0),
          )
        ),
      ],
    );
  }
}


class CloneTiktok extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Imagen o video
        Image.asset(
          'images/urona_rolera.jpg', 
          fit: BoxFit.cover,
          height: double.infinity,
        ),

        // Degradado oscurecido
        _degradadoOscurecido(),

        // Controles
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: <Widget>[
            _navBarSuperior(),
      
            Column(
              children: <Widget>[
                _botonesInteraccion(),
                _datosPublicacion()
              ],
            )
          ],
        )
      ],
    );
  }

  Widget _degradadoOscurecido() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          
          colors: <Color> [
            Colors.black87,
            Colors.black26,
            Colors.black26,
            Colors.black26,
            Colors.black54,
            Colors.black87
          ]
        )
      ),
    );
  }

  Widget _navBarSuperior() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                'Siguiendo',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white
                ),
              ),
              SizedBox(height: 8.0,),
              Container(
                color: Colors.white,
                width: 40.0,
                height: 2.0,
              )
            ],
          ),

          SizedBox(width: 30.0,),

          Column(
            children: <Widget>[
              Text(
                'Para ti',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _botonesInteraccion() {
    return Align(
      alignment: Alignment.centerRight,
    
      child: Padding(
        padding: EdgeInsets.only(right: 8.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            // Imagen perfil
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                border: Border.all(
                  color: Colors.white
                )
              ),

              child: ClipOval(
                child: Image.network('https://pbs.twimg.com/media/ECZzynSWwAA9M5m.jpg',
                  width: 50.0, 
                  height: 50.0, 
                  fit: BoxFit.cover,
                )
              ),
            ),
          
            SizedBox(height: 25.0,),

            Image.asset('icons/corazon.png'),
            SizedBox(height: 5.0,),
            Text(
              '169.2k',
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.white
              ),
            ),

            SizedBox(height: 20.0,),

            Image.asset('icons/comentarios.png'),
            SizedBox(height: 5.0,),
            Text(
              '5109',
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.white
              ),
            ),

            SizedBox(height: 20.0,),

            Image.asset('icons/compartir.png'),
            SizedBox(height: 5.0,),
            Text(
              '119',
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.white
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget _datosPublicacion() {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, bottom: 15.0, right: 8.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                '@huronarolera',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),

              SizedBox(width: 10.0,),

              Text(
                '03-05',
                style: TextStyle(
                  color: Colors.white54,
                )
              ),
            ],
          ),

          SizedBox(height: 15.0,),

          Row(
            children: <Widget>[
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: <Widget>[
                    Container(
                      child: Text(
                        'MENCIONADME EN AUDIOS QUE QUERÁIS QUE HAGA, PORFA!!',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        children: <Widget>[
                          Image.asset('icons/musica.png', width: 20.0),

                          SizedBox(width: 10.0,),

                          Text(
                            'rolera - Dana',
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),

                          SizedBox(width: 20.0,),

                          Text(
                            'sonido original',
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
 
              Container(
                margin: EdgeInsets.only(left: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  border: Border.all(
                    width: 10.0,
                    color: Colors.white24
                  )
                ),

                child: ClipOval(
                  child: Image.network('https://pbs.twimg.com/media/ECZzynSWwAA9M5m.jpg',
                    width: 30.0, 
                    height: 30.0, 
                    fit: BoxFit.cover,
                  )
                ),
              ),
            ],
          )
          
        ],
      ),
    );
  }
}
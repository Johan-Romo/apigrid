import '../controller/coches_controller.dart';
import 'package:flutter/material.dart';
import 'detalles_coches.dart';
import 'package:google_fonts/google_fonts.dart';

class CochesView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CochesViewState();
}

class CochesViewState extends State<CochesView> {
  final CocheController _controller = CocheController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejemplo Grid", style: GoogleFonts.bebasNeue(fontSize: 28,color: Colors.white),),
        backgroundColor: Color(0xFF352630),

      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: _controller.coches.length,
        itemBuilder: (context, index) {
          final item = _controller.coches[index];

          return GestureDetector(
            onTap: () {
              // Navegar a la otra pantalla
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetallesCoche(coche: item),
                ),
              );
            },
            child: Card(
              color: Color(0xFF554865),
              elevation: 3.0,
              child: Container(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    item.image,
                    Divider(color: Color(0xFFcd5b51), thickness: 5,),
                    Text(
                      '${item.modelo}',
                      style: GoogleFonts.bebasNeue(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      '${item.marca}',
                      style: GoogleFonts.oswald(
                        color: Color(0xFFf3a36b),
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

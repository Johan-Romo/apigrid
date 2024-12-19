import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/coches_modelo.dart';

class DetallesCoche extends StatelessWidget {
  final Coche coche;

  DetallesCoche({required this.coche});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF554865),
      appBar: AppBar(
        title: Text('${coche.modelo}', style: GoogleFonts.bebasNeue(fontSize: 32,color: Colors.white)),
        backgroundColor: Color(0xFF352630),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 400, // Ancho deseado
                height: 350, // Alto deseado
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: coche.image, // Usar directamente el widget de la imagen
                ),
              ),

              Text(
                "Marca: ${coche.marca}",
                style: GoogleFonts.bebasNeue(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(10), // Espaciado dentro del contenedor
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFFf3a36b), // Color del borde
                    width: 3, // Ancho del borde
                  ),
                  borderRadius: BorderRadius.circular(8), 
                ),
                child: Text(
                  "Modelo: ${coche.modelo}",
                  style: GoogleFonts.oswald(
                    color: Color(0xFFf3a36b),
                    fontSize: 28,
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

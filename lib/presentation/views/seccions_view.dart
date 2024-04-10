import 'package:flutter/material.dart';

class SeccionsView extends StatefulWidget {
  const SeccionsView({super.key});
  
  @override
  State<SeccionsView> createState() => _SeccionsViewState();
}

class _SeccionsViewState extends State<SeccionsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Expanded(
                    child: _buildSection("Sección Números", AssetImage('assets/NUmeros-seccion.gif')),
                  ),
                  SizedBox(width: 20),

                  Expanded(
                    child: _buildSection("Sección Letras y palabras", AssetImage('assets/Letras-Seccion.gif')),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: _buildSection("Sección Bocetos", AssetImage('assets/Anime.gif')),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: _buildSection("Sección Dibujo", AssetImage('assets/LogoPos2.webp')),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(String title, AssetImage image) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        children: [
          Text(title),
          SizedBox(height: 10),
          Image(image: image),
        ],
      ),
    );
  }
}

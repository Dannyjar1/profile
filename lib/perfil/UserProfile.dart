
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil de Usuario'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/5506894/pexels-photo-5506894.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                _buildInfoContainer('Danny Jaramillo', Colors.blue[50]!),
                _buildInfoContainer('Correo Electrónico: dannyjaramillofran@gmail.com', Colors.blue[50]!),
                _buildInfoContainer('Número de Teléfono: +593986920090', Colors.blue[50]!),
                _buildInfoContainer('Sexo: Masculino', Colors.blue[50]!),
                _buildInfoContainer('Fecha de Nacimiento: 20/10/2000', Colors.blue[50]!),
                _buildInfoContainer('País: Ecuador', Colors.blue[50]!),
                _buildInfoContainer('Ciudad: Loja', Colors.blue[50]!),
                _buildInfoContainer(
                  'Descripción del Usuario: Soy estudiante de la Universidad Internacional Del Ecuador.',
                  Colors.blue[50]!,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildInfoContainer(String text, Color color) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.blue[700]!),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, color: Colors.black),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AgendarButton extends StatelessWidget {
  const AgendarButton({Key? key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 315,
      height: 62,
      child: ElevatedButton(
        onPressed: () {
          // Adicione aqui a função a ser executada quando o botão for pressionado
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(
                0, 255, 40, 1.0), // Cor de fundo do botão em RGB
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20), // Borda arredondada
            ), // Cor do efeito de splash
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            // Remove o efeito de splash de fora do botão
            animationDuration: Duration(seconds: 3)),
        child: const Text(
          'Agendar',
          style: TextStyle(
            fontFamily: 'Sora',
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Color(0xFF102D0B), // Cor do texto
          ),
        ),
      ),
    );
  }
}

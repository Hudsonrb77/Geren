import 'package:flutter/material.dart';

class CampoDeEntradaRotulado extends StatelessWidget {
  final String tituloCampo;
  final String textoCampo;

  const CampoDeEntradaRotulado({
    Key? key,
    required this.tituloCampo,
    required this.textoCampo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          tituloCampo,
          style: const TextStyle(
            fontFamily: 'Sora',
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 2),
        TextFormField(
          style: const TextStyle(
            fontFamily: 'Sora',
            fontWeight: FontWeight.w100,
            fontSize: 18,
            color: Colors.white,
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFF117D1B),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
            hintText: textoCampo,
            hintStyle: const TextStyle(
              fontFamily: 'Sora',
              fontWeight: FontWeight.w100,
              fontSize: 18,
              color: Colors.white,
            ),
            contentPadding: const EdgeInsets.symmetric(
                vertical: 10, horizontal: 9), // Adiciona espaçamento
          ),
        ),
        const SizedBox(height: 14),
      ],
    );
  }
}

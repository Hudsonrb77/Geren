import 'package:flutter/material.dart';
import 'package:pdsi1/widgets/botao_agendar.dart';
import '../widgets/campo_de_entrada.dart';

class SingupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      centerTitle: true,
      title: const Text(
        'Cadastrando turma',
        style: TextStyle(
            fontFamily: 'Sora',
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white),
      ),
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_rounded, // Use the back arrow icon
          color: Colors.white, // Set icon color to white
        ),
        onPressed: () => Navigator.pop(context), // Add onPressed callback
        padding: const EdgeInsets.only(left: 20.0), // Adjust padding as needed
      ),
      backgroundColor: Colors.transparent,
    );

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 16, 45, 11),
      appBar: appBar,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: LayoutBuilder(
            // Use LayoutBuilder for more control

            builder: (context, constraints) {
              // Calculate content width
              return SizedBox(
                width: constraints.maxWidth, // Use max width
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    CampoDeEntradaRotulado(
                      tituloCampo: 'Responsável da Turma',
                      textoCampo: 'Entre com o nome do responsável',
                    ),
                    CampoDeEntradaRotulado(
                      tituloCampo: 'Descrição',
                      textoCampo: 'Entre com a descrição. ',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: CampoDeEntradaRotulado(
                            tituloCampo: 'Telefone',
                            textoCampo: '(XX) X XXXX-XXXX)',
                          ),
                        ),
                        SizedBox(width: 14), // Add spacing
                        Expanded(
                          child: CampoDeEntradaRotulado(
                            tituloCampo: 'Data',
                            textoCampo: 'DD/MM/YYYY',
                          ),
                        ),
                      ],
                    ), // Add spacing

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Add spacing
                        Expanded(
                          child: CampoDeEntradaRotulado(
                            tituloCampo: 'Espaço',
                            textoCampo: 'Sintetico ou Areia?',
                          ),
                        ),
                        SizedBox(width: 14),
                        Expanded(
                          child: CampoDeEntradaRotulado(
                            tituloCampo: 'Valor da Hora',
                            textoCampo: 'RS ',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: CampoDeEntradaRotulado(
                            tituloCampo: 'Horário de Inicio',
                            textoCampo: 'HR:MN',
                          ),
                        ),
                        SizedBox(width: 14), // Add spacing
                        Expanded(
                          child: CampoDeEntradaRotulado(
                            tituloCampo: 'Horário de Termino',
                            textoCampo: 'HR:MN',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    AgendarButton(), // Botão Agendar
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

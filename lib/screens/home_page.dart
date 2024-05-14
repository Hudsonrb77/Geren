import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _selectedDay; // Pode ser nulo agora

  @override
  Widget build(BuildContext context) {
    // Obtém a largura máxima do dispositivo
    double maxWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 16, 45, 11),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: maxWidth, // Largura máxima do dispositivo
              height: 200,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(17, 125, 27, 1), // Cor em RGB
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Abril 2024',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                      size: 40,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildDayInfo('SEG', '01'),
                        _buildDayInfo('TER', '02'),
                        _buildDayInfo('QUA', '03'),
                        _buildDayInfo('QUI', '04'),
                        _buildDayInfo('SEX', '05'),
                        _buildDayInfo('SÁB', '06'),
                        _buildDayInfo('DOM', '07'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
                height:
                    20), // Espaçamento entre o retângulo e o conteúdo abaixo
            // Adicione aqui o resto do conteúdo da tela
          ],
        ),
      ),
    );
  }

  Widget _buildDayInfo(String weekDay, String dayNumber) {
    bool isSelected = _selectedDay == dayNumber;

    return Column(
      children: [
        Text(
          weekDay,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        GestureDetector(
          onTap: () {
            setState(() {
              if (_selectedDay == dayNumber) {
                _selectedDay = null; // Deseleciona se já estiver selecionado
              } else {
                _selectedDay = dayNumber; // Seleciona o dia
              }
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: isSelected
                  ? Color.fromRGBO(17, 125, 27, 1)
                  : Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected
                    ? Color.fromRGBO(0, 255, 40, 1.0)
                    : Colors.transparent,
                width: 2,
              ),
            ),
            padding: const EdgeInsets.all(8),
            child: Text(
              dayNumber,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

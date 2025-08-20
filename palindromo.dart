void main() {
  List<String> frases = [
    "Anita lava la tina",
    "Amo la paloma",
    "Hola mundo",
    "Reconocer"
  ];

  for (var entrada in frases) {
    String texto = entrada.toLowerCase().replaceAll(RegExp(r'[^a-z0-9áéíóúüñ]'), '');
    String invertido = texto.split('').reversed.join();

    if (texto == invertido) {
      print("✅ \"$entrada\" es un palíndromo.");
    } else {
      print("❌ \"$entrada\" NO es un palíndromo.");
    }
  }
}
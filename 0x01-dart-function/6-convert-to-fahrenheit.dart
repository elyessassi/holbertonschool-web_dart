List<double> convertToF(List<double> temperaturesInC){
  temperaturesInC = temperaturesInC.map((item) => (double.parse(((item * 9 / 5) + 32).toStringAsFixed(2)))).toList();
  return(temperaturesInC);
}

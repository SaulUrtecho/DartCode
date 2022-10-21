// en dart una funcion es tratada como cualquier variable
/* 
void main() {
  int resultOfAddition = calculate(20, 10, add);

  print(resultOfAddition); // 30

  int resultOfSubtraction = calculate(20, 10, subtract);

  print(resultOfSubtraction); // 10
}

int add(int num1, int num2) {
  int result = num1 + num2;
  return result;
}

int subtract(int num1, int num2) {
  int result = num1 - num2;
  return result;
}

int calculate(int x, int y, Function performCalculation) {
  return performCalculation(x, y);
} */

void main() {
  calculate(20, 10, add); // 30
  calculate(20, 10, subtract); // 10
}

void add(int num1, int num2) {
  int result = num1 + num2;
  print(result);
}

void subtract(int num1, int num2) {
  int result = num1 - num2;
  print(result);
}

void calculate(int x, int y, performCalculation) {
  performCalculation(x, y);
}

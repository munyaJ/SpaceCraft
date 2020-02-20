void main() {
  print('Hello, World!');
  int x;
  x = addTwoNums(10, 20);
  print(x);
  x = 5;
  print(x);
  x = addTwoNums(3, 1);
  print(x);
int year = 1900;
  while (year < 2000) {
    print(year);
    year += 10;
    print(year);
  }



}


int addTwoNums (int n1, int n2) {
  return n1 + n2;
}



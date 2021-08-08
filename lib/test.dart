main(){

//  test((abc){
//    print(abc);
//  });

test((num1, num2) {
  print(num2+num1);
  return num1 + num2;
});

var demo1 = demo();
print(demo1(20,30));
}

//void test(Function foo){
//  foo('why');
//}

//void test(int foo(int num1,int num2)){
//  foo(20,30);
//}

typedef Calculate = int Function(int num1,int num2);
void test(Calculate calculate){
  calculate(20,30);
}

Calculate demo(){
  return (num1,num2){
    return num1*num2;
  };
}


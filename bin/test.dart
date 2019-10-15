import 'package:test/test.dart';
import 'main.dart';

void main(){
  test('EvenOddTransformTest', (){
    expect(evenOddTransform([1, 2, 3], 1,),[3, 0, 5]);
    expect(evenOddTransform([3,4,9], 3,),[9, -2, 15]);
    expect(evenOddTransform([0,0,0], 10),[-20, -20, -20]);
  });
  test('LongestZero', (){

    expect(longestZero("101001"),"00");
    expect(longestZero("01100001011000"),"0000");
    expect(longestZero("11111"),"");
  });
}
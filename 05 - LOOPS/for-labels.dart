void main() {
  for (var i = 0; i < 2; i++) {
    //i = 0
    for (int j = i; j < 2; j++) {
      //j = 0
      for (num k = j; k < 2; k++) {
        //k = 0
        print('i: $i j: $j k: $k');
      }
    }
  }

  loopExterno:
  for (var i = 0; i < 3; i++) {
    //i = 0
    print('loopExterno: i: $i');
    loopInterno:
    for (var j = 0; j <= 3; j++) {
      //j = 0
      print('loopInterno: i: $i j: $j');
      if (j > 2)
        break; //quando se usa o break, fecha o loop atual e volta ao anterior, no caso o loopExterno
      if (i == 1) break loopInterno;
      if (i == 2) break loopExterno;
      print('looCompleto');
    }
  }

  print('');

  loopExterno:
  for (int i = 1; i <= 2; i++) {
    //i = 0
    print('loopExterno: i: $i');
    loopInterno:
    for (int j = 1; j <= 3; j++) {
      //j = 0
      print('loopInterno: i: $i j: $j');
      if (i == 1 && j == 1) continue loopInterno;
      if (i == 2 && j == 2) continue loopExterno;
      print('LoopCompleto');
    }
  }
}

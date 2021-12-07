late int position;
/*
position normal (1)
x: 0.1 entre 0.2
y: 0.4 entre 0.5
z: 9.1 entre 9.2
*/
Compare(x, y, z) {
  if (x >= 0.0 && x <= 0.4 && y >= 0.2 && y <= 0.5 && z >= 9.0 && z <= 10) {
    position = 1;
    return position; //return print(position);
  }
/*
position renversé à plat ventre (2)
x: 0.1 entre 0.2
y: 0.2 entre 0.3
z: -10.4 entre -10.5
*/
  else if (x >= -0.2 &&
      x <= 0.2 &&
      y >= 0.2 &&
      y <= 0.5 &&
      z <= -10.4 &&
      z >= -10.6) {
    position = 2;
    return position; // print(position);
  }
/*
position sur le coté droit (3)
x: -9.8 entre -9.9
y:  0.12 entre 0.2
z:  0.2 entre  0.3
Compare(-9.8, 0.13, 0.25);
*/
  else if (x <= -8.0 &&
      x >= -10 &&
      y >= 0.1 &&
      y <= 0.2 &&
      z >= 0.0 &&
      z <= 3.5) {
    position = 3;
    return position; // print(position);
  }
/*
position sur le coté gauche (coté btt volume) (4)
x: 9.8 entre 9.9
y:  0.6 entre 0.7
z:  0.3 entre  0.4
*/
  else if (x >= 8.0 &&
      x <= 9.9 &&
      y >= 0.5 &&
      y <= 0.7 &&
      z >= 0.0 &&
      z <= 3.5) {
    position = 4;
    return position; // print(position);
  }
/*
position mitsangana (5)
x: 0.2 entre 0.3
y:  10.1 entre 10.2
z:  0.7 entre  0.8
*/
  else if (x >= -0.2 &&
      x <= 0.3 &&
      y >= 9.0 &&
      y <= 10.2 &&
      z >= 1.0 &&
      z <= 3.0) {
    position = 5;
    return position; // print(position);
  }
/*
position mitotongana (6)
x: 0.1 entre 0.2
y:  -9.45 entre -10
z:  -0.7 entre  -0.8
*/
  else if (x >= 0.0 &&
      x <= 0.3 &&
      y <= -9.0 &&
      y >= -10.0 &&
      z >= -1.0 &&
      z <= 2.0) {
    position = 6;
    return position;
    // print(position);
  } else {
    return print("yo");
  }
}

/*void main() {
  Compare(-9.8, 0.13, 0.25);
}
//Compare(0.11,-9.47,-0.75);*/
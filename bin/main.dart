// Challenge 1
// Write test cases including boundary conditions for given challenges

// Challenge 2
// Josephus Problem
// This classic problem dates back to Roman times. There are 41 soldiers arranged
// in a circle. Every third soldier is to be killed by their captors, continuing
// around the circle until only one soldier remains. He is to be freed. Assuming
// you would like to stay alive, at what position in the circle would you stand?

// Generalize this problem by creating a function that accepts the number of
// soldiers n and the interval at which they are killed i, and returns the
// position of the fortunate survivor.

int josephus(int n) {
  int res = 0;
  for (int i = 1; i <= n; i++) {
    res = (res + 3) % i;

  }
  return res + 1;
}



// Challenge 3
// Movie Theater Seating
// A group of n friends are going to see a movie. They would like to find a spot
// where they can sit next to each other in the same row. A movie theater's seat
// layout can be represented as a 2-D matrix, where 0s represent empty seats and
// 1s represent taken seats.

int groupSeats(List movieSeats, int n){
  int count = 0;
  for(int i = 0; i < movieSeats.length; i++){
    for(int j = 0; j < movieSeats[i].length-n+1; j++){
      print(((movieSeats[i].sublist(j, j+n)).toSet().toList()));
      if ((((movieSeats[i].sublist(j, j+n)).toSet().toList())[0]) == 0 && (movieSeats[i].sublist(j, j+n)).toSet().length == 1){
        count++;
      }
    }
  }
  return count;
}

// Create a function that, given a seat layout and the number of friends n,
// returns the number of available spots for all n friends to sit together.
//
//Examples
//groupSeats([
//  [1, 0, 1, 0, 1, 0, 1],
//  [0, 1, 0, 1, 0, 1, 0],
//  [0, 0, 1, 1, 1, 1, 1],
//  [1, 0, 1, 1, 0, 0, 1],
//  [1, 1, 1, 0, 1, 0, 1],
//  [0, 1, 1, 1, 1, 0, 0]
//    ], 2) ➞ 3

main() {
  print(josephus(10));
  //print(josephus(41));
  print(groupSeats([
 [1, 0, 1, 0, 1, 0, 1],
 [0, 1, 0, 1, 0, 1, 0],
 [0, 0, 1, 1, 1, 1, 1],
  [1, 0, 1, 1, 0, 0, 1],
  [1, 1, 1, 0, 1, 0, 1],
 [0, 1, 1, 1, 1, 0, 0]
   ], 2));
  
}

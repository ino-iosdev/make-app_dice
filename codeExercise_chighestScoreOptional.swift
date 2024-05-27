var studentsAndScores = ["Amy": Int(), "James": Int(), "Helen": Int()]

func highestScore(scores: [String: Int]) {
  
  //Write your code here.
  let a = studentsAndScores["Amy"]!
  let b = studentsAndScores["James"]!
  let c = studentsAndScores["Helen"]!
  
  var temp = 0
  //temp is placeholder like a box hoding the heighest score
  if a > temp {
  //if a is greater than temp, then we replace temp with a, so that a becomes the highest score now
    temp = a
  }
  if b > temp {
    temp = b
  }
  if c > temp {
    temp = c
  }
  print(temp)
}

studentsAndScores = ["Amy": 3, "James": 4, "Helen": 6]
highestScore(scores: studentsAndScores)

func calculator() {
  let a = Int(readLine()!)! //First input
  let b = Int(readLine()!)! //Second input
  
  add(n1: a, n2: b)
  subtract(n1: a, n2: b)
  multiply(n1: a, n2: b)
  divide(n1: a, n2: b)
  
}

func add(n1:Int, n2:Int){
    print(n1+n2)
}

func subtract(n1:Int, n2:Int){
    print(n1-n2)
}

func multiply(n1:Int, n2:Int){
    print(n1*n2)
}

func divide(n1:Int, n2:Int){
    print(Float(n1)/Float(n2))
}


add(n1: 2, n2: 3)
divide(n1: 4, n2: 3)

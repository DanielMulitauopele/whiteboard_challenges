// Minimum function

const min = (num1, num2) => {
  if (num1 < num2) {
    return num1
  } else {
    return num2
  }
}

console.log(min(7, 5))

// Recursion Function

const isEven = (input) => {
  if (input == 0) {
    console.log("even")
  } else if (input == 1) {
    console.log("odd")
  } else {
    isEven(input - 2)
  }
}

isEven(8)

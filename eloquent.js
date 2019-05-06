// Minimum function

const min = (num1, num2) => {
  if (num1 < num2) {
    return num1
  } else {
    return num2
  }
}

console.log(min(7, 5))

// Recursion function

const isEven = (input) => {
  if (input == 0) {
    console.log("even")
  } else if (input == 1) {
    console.log("odd")
  } else {
    isEven(input - 2)
  }
}

isEven(50)

// Counting function

const countBs = (string) => {
  return countChar(string, "B");
}

const countChar = (string, char) => {
  counter = 0;
  for (i = 0; i < string.length - 1; i++) {
    if (string[i] == char) {
      counter += 1
    }
  }
  return counter;
}

console.log(countBs("BaBaygotback"))

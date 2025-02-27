checkIfInputIsWorthy(String input) {
  if (input.trim().split(" ").length >= 3) {
    print(input.trim().split(" "));
    return true;
  } else {
    print(input.trim().split(" "));
    return false;
  }
}

const resultDisplay = document.getElementById("result");

let currentInput = "";

function updateDisplay() {
  resultDisplay.textContent = currentInput;
}

function insert(value) {
  currentInput += value;
  updateDisplay();
}


function clearResult() {
  currentInput = "";
  updateDisplay();
}

function backspace() {
  currentInput = currentInput.slice(0,-1);
  updateDisplay();
}
function calculate() {
  try {
    const result = eval(currentInput); // Using eval is not recommended for security reasons
    currentInput = result.toString();
    updateDisplay();
  } catch (error) {
    currentInput = "Error";
    updateDisplay();
  }
}
function calculateSquareRoot(){
let currentInput=parseFloat(document.getElementById('display').value);
if(currentInput>=0){
document.getElementById('display').value=Math.sqrt(currentInput);
}
else{
document.getElementById('display').value='error';
}
}
const button = document.querySelectorAll(".buttons button");
buttons.forEach((button) => {
  button.addEventListener("click", () => {
    const buttonText = button.textContent;
    if (buttonText === "clear") {
      clearResult();
    } else if (buttonText === "del") {
      backspace();
    } else if (buttonText === "ans") {
      calculate();
    } else if (buttonText === "ENTER"){
       calculate();
    }
else if (buttonText === "√"){
       calculateSquareRoot();
    }

  });
});

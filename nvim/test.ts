function addNumbe(a: number, b: number): number { 
  return a + b; 
} 
function subtractTwoNumber(a:number, b:number):number {
  return a-b;
}  
// Variables representing two numbers 
let num1: number = 5; 
let num2: number = 8; 
  
// Call the function and store the result 
let sum: number = addNumber(num1, num2); 
let difference: number = subtractTwoNumber(num2, num1);  
// Output the result to the console 
console.log(`The sum of ${num1} and ${num2} is: ${sum}`); 

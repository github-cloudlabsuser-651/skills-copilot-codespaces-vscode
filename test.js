// Calculator class
class Calculator {
    constructor() {
        this.result = 0;
    }

    add(a, b) {
        this.result = a + b;
        return this.result;
    }

    subtract(a, b) {
        this.result = a - b;
        return this.result;
    }

    multiply(a, b) {
        this.result = a * b;
        return this.result;
    }

    divide(a, b) {
        if (b === 0) {
            throw new Error("Cannot divide by zero");
        }
        this.result = a / b;
        return this.result;
    }
}

// Usage
const calculator = new Calculator();
console.log(`Addition: ${calculator.add(5, 3)}`);
console.log(`Subtraction: ${calculator.subtract(5, 3)}`);
console.log(`Multiplication: ${calculator.multiply(5, 3)}`);
console.log(`Division: ${calculator.divide(5, 3)}`);
const Schema = require("./employees_pb");
const fs = require("fs");

const jackLi = new Schema.Employee();
const kellyLi = new Schema.Employee();

jackLi.setId(1001);
jackLi.setName('Jack Li')
jackLi.setSalary(10000);

kellyLi.setId(1001);
kellyLi.setName('Jack Li')
kellyLi.setSalary(10000);

console.log(jackLi.getName())
console.log(kellyLi.getSalary())

const employees = new Schema.Employees();
employees.addEmployees(jackLi, kellyLi);
const bytes  = employees.serializeBinary();

console.log("binary", bytes);
fs.writeFileSync('employeesBinary', bytes)

const unpackedEmployees = Schema.Employees.deserializeBinary(bytes)
console.log(unpackedEmployees.toString())

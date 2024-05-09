Calculator.js: a node.js Demonstration Project
==============================================
An example node.js project, including tests with mocha, that behaves like
a pocket calculator.

The project contains a simple node.js application that exposes REST APIs
to perform arithmetic on integers, and provides a test suite with mocha
and chai.  The `mocha-junit-reporters` package is included to provide XML
output that can be presented in a continuous integration tool like
[Azure DevOps](https://azure.com/devops).

**To build, simply:**

1. Run `npm install` to install dependencies.

**To test, simply:**

2. Run `npm test` to run Mocha and execute the unit tests.

**To run, simply:**

3. Run `npm start` and the server will launch on port 3000
4. To stop, open the Terminal and press "Control + C"

**Application Architecture**

Below is a mermaid diagram that illustrates the flow between the client, server, and arithmetic operations within the application:

```mermaid
graph LR
    A[Client] --> B[Server]
    B --> C[API Routes]
    C --> D[Arithmetic Controller]
    D --> E[Arithmetic Operations]
    E --> D
    D --> C
    C --> B
    B --> A
```

This diagram helps in understanding how the application processes arithmetic operations, from the client making a request to the server, and how the server handles that request through its API routes and arithmetic controller, performing the operations and returning the result back to the client.

**To Do List**

1. There are no test for subtraction currently. Please validate this is the case then add some tests in.
2. The client has asked for a power (or exponential) function to be added to the calculator. Please add this function and tests to go with it.
3. Review the "Application Architecture" section and mermaid diagram for a better understanding of the repository.

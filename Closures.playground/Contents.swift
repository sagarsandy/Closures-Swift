import UIKit

// Closures :  The most advanced interesting and (little confused :P)topic of swift.

// A closure is nothing but a function without function name and func keyword


// Let's see a normal function

func sumOfTwoNumbers(num1 : Int, num2 : Int) -> Int {
    
    return num1+num2
}

var addition = sumOfTwoNumbers(num1: 10, num2: 20)


// Let's see how closures work


var sum : (Int, Int) -> (Int) = { n1, n2 in
    return n1 + n2
}

print(sum(2,4))

/*
 Explanation:
 
 1. sum : Vairable name
 2. (Int, Int)  : Number of input parameters and their data types
 3. (Int) : Output parameter and it's data type
 4. n1, n2 : are the arguments(duplicate names) of input parameters
 5. in : differes the actual code block and arguments(input duplicate parameters).
 6. after the in, we will execute our code block
 
*/



// Shorter form of closure

var sum2 :(Int, Int) -> (Int) = {
    return $0 + $1
}

print(sum2(3,4))

/*
 Explanation: While using closures, you can simply use arguments as $0 $1 $2 ... etc. depends on number of input parameters. we don't need to name them.
 */


// We can still make it shorter

var sum5 :(Int, Int) -> (Int) = { $0 + $1 }

//Remember we can only this syntax, if we don't have more than one line in code block, if we have more than one line, then we need to use return statement.

print(sum5(2,4))


// The most simplest version of closure

var doSomething = { "hello world" }

print(doSomething())


// Using above syntax, u can execute some big function without naming it

var executeAllStatementsAndReturnName : () -> (String) = {
    
    
    print("Hello world 1")
    print("Hello world 2")
    print("Hello world 3")
    print("Hello world 4")
    print("Hello world 5")
    print("Hello world 6")
    
    return "Sagar Sandy"
}

var name = executeAllStatementsAndReturnName()

print(name)

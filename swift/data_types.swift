/*
 * Swift is statically typed, meaning that once a variable is declared, it's type can not be reassigned. 
 * Swift also uses type inference to assign types to your variables (though they may still be explicitly declared)
 * This means that if you declare "word" to a variable, Swift will automatically assign the type String to that 
 * variable at compile time.
 * Swift is also strongly-typed/type-safe. This means that functions/methods have type signatures associated with 
 * them that specify the expected types of both arguments and returned values. If this integrity check is broken
 * a compilation error will be thrown.
 */

// Example
var foo = "Word"
foo = 1             // will cause a compilation error (static typing)

/* 
 * Data Types (from lecture slides)
 *
 * Integers (Int, Int8, Int16, Int32, Int64, UInt32) : Defines both signed and unsigned integers.
 * Floating point (Float or Double): Float for 32 bit decimal values where as Double for 64 bit decimal values
 * Boolean (Bool): Boolean value that can be set to true or false
 * Character(use double quotes with single character):  Single character literal     
 *     var myChar  = “C”
 * String (use double quotes with one or more character): Collection of characters 
 *     var myString= “ABC”
*/

/* 
 * Variable declaration
 *
 * Variable declaration follows the format var/let varName[:Type] = value
 * let is used to declare constants
 * var is used to declare variables
*/

// Examples
var bar = "Nobody expects the Spanish Inquisition"  // inferred String variable
var baz: Int = 42                                    // explicit Int variable
let pi = 3.1415                                     // inferred Float constant
let e: Double = 2.71828                              // explicit Double constant

/*
 * Optional Variables
 * 
 * Variables that are statically typed cannot be overridden by a null value. So we need something else to 
 * "contain" maybe \(a type).
 * Optional variables are necessary for declaring null values. Optional variables can be "unwrapped" to
 * reveal their value.
*/

var optionalField: String?      // Automatically has its value set to nil
var defaultValue: Int? = 404    // An optional variable can be overwritten with nil
defaultValue = nil

var temp = 1                    // But other variables can not
temp = nil

// Unwrapping optionals

var optionalWithValue: String? = "Othello"
print(optionalWithValue!)       // unwraps optional and prints Othello

var optionalWithoutValue: String?
print(optionalWithoutValue)     // causes an error

// One can check for a nil value by running
if defaultValue != nil {
    print("This variable contians something!")
}

// One can also check a potentially nil variable using optional binding
var checkedName:String? = "James"
if let confirmedName = checkedName {
    print("The name was found to be \(confirmedName)")
}

/*
 * Resources
 *
 * https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html
 * https://www.aidanf.net/learn-swift/types_and_type_inference
 * An interesting side note on strong/weak typing: https://www.destroyallsoftware.com/compendium/strong-and-weak-typing?share_key=6b0dd1ec18ab6102
*/
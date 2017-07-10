//: Playground - noun: a place where people can play
/*
 *  Simple Test cases
 */
import UIKit

var str = "Hello, playground"

str = str + " Zak";

print (str);

var bar = 200;

bar = 300;

print (bar);

let foo : Double = 100;

print (foo);

let far : Int;

far  = 60;

print (far);


/*
 *  Creating Class Fraction in order to get addition, subtraction, multiplication and division functions 
 *  probably with operator overloading
 *  Created by: Zak Rahman
 *  Created Date:   1452912180
 *  Modified By:   
 *  Modified Date:
 */

class Fraction{
    var numerator:      Int =   0;
    var denominator:    Int =   1;
    
    init(numerator: Int, denominator:   Int){
        if(denominator != 0){
            self.numerator  =   numerator;
            self.denominator  =   denominator;
        }
        else{
            print("denominator cannot be \(denominator)")
            self.numerator  =   0
            self.denominator  =   1
        }
        reduce()
    }
    
    //Test for denominator 0
    
    init(_ numerator: Int, over denominator:   Int){
        if(denominator != 0){
            self.numerator  =   numerator;
            self.denominator  =   denominator;
        }
        else{
            print("denominator cannot be \(denominator)")
            self.numerator  =   0
            self.denominator  =   1
        }
        reduce()
    }
    
    init(){}
    
    func setTo(numerator:   Int, denominator:   Int){
        if(denominator != 0){
            self.numerator  =   numerator;
            self.denominator  =   denominator;
        }
        else{
            print("denominator cannot be \(denominator)")
            self.numerator  =   0
            self.denominator  =   1

        }
        reduce()
    }
    
    func setTo(numerator:   Int, over denominator:   Int){
        if(denominator != 0){
            self.numerator  =   numerator;
            self.denominator  =   denominator;
        }
        else{
            print("denominator cannot be \(denominator)")
            self.numerator  =   0
            self.denominator  =   1

        }
        reduce()
    }
    
    func setTo(numerator:   Int,_ denominator:   Int){
        if(denominator != 0){
            self.numerator  =   numerator;
            self.denominator  =   denominator;
        }
        else{
            print("denominator cannot be \(denominator)")
            self.numerator  =   0
            self.denominator  =   1
        }
        reduce()
    }
    
    // Test for negativity in d
    func reduce(){
        let sign    =   numerator   >=  0   ?   1   :   -1;
        var u   =   numerator   *   sign;
        var v   =   denominator;
        var temp:   Int;
        while(  v   !=  0   ){
            temp    =   u   %   v;
            u   =   v;
            v   =   temp;
        }
        numerator   /=  u;
        denominator /=  u;
        if(denominator < 0){
            denominator =   denominator * -1
            numerator =   numerator * -1
        }
    }
    
    func add(f:Fraction)->Fraction{
        numerator   =   numerator * f.denominator
            +   denominator *   f.numerator;
        denominator =   denominator *   f.denominator;
        
        reduce();
        return  self;
    }
    
    func add(a:Fraction, _  b:Fraction)->Fraction{
        return a.add(b);
    }
    
    //func +=(a:Fraction,  b:Fraction)->Fraction{
    //return a.add(b);
    //}
    
    //func +=(inout left:Fraction, right:Fraction){
    //left    =   left    +   right;
    //}
    
    func subtract(f:Fraction)->Fraction{
        numerator   =   numerator   *   f.denominator
            -   denominator *   f.numerator;
        denominator =   denominator *   f.denominator;
        
        reduce();
        return  self;
    }
    
    func subtract(a:Fraction, _ b:Fraction)->Fraction{
        return a.subtract(b);
    }
    
    func multiply(f:Fraction){
        numerator   =   numerator   *   f.numerator;
        denominator =   denominator *   f.denominator;
        
        reduce();
    }
    
    func multiply(a:Fraction, _ b:Fraction){
        return a.multiply(b);
    }
    
    func division(f:Fraction){
        numerator   =   numerator   *   f.denominator;
        denominator =   denominator *   f.numerator;
        
        reduce();
    }
    
    func division(a:Fraction, _ b:Fraction){
        return a.division(b);
    }
    
    //func -=(a:Fraction,  b:Fraction)->Fraction{
    //return a.add(b);
    //}
    
    func printNumerator()->Int{
        return  numerator;
    }
    
    func printDenominator()->Int{
        return  denominator;
    }
    
}

func -(a:Fraction,  b:Fraction)->Fraction{
    return a.subtract(b);
}

func +(a:Fraction,  b:Fraction)->Fraction{
    return a.add(b);
}

//func *(a:Fraction,  b:Fraction)->Fraction{
//    return a.multiply(b);
//}

//func /(a:Fraction,  b:Fraction)->Fraction{
//    return a.division(b)
//}


/*
 *  Test cases
 */

var f1  =   Fraction(numerator: 1, denominator: 2);
var f2  =   Fraction(2, over: 3);
var f3  =   Fraction();
var f4  =   Fraction()
f4.setTo(1, denominator: 3);
var f5  =   Fraction()
f5.setTo(1, over: 3);
var f6  =   Fraction()
f6.setTo(1, 3);
var f7  =   Fraction(1, over:   2);
var f8  =   Fraction(1, over:   4);
f7.add(f8);
let f9  =   Fraction(1, over:   4);
var f10  =   Fraction(1, over:   4);
f10  =  f10 - f9;
f10  =  f10 + f9;
f9.multiply(f10)
print(f9.printNumerator())
print(f9.printDenominator())
//f10  =  f10 * f9;
//f10  =  f10 / f9;
var f11 = Fraction(1, over: 0)
var f13 = Fraction(1, over: -1)
f9.multiply(f13)
print(f9.printNumerator())
print(f9.printDenominator())
/*
 *  Quiz Questions
 */
var i : Int32 = 1;

let j = -1;

let c : Character = "A";

var s = "A";


//for (var i =  0...10)//
//{
//    NSLog(i);
//}
func f(name name: String) -> String{
    //let a:String = "a";
    return name;
}
var f12 = f(name:"Swift");

class w{
    var attr = 3;
    func m(x: Int, y: Int){
        attr = 4;
    }
    func n(x: Int, and y: Int){
        
    }
}

var obj = w();
obj.m(1, y: 2);
obj.n(1, and: 2)


/*
 *  Creating Class Binary Search Tree in order to get rank function for a Binary Search Tree
 *  Created by: Zak Rahman
 *  Created Date:   1453256187
 *  Modified By:
 *  Modified Date:
 */


class BinaryTree {
    
    var data: Int?
    
    var left: BinaryTree?
    var right: BinaryTree?
    
    init() {
    }
    
    func insert(d: Int) {
        
        if (self.data == nil) {
            
        } else {
            
            if d < self.data {
                if let l = self.left {
                    l.insert(d)
                } else {
                    let tree = BinaryTree()
                    tree.data = d
                    self.left = tree
                }
            } else {
                if let r = self.right {
                    r.insert(d)
                } else {
                    let tree = BinaryTree()
                    tree.data = d
                    self.right = tree
                }
            }
        }
    }
}

class   BST<T : Comparable>{
    
}
//class Node{
//    let data:   T?;
//    var left:   Node?;
//    var right:  Node?;
//    
////    init(){}
//    
//    init (data: T){
//        self.data   =   data;
//    }
//    
////    func  insert
//}
//
//func <(lhs:  Node, rhs:  Node)->Bool{
//    return lhs.data < rhs.data;
//}
//
//func ==(lhs:  Node, rhs:  Node)->Bool{
//    return lhs.data < rhs.data;
//}

public class Node<T: Comparable> {
    var index : Int = 0;
    var key: T?
    var left: Node?
    var right: Node? //add item based on its value
    func addNode(key: T) { //check for the head node
        if (self.key == nil)
        {
            self.key = key
            self.index  +=  1
            return
        } //check the left side of the tree
        if (key < self.key)
        {
            if (self.left != nil)
            {
                left!.addNode(key)
            }
            else
            {
                //create a new left node
                let leftChild : Node = Node()
                leftChild.key = key
                self.left = leftChild
            }
        } //end if
        //check the left side of the tree
        if (key > self.key)
        {
            if (self.right != nil)
            {
                right!.addNode(key)
            }
            else
            {
                //create a new right node
                let rightChild : Node = Node()
                rightChild.key = key
                self.right = rightChild
            }
        }
        //end if
    }//end function
    
    func searchNode(key: T)->Int{
        if (self.key == nil)
        {
            return  index
        }
        if(key == self.key){
            
            return index
        }
//        if(key == self.key){
//            return 1
//        }
//        else if(left!.key != nil && key > self.key){
//            searchNode(left!.key!)
//        }
//        else if(right!.key =nil && key > self.key){
//            searchNode(right!.key!)
//        }
//        else{
//            return 0
//        }
        if (key < self.key)
        {
            if (self.left != nil)
            {
                left!.searchNode(key)
            }
            else
            {
                return index
            }
        } //end if
        //check the left side of the tree
        if (key > self.key)
        {
            if (self.right != nil)
            {
                right!.searchNode(key)
            }
            else
            {
                return index
            }
        }
        return index
    }
    
    func searchKey(key : T)->Bool{
        if(key == self.key){
            return true;
        }
        return false;
    }
    
    func rank(key:  T)->Int{
        //variable to find the height at which the key was found
        var counter = 0;
        counter =  processDepthTraversal(counter)
        return counter - index
    }
    
    func processDepthTraversal(var counter : Int) ->Int{ //check for a nil condition
        if (self.key == nil)
        {
            print("no key provided..")
            return 0
        } //process the left side 
        if (self.left != nil)
        {
            left?.processDepthTraversal(counter)
            counter += 1;
        }
        print("key is \(self.key!) visited..") //process the right side
        if (self.right != nil)
        {
            right?.processDepthTraversal(counter)
            counter += 1;
        }
        return counter
    }
    
}//end class
//func <=(lhs:  Node<T: Int>, rhs:  Node<T: Int>)->Bool{
//    return lhs.key < rhs.key;
//}
//
//func ==(lhs:  Node, rhs:  Node)->Bool{
//    return lhs.data < rhs.data;
//}

let numberList : Array<Int> = [8, 2, 10, 9, 11, 1, 7] //create a new BST instance
var root = Node<Int>() //sort each item in the list
for number in numberList
{
    root.addNode(number)
}

root.searchNode(2);
print(root.rank(7))

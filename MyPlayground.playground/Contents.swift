import UIKit

func quadraticEquationHandler(A numberA:Double, B numberB:Double, C numberC:Double) -> String
{
    let a: Double = numberA
    let b: Double = numberB
    let c: Double = numberC

    var delta:Double?
    let x1:Double?
    let x2:Double?
    
    //special case if a+b+c =0
    if(a != 0)
    {
        if(a + b + c == 0)
        {
            return "Equation Special Case a + b + c = 0: (\(a))x2 + (\(b))x + (\(c)) = 0 \n deltal = \((b * b) - (4 * a * c)) \n x1 = 1 \n x2 = \(c/a)"
        }
        
        //special case if a-b+c =0
        if(a - b + c == 0)
        {
             return "Equation Special Case a - b + c = 0: (\(a))x2 + (\(b))x + (\(c)) = 0 \n deltal = \((b * b) - (4 * a * c)) \n x1 = -1 \n x2 = \(-1 * c/a)"
        }
    }
    //normal case
    //Case a==0
    if(a==0){
        //case b==0
        if(b==0){
            if (c==0)
            {
                return "Equation: (\(a))x2 + (\(b))x + (\(c)) = 0 \n deltal = unknow \n x1 = unknow \n x2 = unknow"
            }
            else
            {
                return "Equation: error! (\(b))x + (\(c)) = 0 is not true"
            }
        }
        //case b!=0
        else
        {
            return "Equation: (\(b))x + (\(c)) = 0 \n deltal = unknow \n x1 = \((-1 * c)/b) \n x2 = \((-1 * c)/b)"
        }
    }
    //case a !=0
    else {
        //calculate delta
        delta = (b * b) - (4 * a * c)
        
        //delta < 0
        if delta! < 0
        {
            return "Equation: (\(a))x2 + (\(b))x + (\(c)) = 0 \n deltal = \(delta!) \n x1 = unvariable \n x2 = unvariable"
        }
        if delta! == Double(0)
        {
            x1 = (-1 * b )/(2 * a)
            x2 = x1
            return "Equation: (\(a))x2 + (\(b))x + (\(c)) = 0 \n deltal = \(delta!) \n x1 = x2 = \(x1!)"
        }
        if delta! > 0
        {
            x1 = ((-1 * b) + sqrt(delta!)) / (2 * a)
            x2 = ((-1 * b) - sqrt(delta!)) / (2 * a)
             return "Equation: (\(a))x2 + (\(b))x + (\(c)) = 0 \n deltal = \(delta!) \n x1 = \(x1!) \n x2 = \(x2!)"
        }
    }
    return "end"
}

print( quadraticEquationHandler(A: 5, B: 1, C: -1) )

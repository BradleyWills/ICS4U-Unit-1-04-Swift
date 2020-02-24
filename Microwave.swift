// The LogCalculation program implements an application that calculates how many 
// maple logs should be placed on a truck if you know the lengths of the logs. 
//
//author Bradley Wills
// version 1.0
// since 2020-02-12

// create variables
var timeForOneItem:Double = 0
var timeForAllItems:Double = 0

print("What item are you microwaving?")
// Ask for input
if let item = readLine() {
    if item == "sub" || item == "pizza" || item == "soup" {
        if item == "sub" {
            timeForOneItem = 1
        } else if item == "pizza" {
            timeForOneItem = 0.75
        } else if item == "soup" {
            timeForOneItem = 1.75
        }
        print("How many of that item are you microwaving?")
        if let amountUnchecked = readLine() {
            if let amount = Double(amountUnchecked) {
                if amount == 1 || amount == 2 || amount == 3 {
                    timeForAllItems = ((amount - 1) / 2 + 1) * timeForOneItem
                    print("It will take \(timeForAllItems) minutes to microwave \(amount) \(item).")
                } else {
                    print("Invalid Input")
                }
            } else {
                print("Invalid Input")
            }
        }
    } else {
     print("Invalid Input")
    }
}
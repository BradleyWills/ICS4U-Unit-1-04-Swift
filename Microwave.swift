// The MicrowaveTime program implements an application that calculates how much 
// time a microwave should run depending on the item and how many of said item.
// author Bradley Wills
// version 1.0
// since 2020-02-23

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
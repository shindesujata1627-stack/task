
def calculateElectronicsGST(a, b):
    return (a + b) * 1.18

def calculateFashionGST(c, d):
    return (c + d) * 1.13

def calculateFoodGST(e):
    return e * 1.07

def totalBill(a, b, c, d, e):
    electronics = calculateElectronicsGST(a, b)
    fashion = calculateFashionGST(c, d)
    food = calculateFoodGST(e)
    return electronics + fashion + food

def calculateDiscountedBill(a, b, c, d, e):
    total = totalBill(a, b, c, d, e)
    discount = total * 0.20
    return total - discount

a = 100
b = 100
c = 100
d = 100
e = 100

total = totalBill(a, b, c, d, e)
discount = total * 0.20
final_amount = calculateDiscountedBill(a, b, c, d, e)

print("Total after GST =", format(total, ".2f"))
print("Discount =", format(discount, ".2f"))
print("Final payable amount =", format(final_amount, ".2f"))

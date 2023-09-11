while True:
    try:
        dollar = float(input("Change owed: "))
        if dollar > 0:
            break
    except:
        print("", end="")

cents = dollar * 100
count = 0
while cents > 0:
    if cents >= 25:
        cents -= 25
        count += 1
    elif cents >= 10:
        cents -= 10
        count += 1
    elif cents >= 5:
        cents -= 5
        count += 1
    else:
        cents -= 1
        count += 1

print(count)
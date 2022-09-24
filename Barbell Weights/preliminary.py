while True:

    barbell = 45
    fortyfivelbsplate = 45
    thirtyfivelbsplate = 35
    twentyfivelbsplate = 25
    tenlbsplate = 10
    fivelbsplate = 5
    twopointfivelbsplate = 2.5
    W2A = 0 #W2A stands for weight to add

    #the number of times a plate is used
    n45lbs = 0
    n35lbs = 0
    n25lbs = 0
    n10lbs = 0
    n5lbs = 0
    n2pt5lbs = 0

    weight = int(input("How much weight do you want to lift?:"))
    weight = weight-barbell #we have now accommodated for the 45lb barbell

    W2A = weight/fortyfivelbsplate
    if W2A < 2:
        W2A = weight/thirtyfivelbsplate
    else:
        n45lbs  = n45lbs + 2
        if W2A < 2:
            W2A = weight/twentyfivelbsplate
        else:
            n35lbs = n35lbs + 2
            if W2A <2:
                W2A = weight/tenlbsplate
            else:
                n25lbs = n25lbs + 2
                if W2A < 2:
                    W2A = weight/fivelbsplate
                else:
                    n10lbs = n10lbs = n10lbs + 2
                    if W2A < 2:
                        W2A = weight/twopointfivelbsplate

    #print("You need to add", n45lbs, "45lb plates,", n35lbs, "35lb plates,", n25lbs,  "25lb plates,", n10lbs, "10lb plates,", n5lbs, "5lb plates, and", n2pt5lbs, "2.5lb plates.")
    print(W2A)

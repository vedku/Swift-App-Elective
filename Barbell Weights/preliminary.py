while True:

    barbell = 45
    fortyfivelbsplate = 45
    thirtyfivelbsplate = 35
    twentyfivelbsplate = 25
    tenlbsplate = 10
    fivelbsplate = 5
    twopointfivelbsplate = 2.5
    W2A = 0

    #the number of times a plate is used
    n45lbs = 0
    n35lbs = 0
    n25lbs = 0
    n10lbs = 0
    n5lbs = 0
    n2pt5lbs = 0

    weight = float(input("How much weight do you want to lift?:"))
    weight = weight-barbell #we have now accommodated for the 45lb barbell

    n45lbs = int(str(weight/90)[0])
    weight -= n45lbs*90
    n35lbs = int(str(weight/70)[0])
    weight -= n35lbs*70
    n25lbs = int(str(weight/50)[0])
    weight -= n25lbs*50
    n10lbs = int(str(weight/20)[0])
    weight -= n10lbs*20
    n5lbs = int(str(weight/10)[0])
    weight -= n5lbs*10
    n2pt5lbs = int(str(weight/5)[0])
    weight -= n2pt5lbs*5

    print("You need to add", n45lbs, "45lb plates on either side")
    print("You need to add", n35lbs, "35lb plates on either side")
    print("You need to add", n25lbs, "25lb plates on either side")
    print("You need to add", n10lbs, "10lb plates on either side")
    print("You need to add", n5lbs, "5lb plates on either side")
    print("You need to add", n2pt5lbs, "2.5lb plates on either side")


while True:
    print("\n===== CAB BOOKING CHATBOT =====")
    print("1. Book Ride")
    print("2. Exit")

    choice = input("Enter your choice: ")

    if choice == "1":
        print("\nChoose Cab Type:")
        print("1. Auto - Rs.12/km")
        print("2. Sedan - Rs.18/km")
        print("3. SUV - Rs.25/km")

        cab_choice = input("Enter cab type: ")

        if cab_choice == "1":
            cab = "Auto"
            rate = 12
        elif cab_choice == "2":
            cab = "Sedan"
            rate = 18
        elif cab_choice == "3":
            cab = "SUV"
            rate = 25
        else:
            print("Invalid cab choice!")
            continue

        print("\nAvailable Routes:")
        print("1. Pune Station to Shivajinagar - 5 km")
        print("2. Swargate to Kothrud - 8 km")
        print("3. Hinjawadi to Wakad - 10 km")

        route_choice = input("Enter route number: ")

        if route_choice == "1":
            source = "Pune Station"
            destination = "Shivajinagar"
            distance = 5
        elif route_choice == "2":
            source = "Swargate"
            destination = "Kothrud"
            distance = 8
        elif route_choice == "3":
            source = "Hinjawadi"
            destination = "Wakad"
            distance = 10
        else:
            print("Invalid route choice!")
            continue

        fare = distance * rate

        print("\n===== RIDE DETAILS =====")
        print("Cab Type:", cab)
        print("Source:", source)
        print("Destination:", destination)
        print("Distance:", distance, "km")
        print("Rate: Rs.", rate, "per km")
        print("Total Fare: Rs.", fare)

        confirm = input(
            "\n1. Confirm & Share OTP\n2. Cancel Ride\nEnter choice: "
        )

        if confirm == "1":
            import random
            otp = random.randint(1000, 9999)
            print("\nBooking Confirmed!")
            print("Your OTP is:", otp)
            print("Ride is now locked. Cancellation is not allowed.")
        elif confirm == "2":
            print("Ride cancelled successfully. No OTP shared.")
        else:
            print("Invalid choice. Booking not confirmed.")

    elif choice == "2":
        print("Thank you for using Cab Booking Chatbot!")
        break

    else:
        print("Invalid menu choice! Please try again.")

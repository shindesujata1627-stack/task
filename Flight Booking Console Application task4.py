
from abc import ABC, abstractmethod


class Passenger(ABC):
    def __init__(self, name, age):
        self.name = name
        self.age = age

    @abstractmethod
    def get_discount(self):
        pass


class RegularPassenger(Passenger):
    def get_discount(self):
        return 0


class StudentPassenger(Passenger):
    def get_discount(self):
        return 0.10


class Flight:
    def __init__(self, code, airline, source, destination, seats, fare):
        self.code = code
        self.airline = airline
        self.source = source
        self.destination = destination
        self.seats = seats
        self.fare = fare

    def display(self):
        print(
            self.code, "|", self.airline, "|",
            self.source, "to", self.destination,
            "| Seats:", self.seats, "| Fare:", self.fare
        )


class Booking:
    def __init__(self, booking_id, flight, passenger, tickets, total):
        self.booking_id = booking_id
        self.flight = flight
        self.passenger = passenger
        self.tickets = tickets
        self.total = total

    def display(self):
        print("\n--- Booking Summary ---")
        print("Booking ID:", self.booking_id)
        print("Flight:", self.flight.code)
        print("Route:", self.flight.source, "to", self.flight.destination)
        print("Passenger:", self.passenger.name)
        print("Age:", self.passenger.age)
        print("Passenger Type:", type(self.passenger).__name__)
        print("Tickets:", self.tickets)
        print("Base fare per ticket:", self.flight.fare)
        print("Subtotal:", self.flight.fare * self.tickets)
        print("Discount:", self.flight.fare * self.tickets
              * self.passenger.get_discount())
        print("Final amount:", self.total)


class FlightBookingSystem:
    def __init__(self):
        self.flights = [
            Flight("PN101", "Air India", "Pune", "Delhi", 20, 4000),
            Flight("MB102", "IndiGo", "Mumbai", "Bengaluru", 25, 3500),
            Flight("PN103", "Akasa Air", "Pune", "Hyderabad", 15, 3000)
        ]
        self.bookings = []
        self.next_id = 1001

    def show_flights(self):
        print("\n--- Available Flights ---")
        for flight in self.flights:
            flight.display()

    def find_flight(self, code):
        for flight in self.flights:
            if flight.code.lower() == code.lower():
                return flight
        return None

    def book_flight(self):
        code = input("Enter flight code: ").strip()
        flight = self.find_flight(code)

        if flight is None:
            print("Invalid flight code.")
            return

        name = input("Enter passenger name: ").strip()
        if not name:
            print("Passenger name cannot be blank.")
            return

        try:
            age = int(input("Enter age: "))
            tickets = int(input("Enter number of tickets: "))
        except ValueError:
            print("Enter valid numbers.")
            return

        if age <= 0 or tickets <= 0:
            print("Age and ticket count must be greater than zero.")
            return

        if tickets > flight.seats:
            print("Booking failed: Not enough seats available.")
            return

        passenger_type = input("Passenger type (Regular/Student): ").strip().lower()

        if passenger_type == "student":
            passenger = StudentPassenger(name, age)
        elif passenger_type == "regular":
            passenger = RegularPassenger(name, age)
        else:
            print("Invalid passenger type.")
            return

        subtotal = flight.fare * tickets
        discount = subtotal * passenger.get_discount()
        total = subtotal - discount

        booking = Booking(
            "BK" + str(self.next_id),
            flight, passenger, tickets, total
        )

        flight.seats -= tickets
        self.bookings.append(booking)
        self.next_id += 1

        print("\nBooking confirmed!")
        booking.display()

    def view_booking(self):
        if not self.bookings:
            print("No confirmed booking available.")
        else:
            self.bookings[-1].display()

    def run(self):
        while True:
            print("\nWelcome to Kiran Air Booking")
            print("1. View Flights")
            print("2. Book Flight")
            print("3. View Booking")
            print("4. Exit")

            choice = input("Enter choice: ").strip()

            if choice == "1":
                self.show_flights()
            elif choice == "2":
                self.book_flight()
            elif choice == "3":
                self.view_booking()
            elif choice == "4":
                print("Thank you for using Kiran Air Booking!")
                break
            else:
                print("Invalid choice. Try again.")


app = FlightBookingSystem()
app.run()

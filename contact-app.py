import os

class Contact:
    def __init__(self, name, phone, email):
        self.name = name
        self.phone = phone
        self.email = email

    def __str__(self):
        return f"Name: {self.name}, Phone: {self.phone}, Email: {self.email}"

class ContactBook:
    def __init__(self):
        self.contacts = []

    def add_contact(self, name, phone, email):
        new_contact = Contact(name, phone, email)
        self.contacts.append(new_contact)

    def display_contacts(self):
        if not self.contacts:
            print("No contacts available.")
            return
        for i, contact in enumerate(self.contacts, start=1):
            print(f"{i}. {contact}")

    def save_contacts(self, filename):
        with open(filename, 'w') as file:
            for contact in self.contacts:
                file.write(f"{contact.name},{contact.phone},{contact.email}\n")
        print(f"Contacts saved to {filename}")

    def load_contacts(self, filename):
        if not os.path.exists(filename):
            print(f"File {filename} does not exist.")
            return
        with open(filename, 'r') as file:
            lines = file.readlines()
            for line in lines:
                name, phone, email = line.strip().split(',')
                self.add_contact(name, phone, email)
        print(f"Contacts loaded from {filename}")

def main():
    contact_book = ContactBook()
    while True:
        print("\nContact Book Menu:")
        print("1. Add Contact")
        print("2. Display Contacts")
        print("3. Save Contacts")
        print("4. Load Contacts")
        print("5. Exit")
        choice = input("Choose an option: ")

        if choice == '1':
            name = input("Enter name: ")
            phone = input("Enter phone: ")
            email = input("Enter email: ")
            contact_book.add_contact(name, phone, email)
            print("Contact added successfully.")
        elif choice == '2':
            contact_book.display_contacts()
        elif choice == '3':
            filename = input("Enter filename to save contacts: ")
            contact_book.save_contacts(filename)
        elif choice == '4':
            filename = input("Enter filename to load contacts: ")
            contact_book.load_contacts(filename)
        elif choice == '5':
            print("Exiting the contact book.")
            break
        else:
            print("Invalid option, please try again.")

if __name__ == "__main__":
    main()

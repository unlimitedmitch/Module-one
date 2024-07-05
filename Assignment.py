import random

class Worker:
    def __init__(self, id, name, gender, salary):
        self.id = id
        self.name = name
        self.gender = gender
        self.salary = salary
        self.level = None

    def assign_level(self):
        try:
            if 10000 < self.salary < 20000:
                self.level = 'A1'
            elif 7500 < self.salary < 30000 and self.gender.lower() == 'female':
                self.level = 'A5-f'
        except Exception as e:
            print(f"Error assigning level for worker {self.id}: {e}")

    def generate_payment_slip(self):
        try:
            self.assign_level()
            print(f"Payment Slip for {self.name} (ID: {self.id}):")
            print(f"Gender: {self.gender.capitalize()}")
            print(f"Salary: ${self.salary}")
            print(f"Level: {self.level if self.level else 'N/A'}")
            print("-" * 30)
        except Exception as e:
            print(f"Error generating payment slip for worker {self.id}: {e}")

# Create a list of workers
workers = []
num_workers = 400

for i in range(1, num_workers + 1):
    name = f"Worker_{i}"
    gender = random.choice(['male', 'female'])
    salary = random.randint(5000, 35000)
    worker = Worker(id=i, name=name, gender=gender, salary=salary)
    workers.append(worker)

# Generate payment slips for each worker
for worker in workers:
    worker.generate_payment_slip()
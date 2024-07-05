# Define the Worker class
Worker <- setRefClass(
  "Worker",
  fields = list(id = "numeric", name = "character", gender = "character", salary = "numeric", level = "character"),
  
  methods = list(
    assign_level = function() {
      tryCatch({
        if (salary > 10000 & salary < 20000) {
          level <<- "A1"
        } else if (salary > 7500 & salary < 30000 & tolower(gender) == "female") {
          level <<- "A5-f"
        } else {
          level <<- "N/A"
        }
      }, error = function(e) {
        message(paste("Error assigning level for worker", id, ":", e$message))
      })
    },
    
    generate_payment_slip = function() {
      tryCatch({
        assign_level()
        cat(paste("Payment Slip for", name, "(ID:", id, "):\n"))
        cat(paste("Gender:", toupper(substr(gender, 1, 1)), substr(gender, 2, nchar(gender)), "\n"))
        cat(paste("Salary: $", salary, "\n"))
        cat(paste("Level:", ifelse(is.na(level), "N/A", level), "\n"))
        cat(strrep("-", 30), "\n")
      }, error = function(e) {
        message(paste("Error generating payment slip for worker", id, ":", e$message))
      })
    }
  )
)

# Create a list of workers
set.seed(123) # For reproducibility
workers <- list()
num_workers <- 400

for (i in 1:num_workers) {
  name <- paste("Worker", i, sep = "_")
  gender <- sample(c("male", "female"), 1)
  salary <- sample(5000:35000, 1)
  worker <- Worker$new(id = i, name = name, gender = gender, salary = salary)
  workers[[i]] <- worker
}

# Generate payment slips for each worker
for (worker in workers) {
  worker$generate_payment_slip()
}
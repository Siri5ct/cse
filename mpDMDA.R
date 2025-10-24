# -------------------------------------------------------
# BANKING SYSTEM DATA ANALYSIS USING R
# -------------------------------------------------------

# Load required library
library(ggplot2)

# Create the dataset
bank_data <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "Diana", "Edward", "Fiona"),
  Age = c(34, 28, 45, 37, 50, 30),
  Account_Number = c(1001, 1002, 1003, 1004, 1005, 1006),
  Transaction_Type = c("Deposit", "Withdrawal", "Deposit", "Withdrawal", "Deposit", "Withdrawal"),
  Transaction_Amount = c(5000, 2000, 10000, 3000, 7000, 1000),
  Account_Balance = c(15000, 8000, 25000, 17000, 22000, 9000)
)

# View the dataset
print("Bank Data:")
print(bank_data)

# 1. Bar Chart: Transaction Amounts by Customer
ggplot(bank_data, aes(x = Name, y = Transaction_Amount, fill = Transaction_Type)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Transaction Amounts by Customer",
       x = "Customer Name", y = "Transaction Amount") +
  theme_minimal()

# 2. Pie Chart: Distribution of Transaction Types
transaction_counts <- table(bank_data$Transaction_Type)
pie(transaction_counts,
    labels = paste(names(transaction_counts), "(", transaction_counts, ")"),
    main = "Distribution of Transaction Types",
    col = c("skyblue", "orange"))

# 3. Scatter Plot: Age vs. Account Balance
ggplot(bank_data, aes(x = Age, y = Account_Balance)) +
  geom_point(color = "blue", size = 3) +
  geom_smooth(method = "lm", color = "red", se = FALSE) +
  labs(title = "Age vs. Account Balance",
       x = "Age", y = "Account Balance") +
  theme_minimal()

# 4. Histogram: Age Distribution
ggplot(bank_data, aes(x = Age)) +
  geom_histogram(binwidth = 5, fill = "lightblue", color = "black") +
  labs(title = "Age Distribution of Customers",
       x = "Age", y = "Frequency") +
  theme_minimal()

# 5. Line Chart: Account Balances by Customer
ggplot(bank_data, aes(x = Name, y = Account_Balance, group = 1)) +
  geom_line(color = "blue", size = 1) +
  geom_point(color = "red", size = 3) +
  labs(title = "Account Balances by Customer",
       x = "Customer Name", y = "Account Balance") +
  theme_minimal()

# 6. Box Plot: Transaction Amount by Type
ggplot(bank_data, aes(x = Transaction_Type, y = Transaction_Amount, fill = Transaction_Type)) +
  geom_boxplot() +
  labs(title = "Transaction Amount by Type",
       x = "Transaction Type", y = "Transaction Amount") +
  theme_minimal()

install.packages("ggplot2")


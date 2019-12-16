#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution

monthly_profit <- revenue - expenses
monthly_profit

profit_after_tax <- 0.7 * monthly_profit
profit_after_tax

profit_margin <- profit_after_tax / revenue
profit_margin

mean_profit <- mean(profit_after_tax)
mean_profit

good_months
bad_months

for(i in profit_after_tax)
{
  if(i > mean_profit)
    good_months <- c(good_months, i)
  else
    bad_months <- c(bad_months, i)
}

len_gm <- length(good_months)
len_bm <- length(bad_months)
good_months[2: len_gm]
bad_months[2:len_bm]

best_month <- max(profit_after_tax)
worst_month <- min(profit_after_tax)

best_month
worst_month


?round()

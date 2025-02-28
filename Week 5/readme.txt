Group1Dataset_LCU_removed(except_exchange_rate).csv is our dataset Group1Dataset.csv but with most "LCU"-related columns removed.
  LCU stands for local currency unit, and each value in these columns had been converted to that country's local currency.
  For countries with severe exchange rates, the values in these columns become so large that they skew the analysis.
  The only LCU-related column not removed is the exchange rate: "Official exchange rate (LCU per US$, period average)".

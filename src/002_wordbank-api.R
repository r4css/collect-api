# Install Packages (Cukup 1 Kali)
install.packages(c("wbstats"))

# Load Package
library(wbstats)
library(tidyverse)

# Mendapat informasi update daftar negara, indikator, dan sumber
cache <- wb_cache()

# Melihat daftar indikator
indikator <- cache$indicator

# Mencari Data berdasarkan kata kunci
list_data <- wb_search("electricity")

# Mendapatkan Data
data <- wb_data(
  indicator = "1.2_ACCESS.ELECTRICITY.RURAL"
)

# Menampilkan Data
data

# Menyimpan Data dengan Format .csv
write_csv(data,
          file = "data/electricity.csv"
)

# Install Packages (Cukup 1 Kali)
install.packages(c("htt", "jsonlite", "tidyverse"))

# Load Packages
library(httr)
library(jsonlite)
library(tidyverse) 
library(readxl)

# Request data
res <- GET("https://webapi.bps.go.id/v1/api/dataexim/",
           query = list(sumber = "1",
                        kodehs = "01", 
                        jenishs = "1", 
                        tahun = "2021", 
                        periode = "1", 
                        key = "98da5d0ebc647133dfd4a27dadbdeb31"))

# Lihat response
res

# Parsing data
data <- fromJSON(rawToChar(res[["content"]]))

# Mendapat daftar data
data_import <- data[["data"]]

# Simpan data dalam format .csv
write_csv(data_import, "data/data-import.csv")

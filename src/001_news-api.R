# Install Packages (Cukup 1 Kali)
install.packages(c("devtools", "tidyverse"))
devtools::install_github("mohrosidi/newsR")

# Load Packages
library(newsR)
library(tidyverse)

# Tentukan Kata Kunci
keyword <- "Pemadaman Listrik"

# Proses Pengumpulan Data Berita
berita <- news_everything(keyword = keyword, 
                          get_all = TRUE, 
                          api_key = "f2b2e3f10bee4668ba146f9bdff912fd")

# Simpan Data Berita
write_csv(berita, "data/berita.csv")

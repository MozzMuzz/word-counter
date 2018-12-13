library(readtext)
library(qdap)

DATA_DIR <- getwd()
rt1 <- readtext(paste0(DATA_DIR, "/textfiles/*"))

string <- trimws(rt1$text)

sapply(gregexpr("[[:alpha:]]+", rt1), function(x) sum(x > 0))
rt1
sapply(strsplit(rt1, " "), length)
word_count(string)
trimws(string)

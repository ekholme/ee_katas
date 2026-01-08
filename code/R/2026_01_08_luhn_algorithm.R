# see here for an explanation of the luhn algorithm: https://en.wikipedia.org/wiki/Luhn_algorithm

num <- 17893729974
y <- num %% 10
x <- num %/% 10

x_str <- as.character(x)

# luhn algo --------
l <- nchar(x_str)
x_split <- unlist(strsplit(x_str, ""))
xrev <- rev(x_split)

multiplier <- (1:l %% 2) + 1

# x reversed back as a number
xrn <- as.numeric(xrev)
xm <- xrn * multiplier

x2 <- (xm %% 10) + (xm %/% 10)
x_sum <- sum(x2)

(10 - (x_sum %% 10)) %% 10 == y

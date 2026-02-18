library(purrr) # for list_transpose() and map_dbl

# generate some sample data
n <- 1e5
x <- runif(n)

sample_percentiles <- function(x, p) {
    l <- length(x)
    xx <- sample(x, l, replace = TRUE)

    quantile(xx, probs = p)
}

bootstrap_percentiles <- function(x, reps = 100, p = c(0.025, 0.5, 0.975)) {
    out <- vector(mode = "list", length = reps)
    for (i in seq_len(reps)) {
        out[[i]] <- sample_percentiles(x, p)
    }

    out_t <- list_transpose(out)

    purrr::map_dbl(
        out_t,
        mean
    )
}

# EE Katas

A repository of katas to practice coding, stats, and other content relevent to me.

## Structure

Any files containing code that should be executed are in `code/{language}`, e.g. any R files will be in `code/R`, etc.

Files containing text responses will be saved as `.md` files inside the `notes_and_concepts/` directory.

Any necessary data or external resources are in `resources/`

### Naming Conventions

File names should be `YYYY_MM_DD_concept.lang_ext`. E.g. `2025_12_16_linear_regression.R` or `2025_12_17_merge_sort.py`

## Running Go Files

The flat file structure defined above is fine, but to run a given Go file, we need to provide the filename to the `go run` command, e.g. `go run 2025_12_16_fibonnaci.go` if we're in the `code/go` directory. This will allow each go file to define a `package main` and `func main()`.

## Content

- **2025-12-17:** [Logistic Regression in Julia](code/julia/2025_12_17_logistic_regression.jl)
- **2025-12-16:** [Fibonacci sequence in Go](code/go/2025_12_16_fibonacci.go).
- **2026-01-08:** [Luhn Algorithm in R](code/R/2026_01_08_luhn_algorithm.R)

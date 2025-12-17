using GLM
using Distributions
using Random

Random.seed!(0408)

# simulate data
n = 1_000
p = 3
X = hcat(ones(n), randn(n, p))

β = [1., 1.5, 2., 2.5]

# generate the linear predictor
z = X * β

#define a sigmoid function
function sigmoid(x)
    return 1 / (1 + exp(-x))
end

# pass the linear predictors through the sigmoid function
probs = sigmoid.(z)

#simulate y by drawing from a bernoulli distribution for each probability in probs
y = Int.(rand.(Bernoulli.(probs)))

# fit the logistic regression model
mod = glm(X, y, Binomial(), LogitLink())
# ============================================
# 03_monte_carlo_simulation.R
# Simulation Monte Carlo
# ============================================

load("data/frequencies.RData")

chi2_stat <- function(counts) {
  expected <- sum(counts) / 4
  sum((counts - expected)^2 / expected)
}

obs_chi2 <- chi2_stat(freq_mito)

# Simulation
set.seed(123)
n_sim <- 10000

sim_chi2 <- replicate(n_sim, {
  random_seq <- sample(c("A","C","G","T"), size = length(mito_M), replace = TRUE)
  chi2_stat(table(random_seq))
})

p_value <- mean(sim_chi2 >= obs_chi2)

cat("Chi² observé :", round(obs_chi2, 2), "\n")
cat("p-value :", p_value, "\n")
# ============================================
# 02_frequency_analysis.R
# Analyse de la composition nucléotidique
# ============================================

load("data/genome_data.RData")

# Fréquences
freq_mito    <- alphabetFrequency(mito_M, baseOnly = TRUE)
freq_nuclear <- alphabetFrequency(nuclear, baseOnly = TRUE)

prop_mito    <- freq_mito / sum(freq_mito)
prop_nuclear <- freq_nuclear / sum(freq_nuclear)

print("Fréquences mtDNA :")
round(prop_mito, 3)

print("Fréquences Nuclear :")
round(prop_nuclear, 3)

save(prop_mito, prop_nuclear, file = "data/frequencies.RData")
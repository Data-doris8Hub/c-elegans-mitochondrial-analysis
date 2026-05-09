# =====================================================
# 02_frequency_analysis.R
# Calcul des fréquences nucléotidiques
# =====================================================

load("data/genome_sequences.RData")

# Fréquences absolues et relatives
freq_mito    <- alphabetFrequency(mito_M, baseOnly = TRUE)
freq_nuclear <- alphabetFrequency(nuclear, baseOnly = TRUE)

prop_mito    <- freq_mito / sum(freq_mito)
prop_nuclear <- freq_nuclear / sum(freq_nuclear)

# Affichage
cat("Fréquences mtDNA :\n")
print(round(prop_mito, 4))

cat("\nFréquences Chromosome I (nucléaire) :\n")
print(round(prop_nuclear, 4))

# Sauvegarde
save(freq_mito, freq_nuclear, prop_mito, prop_nuclear, 
     file = "data/frequencies.RData")

cat("✅ Script 02 terminé : Fréquences calculées\n")

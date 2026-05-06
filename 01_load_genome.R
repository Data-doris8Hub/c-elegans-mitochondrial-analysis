# ============================================
# 01_load_genome.R
# Chargement des packages et des données
# ============================================

library(Biostrings)
library(BSgenome.Celegans.UCSC.ce2)
library(tidyverse)

# Extraction des séquences
mito_M  <- Celegans$chrM
nuclear <- Celegans$chrI

cat("Longueur mtDNA :", length(mito_M), "nucléotides\n")
cat("Longueur chrI  :", length(nuclear), "nucléotides\n")

# Sauvegarde des objets pour les autres scripts
save(mito_M, nuclear, file = "data/genome_data.RData")

print("✅ Étape 1 terminée : Données chargées")
# =====================================================
# 01_load_genome.R
# Chargement des packages et extraction des séquences
# =====================================================

library(Biostrings)
library(BSgenome.Celegans.UCSC.ce2)
library(tidyverse)

# Extraction des séquences
mito_M  <- Celegans$chrM
nuclear <- Celegans$chrI

# Informations sur les longueurs
cat("Longueur du génome mitochondrial (chrM) :", length(mito_M), "nucléotides\n")
cat("Longueur du chromosome I (nucléaire)    :", length(nuclear), "nucléotides\n")

# Sauvegarde des objets pour les scripts suivants
save(mito_M, nuclear, file = "data/genome_sequences.RData")

cat("✅ Script 01 terminé : Données chargées avec succès\n")

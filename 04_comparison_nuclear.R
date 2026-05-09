# =====================================================
# 04_comparison_nuclear.R
# Comparaison mtDNA vs Génome nucléaire
# =====================================================

load("data/frequencies.RData")

# Création du tableau de comparaison
df_compare <- data.frame(
  Nucleotide = c("A", "C", "G", "T"),
  mtDNA      = round(prop_mito[c("A","C","G","T")], 3),
  Nuclear    = round(prop_nuclear[c("A","C","G","T")], 3)
)

df_long <- df_compare %>%
  pivot_longer(cols = c(mtDNA, Nuclear),
               names_to = "Genome",
               values_to = "Proportion")

save(df_compare, df_long, file = "data/comparison_data.RData")

cat("✅ Script 04 terminé : Données de comparaison préparées\n")

# =====================================================
# 05_visualization.R
# Création des visualisations
# =====================================================

load("data/comparison_data.RData")

ggplot(df_long, aes(x = Nucleotide, y = Proportion, fill = Genome)) +
  geom_bar(stat = "identity", position = "dodge", width = 0.7) +
  geom_text(aes(label = paste0(round(Proportion*100, 1), "%")), 
            position = position_dodge(width = 0.7), 
            vjust = -0.4, size = 3.8) +
  scale_fill_manual(values = c("mtDNA" = "orange", "Nuclear" = "brown")) +
  labs(title = "Comparaison de la composition nucléotidique",
       subtitle = "ADN mitochondrial (chrM) vs Génome nucléaire (chrI)",
       y = "Proportion",
       fill = "Type de génome") +
  theme_minimal() +
  theme(plot.title = element_text(face = "bold", size = 14))

# Sauvegarde
ggsave("figures/comparaison_mtDNA_nuclear.png", 
       width = 8, height = 6, dpi = 300)

cat("✅ Script 05 terminé : Graphique sauvegardé dans figures/\n")

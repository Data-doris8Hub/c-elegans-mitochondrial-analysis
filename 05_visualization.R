# ============================================
# 05_visualization.R
# Visualisation
# ============================================

load("data/comparison_data.RData")

ggplot(df_long, aes(x = Nucleotide, y = Proportion, fill = Genome)) +
  geom_bar(stat = "identity", position = "dodge", width = 0.7) +
  geom_text(aes(label = paste0(round(Proportion*100, 1), "%")),
            position = position_dodge(width = 0.7),
            vjust = -0.4, size = 3.5) +
  scale_fill_manual(values = c("mtDNA" = "orange", "Nuclear" = "brown")) +
  labs(title = "Comparaison des fréquences nucléotidiques",
       subtitle = "ADN mitochondrial vs Chromosome I nucléaire de C. elegans",
       y = "Proportion",
       fill = "Type de génome") +
  theme_minimal() +
  theme(plot.title = element_text(face = "bold"))

ggsave("figures/comparaison_mtDNA_nuclear.png", width = 8, height = 6, dpi = 300)
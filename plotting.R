results <- function(flipper_mass_data) {
  flipper_mass_data %>%
    ggplot(data=flipper_mass_data) +
    geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g, color=species, shape = species)) +
    scale_color_manual(values = c("darkorange", "purple", "cyan4")) +
    labs(x = "Flipper Length (mm)",
         y = "Body Mass (g)") +
    geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g)) +
    theme_bw()
} 
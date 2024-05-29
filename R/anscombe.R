library(ggplot2)
library(ggrepel)
anscombe |>
    ggplot(
        aes(
            x = x3,
            y = y3,
            label = rownames(anscombe)
        )
    ) +
    geom_point() +
    geom_smooth(
        formula = y ~ x,
        se = FALSE,
        method = "lm"
    ) +
    geom_text_repel()

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SCP-plot.R
\name{VelocityPlot}
\alias{VelocityPlot}
\title{Velocity Plot}
\usage{
VelocityPlot(
  srt,
  reduction,
  dims = c(1, 2),
  cells = NULL,
  velocity = "stochastic",
  plot_type = c("raw", "grid", "stream"),
  group_by = NULL,
  group_palette = "Paired",
  group_palcolor = NULL,
  n_neighbors = ceiling(ncol(srt)/50),
  density = 1,
  smooth = 0.5,
  scale = 1,
  min_mass = 1,
  cutoff_perc = 5,
  arrow_angle = 20,
  arrow_flank = 0.8,
  arrow_color = "black",
  streamline_L = 5,
  streamline_minL = 1,
  streamline_res = 1,
  streamline_n = 15,
  streamline_jitter = 1,
  streamline_size = c(0, 0.8),
  streamline_alpha = 1,
  streamline_color = NULL,
  streamline_palette = "RdYlBu",
  streamline_palcolor = NULL,
  streamline_bg_color = "white",
  streamline_bg_stroke = 0.5,
  theme_use = "theme_scp",
  aspect.ratio = 1,
  title = "Cell velocity",
  subtitle = NULL,
  xlab = NULL,
  ylab = NULL,
  lab_cex = 1,
  xlen_npc = 0.15,
  ylen_npc = 0.15,
  legend.position = "right",
  legend.direction = "vertical",
  return_layer = FALSE,
  seed = 11
)
}
\arguments{
\item{seed}{}
}
\description{
Velocity Plot
}
\examples{
data("pancreas_sub")
pancreas_sub <- RunSCVELO(srt = pancreas_sub, group_by = "SubCellType", linear_reduction = "PCA", nonlinear_reduction = "UMAP", return_seurat = TRUE)
VelocityPlot(pancreas_sub, reduction = "UMAP")
VelocityPlot(pancreas_sub, reduction = "UMAP", group_by = "SubCellType")
VelocityPlot(pancreas_sub, reduction = "UMAP", plot_type = "grid")
VelocityPlot(pancreas_sub, reduction = "UMAP", plot_type = "stream")
VelocityPlot(pancreas_sub, reduction = "UMAP", plot_type = "stream", streamline_color = "black")
VelocityPlot(pancreas_sub, reduction = "UMAP", plot_type = "stream", streamline_color = "black", arrow_color = "red")
}

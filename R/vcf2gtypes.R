# Write a gtypes object from a VCF file

#' @name vcf2gtypes
#' @title VCF to \code{gtypes} with filters and data imputation

#' @description For full details of the function, please use 
#' \pkg{stackr} \code{\link[stackr]{genomic_converter}}. This function is a shorcut
#' to output only gtypes object.
#' @inheritParams genomic_converter 
#' @inheritParams tidy_genomic_data 
#' @inheritParams write_genepop
#' @inheritParams write_genind 
#' @inheritParams write_genlight 
#' @inheritParams write_structure
#' @inheritParams write_plink
#' @inheritParams write_vcf
#' @inheritParams write_gtypes
#' @inheritParams write_hierfstat
#' @inheritParams stackr_imputations_module 

#' @export
#' @rdname vcf2gtypes
#' @import reshape2
#' @import dplyr

#' @seealso \code{\link[stackr]{genomic_converter}}

#' @references Eric Archer, Paula Adams and Brita Schneiders (2016). 
#' strataG: Summaries and Population Structure Analyses of
#' Genetic Data. R package version 1.0.5. https://CRAN.R-project.org/package=strataG

#' @author Thierry Gosselin \email{thierrygosselin@@icloud.com}

vcf2gtypes <- function(
  data,
  output,
  filename = NULL,
  blacklist.id = NULL,
  blacklist.genotype = NULL,
  whitelist.markers = NULL,
  monomorphic.out = TRUE,
  snp.ld = NULL,
  common.markers = TRUE,
  maf.thresholds = NULL,
  maf.pop.num.threshold = 1,
  maf.approach = "SNP",
  maf.operator = "OR",
  max.marker = NULL,
  strata = NULL,
  pop.levels = NULL,
  pop.labels = NULL,
  pop.select = NULL,
  imputation.method = NULL,
  impute = "genotype",
  imputations.group = "populations",
  num.tree = 100,
  iteration.rf = 10,
  split.number = 100,
  verbose = FALSE,
  parallel.core = detectCores()-1
) {
  
  res <- genomic_converter(
    data,
    output = "gtypes",
    filename = filename,
    blacklist.id = blacklist.id,
    blacklist.genotype = blacklist.genotype,
    whitelist.markers = whitelist.markers,
    monomorphic.out = monomorphic.out,
    snp.ld = snp.ld,
    common.markers = common.markers,
    maf.thresholds = maf.thresholds,
    maf.pop.num.threshold = maf.pop.num.threshold,
    maf.approach = maf.approach,
    maf.operator = maf.operator,
    max.marker = max.marker,
    strata = strata,
    pop.levels = pop.levels,
    pop.labels = pop.labels,
    pop.select = pop.select,
    imputation.method = imputation.method,
    impute = impute,
    imputations.group = imputations.group,
    num.tree = num.tree,
    iteration.rf = iteration.rf,
    split.number = split.number,
    verbose = verbose,
    parallel.core = parallel.core
  )
  return(res)
}

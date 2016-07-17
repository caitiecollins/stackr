# remove NOTE about no visible binding for global variable during R CMD check --
if (getRversion() >= "2.15.1") {
  utils::globalVariables(
    c("ID", "CloneID", "SnpPosition", "CallRate", "AvgCountRef", "AvgCountSnp", 
      "RepAvg", "NOT_USEFUL", "SNP", "CALL_RATE", "AVG_COUNT_REF", 
      "AVG_COUNT_SNP", "REP_AVG", "NEW_ID", "SNP_N", "ALLELE_NAME", "ALLELE_NUMBER",
      "ALLELES_COUNT", "GENOTYPED_PROP", "MISSING_IND_PROP", "AlleleID", "HET_NUMBER",
      "HET_PERCENT", "HET_PROP", "everything", "DP", "AD", "vcf.headers", 
      "GT_VCF", "INDIVIDUALS2", "ALLELE_REF_DEPTH",
      "ALLELE_ALT_DEPTH", "GT_BIN", "GT_HAPLO", "REF_NEW", "REF_ALT_CHANGE", 
      "GT_VCF_A1", "GT_VCF_A2", "MAF", "Allele1", "Allele2", "POP", "IN_GROUP", 
      "OUT_GROUP", "ID.FILTER", "ANCESTRAL", "SEQUENCES", "GARBAGE", "SNP_READ_POS", 
      "FASTA_REF", "BP", "Chr", "Locus", "Locus ID", "Col", "PP", "ALLELE_GROUP",
      "PROBLEM")
  )
}
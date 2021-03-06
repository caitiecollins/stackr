% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/run_sstacks.R
\name{run_sstacks}
\alias{run_sstacks}
\title{Run STACKS sstacks module}
\arguments{
\item{input.path}{Path to input file. 
Default: \code{input.path = "06_ustacks_cstacks_sstacks"}}

\item{p}{Enable parallel execution with num_threads threads. 
Default: \code{p = 4}}

\item{b}{MySQL ID of this batch. 
Default: \code{b = 1}.}

\item{catalog.prefix}{This is for the \code{c} option in
\href{http://catchenlab.life.illinois.edu/stacks/comp/sstacks.php}{sstacks}. 
\code{c: TSV file from which to load the catalog loci.}
Here, you give the prefix of the catalog file and the function take cares of
the rest. 
Default: \code{catalog.prefix = "batch_1"}.}

\item{sample.list}{This is for the \code{s} option in
\href{http://catchenlab.life.illinois.edu/stacks/comp/sstacks.php}{sstacks}. 
\code{s: Filename prefix from which to load sample loci}.
Here, you have 2 choices: 1. you leave empty and let the function use the 
default:\code{sample.list = NULL} which will scan for the files in the 
\code{input.path} folder given above. 2. you supply a character string of the
samples. This could come from the \code{INDIVIDUALS_REP} column of the 
project info file, e.g. \code{sample.list = project.info$INDIVIDUALS_REP}.}

\item{o}{output path to write results.
Default: \code{o = "06_ustacks_cstacks_sstacks"}}

\item{g}{Base matching on genomic location, not sequence identity.
Default: \code{g = FALSE}}

\item{x}{Don't verify haplotype of matching locus.
Default: \code{x = FALSE}}

\item{v}{Print program version.
Default: \code{v = FALSE}}

\item{h}{Display this help messsage.
Default: \code{h = FALSE}}

\item{gapped}{Gapped assembly options: do you want to preform 
gapped alignments between stacks.
Default: \code{gapped = TRUE}}
}
\value{
\href{http://catchenlab.life.illinois.edu/stacks/comp/sstacks.php}{sstacks}
returns a \code{.matches.tsv.gz file for each sample}
}
\description{
Run \href{http://catchenlab.life.illinois.edu/stacks/}{STACKS}
\href{http://catchenlab.life.illinois.edu/stacks/comp/sstacks.php}{sstacks} 
module inside R!
Inside the folder \code{06_ustacks_cstacks_sstacks}, you should have:
\itemize{
  \item \strong{3 Catalog files:} the files created in 
\href{http://catchenlab.life.illinois.edu/stacks/comp/cstacks.php}{cstacks} 
and usually looking like this: 
\code{batch_1.catalog.alleles.tsv.gz, 
batch_1.catalog.snps.tsv.gz, 
batch_1.catalog.tags.tsv.gz}
  \item \strong{4 files for each samples:} The sample name is the prefix of 
  the files ending with:
\code{.alleles.tsv.gz, .models.tsv.gz, .snps.tsv.gz, .tags.tsv.gz}.
Those files are created in the 
\href{http://catchenlab.life.illinois.edu/stacks/comp/ustacks.php}{ustacks}
module.
}
}
\details{
\strong{Computer or server problem during the sstacks ?} 
Just launch again the same command, the function will start again, but only
with the unmatched samples!
}
\examples{
\dontrun{
# The simplest form of the function:
run_sstacks()
# that's it ! Now if you have your own workflow folders, etc. Enter them like this:
run_sstacks (input.path = "/my/input/path", p = 32, b = 2, catalog.prefix = "batch_2", 
sample.list = c("ind1", "ind2", "..."), o = "/my/output/path", g = FALSE,
x = FALSE, gapped = FALSE)
}
}


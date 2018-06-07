
#June 2018
#Retreive ortholog genes 
library(biomaRt)

ensembl <- useMart('ensembl')

ensembl.human <- useMart('ensembl', dataset = 'hsapiens_gene_ensembl')
ensembl.mouse <- useMart('ensembl', dataset = 'mmusculus_gene_ensembl')

# retreive paralog
paralog <-getBM(attributes = c('mmusculus_homolog_associated_gene_name', 'mmusculus_homolog_chromosome'),
                           filters = 'hgnc_symbol', 
                           values = c("E2F1"), 
                           mart=ensembl.human)
paralog

#retreive ortholog
ortholog <- getBM(attributes = c('mmusculus_homolog_associated_gene_name', 'mmusculus_homolog_chromosome'),
      filters = 'hgnc_symbol',
      values = c("E2F3"),
      mart = ensembl.human)

ortholog


# Given the human gene TP53, retrieve the human chromosomal location of this gene and also retrieve the chromosomal location and RefSeq id of its homolog in mouse.

getLDS(attributes = c("hgnc_symbol","chromosome_name", "start_position"),
       filters = "hgnc_symbol", values = "TP53", mart = ensembl.human,
       attributesL = c("refseq_mrna","chromosome_name","start_position"), martL = ensembl.mouse)




get_orthologs <- function (specie1, specie2, gene_name){
  ensembl <- useMart('ensembl')
  ensembl.sp1<- useMart('ensembl', dataset = specie1)
  ensembl.sp2 <- useMart('ensembl', dataset = specie2)
  getLDS(attributes = c("hgnc_symbol","chromosome_name", "start_position"),
         filters = "hgnc_symbol", values = gene_name, mart = ensembl.sp1,
         attributesL = c("refseq_mrna","chromosome_name","start_position"), martL = sensembl.sp2)  
}

get_orthologs(hsapiens_gene_ensembl, mmusculus_gene_ensembl,TP53)


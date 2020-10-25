weijie_509 <- list()
for (i in 1:30) {
  print(i)
  tmp <- readRDS(sprintf("./cache/traceQC_obj/LIBIIMET_%s.rds",i))
  weijie_509[[i]] <- tmp$mutation %>%
    group_by(type,start,length,mutate_to) %>%
    summarise(count=sum(count)) %>%
    ungroup %>%
    mutate(cigar=paste(type,start,length,mutate_to,sep="_"))
}
saveRDS(weijie_509,"./cache/mutation_table/weijie_509.rds")

weijie_510 <- list()
for (i in 31:63) {
  print(i)
  tmp <- readRDS(sprintf("./cache/traceQC_obj/LIBIIMET_%s.rds",i))
  weijie_510[[i]] <- tmp$mutation %>%
    group_by(type,start,length,mutate_to) %>%
    summarise(count=sum(count)) %>%
    ungroup %>%
    mutate(cigar=paste(type,start,length,mutate_to,sep="_"))
}
saveRDS(weijie_510,"./cache/mutation_table/weijie_510.rds")

weijie_121 <- list()
for (i in 1:10) {
  print(i)
  tmp <- readRDS(sprintf("./cache/traceQC_obj/21569_%02d.rds",i))
  weijie_121[[i]] <- tmp$mutation %>%
    group_by(type,start,length,mutate_to) %>%
    summarise(count=sum(count)) %>%
    ungroup %>%
    mutate(cigar=paste(type,start,length,mutate_to,sep="_"))
}
saveRDS(weijie_121,"./cache/mutation_table/weijie_121.rds")

weijie_520 <- list()
for (i in 11:30) {
  print(i)
  f <- sprintf("./cache/traceQC_obj/21569_%s.rds",i)
  if (file.exists(f)) {
    tmp <- readRDS(f)
    weijie_520[[i]] <- tmp$mutation %>%
      group_by(type,start,length,mutate_to) %>%
      summarise(count=sum(count)) %>%
      ungroup %>%
      mutate(cigar=paste(type,start,length,mutate_to,sep="_"))}
}
saveRDS(weijie_520,"./cache/mutation_table/weijie_520.rds")

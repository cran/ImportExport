excel_export <- function(x, file, table_names=as.character(1:length(x)), ...) {
  
  #if(class(x)=="data.frame") x <- list(x)
  if(is.data.frame(x)) x <- list(x)

  names(x) <- table_names
  
  writexl::write_xlsx(x, file)

}

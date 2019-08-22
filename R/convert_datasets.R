convert_datasets <- function(x, column, filename) {
  assertthat::assert_that(column %in% colnames(x),
    msg = "The column defined does not exist in the data.frame provided")

  if(file.exists(filename)) {
    trans_table <- readr::read_csv(filename)
    if (all(is.na(trans_table$broader))) {
      trans_table$broader <- trans_table$xldataset
    }
  } else {
    trans_table <- data.frame(xldataset = unique(x[[column]]),
                                broader = NA,
                              stringsAsFactors = FALSE)
    readr::write_csv(trans_table,
                     filename)

    trans_table$broader <- trans_table$xldataset
    warning("Wrote translation table for the datasets\nAll translations are equivalent to the original.")
  }

  return(trans_table)
}

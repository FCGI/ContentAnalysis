pull_references <- function(pub_sheet, filename = "data/output/publist.csv") {
  if(!file.exists(filename)) {
    out_data <- data.frame(short = unique(pub_sheet$Article),
                                bibrf = NA)
    readr::write_csv(outdata,
                     filename)
  } else {
    out_data <- readr::read_csv(filename)
  }

  return(out_data)

}

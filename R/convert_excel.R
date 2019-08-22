convert_excel <- function(filename,
                          sheets) {

  assertthat::assert_that(file.exists(filename),
                          msg = "No file with the defined filename exists.")

  xlsheets <-  readxl::excel_sheets(filename)
  sheetnames <- sheets %>%
    map(function(x) { x$sheet } ) %>%
    unlist()

  assertthat::assert_that(all(sheetnames %in% xlsheets),
                          msg = "The sheets are not present in the current Excel file.")

  data_sheets <- sheets %>% map(function(x) {
    if ("range" %in% names(x)) {
      file <- readxl::read_excel(filename, sheet = x$sheet, range = x$range)
    } else {
      file <- readxl::read_excel(filename, sheet = x$sheet)
    }
    return(file)
  })


}

#' Generate grouping function call
#'
#' @param plate_name
#' @param channel_n
#' @param path_base
#' @param group_tag
#'
#' @return
#' @export
#'
#' @examples
generate_group <- function(plate_name, channel_n, path_base, group_tag="all", group_template_file="group_template.txt"){

  # expanding combinations
  df <- expand.grid(plate_name, channel_n) %>%
    as_tibble() %>%
    magrittr::set_colnames(c("plate_name", "channel_n"))

  path = paste0(path_base, plate_name, "_", group_tag,  "_create_group.sh")
  fileConn<-file(path, "w")

  # creating bash script
  c("#!/bin/sh",
    'pip install --user pandas', #ugly way of managing the dependency of the cellprofiler function
    paste("python",
      "~/dcp_helper/python/ManualMetadata_dir.py",
      path_base,
      read_lines(group_template_file),
      df$channel_n)
  ) %>%
    write_lines(fileConn)

  close(fileConn)

  #run system command to make it executable
  system(paste0("chmod +x ", path))

  return(path)
}

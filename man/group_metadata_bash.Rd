% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/group_metadata_bash.R
\name{group_metadata_bash}
\alias{group_metadata_bash}
\title{Creating a shell script that used the Distributed Cell Profiler script ManualMetadata.py to create groupings}
\usage{
group_metadata_bash(metadata_split_path, path_base,
  python_function = "python ~/bucket/metadata/ManualMetadata_dir.py ",
  metadata_grouping = "['Metadata_parent','Metadata_timepoint', 'Metadata_well', 'Metadata_fld', 'Metadata_channel']")
}
\arguments{
\item{metadata_split_path}{}
}
\description{
Creating a shell script that used the Distributed Cell Profiler script ManualMetadata.py to create groupings
}

#!/bin/sh
pip install --user pandas
python ~/dcp_helper/python/ManualMetadata_dir.py ~/dcp_helper/metadata/000012094903__2019-08-27T21_12_28-Measurement_1/ "['Metadata_parent','Metadata_timepoint', 'Metadata_well', 'Metadata_fld', 'Metadata_channel']" pc
python ~/dcp_helper/python/ManualMetadata_dir.py ~/dcp_helper/metadata/000012094903__2019-08-27T21_12_28-Measurement_1/ "['Metadata_parent','Metadata_timepoint', 'Metadata_well', 'Metadata_fld', 'Metadata_channel']" bf
python ~/dcp_helper/python/ManualMetadata_dir.py ~/dcp_helper/metadata/000012094903__2019-08-27T21_12_28-Measurement_1/ "['Metadata_parent','Metadata_timepoint', 'Metadata_well', 'Metadata_fld', 'Metadata_channel']" ce
python ~/dcp_helper/python/ManualMetadata_dir.py ~/dcp_helper/metadata/000012094903__2019-08-27T21_12_28-Measurement_1/ "['Metadata_parent','Metadata_timepoint', 'Metadata_well', 'Metadata_fld', 'Metadata_channel']" tm

# bqget

 =============================================================================
 bqget: downloads a bigquery TABLE to local directory.
 Uses bq to download to GCS, then GCS to download to disk. This allows to use
 compression and gsutil's multithreading and slicing for faster downloads.

 Usage: bqget DATASET TABLE [FORMAT]

 Arguments:
 - DATASET: name of the bq dataset containing the TABLE. Mandatory, positional
 - TABLE: name of the bq table to download. Mandatory, positional
 - FORMAT: of the exported file. CSV, NEWLINE_DELIMITED_JSON, or AVRO. Also
 determines the compression format to be used in the transfer:
     CSV,NEWLY_DELIMITED_JSON use GZIP
     AVRO uses SNAPPY

 Author: Fernando Sanchez <fernandosanchezmunoz@gmail.com>

 Version: 0.3
=============================================================================


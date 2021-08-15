source('PathFileName.r', encoding = 'UTF-8')

## Step 1-1: Backup the Previous Infile
if (file.exists(Infile)) {
  # file.rename(Infile, Infile_Backup)  # Note: file.rename() will remove the original file
  file.copy(Infile, Infile_Backup)
  # move_files(, , overwrite = TRUE)
}

## Step 1-2: Create the New Input File
DF <- iris
write.csv(DF, file = Infile, row.names = FALSE)
rm(DF)


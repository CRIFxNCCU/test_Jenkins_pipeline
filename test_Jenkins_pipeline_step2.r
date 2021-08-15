source('PathFileName.r', encoding = 'UTF-8')

## Step 2-1: Backup the Previous Outfile
if (file.exists(Outfile)) {
  # file.rename(Outfile, Outfile_Backup)  # Note: file.rename() will remove the original file
  file.copy(Outfile, Outfile_Backup)
  # move_files(, , overwrite = TRUE)
}

## Step 2-2: Execute the New Computing to Generate the New Outfile
DF <- read.csv(Infile)
DF1 <- data.frame(summary(DF))
write.csv(DF1, file = Outfile, row.names = FALSE)
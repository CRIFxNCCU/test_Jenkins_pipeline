## Testing the Jenkins Pipeline
###  https://stackoverflow.com/questions/4216753/check-existence-of-directory-and-create-if-doesnt-exist

## Including the Libraries
if (!require(lubridate)) install.packages('lubridate')
library(lubridate)
# if (!require(filesstrings)) install.packages('filesstrings')
# library(filesstrings)

## Creating the Folders
## Folder Structure
### ./Data
###    - Input
###       - Backup
###    - Output
###       - Backup

# dir.create(file.path(Dir_Main, Dir_Sub), showWarnings = FALSE)

Path_Data               <- 'Data'
Path_Data_Input         <- 'Data/Input/'
Path_Data_Input_Backup  <- 'Data/Input/Backup/'
Path_Data_output        <- 'Data/Output/'
Path_Data_Output_Backup <- 'Data/Output/Backup/'

dir.create(Path_Data,               showWarnings = FALSE)
dir.create(Path_Data_Input,         showWarnings = FALSE)
dir.create(Path_Data_Input_Backup,  showWarnings = FALSE)
dir.create(Path_Data_output,        showWarnings = FALSE)
dir.create(Path_Data_Output_Backup, showWarnings = FALSE)

Infile  <- paste0(Path_Data_Input, 'Input.csv')
Outfile <- paste0(Path_Data_output, 'Output.csv')

## Backup the Input and Output Files From Base Folder to Backup Folder
Now <- paste(format(lubridate::now(tzone = 'Asia/Taipei'), '%Y%m%d_%H%M%S'))
Infile_Backup  <- paste0(Path_Data_Input_Backup , 'Infile_' , Now, '.csv')
Outfile_Backup <- paste0(Path_Data_Output_Backup, 'Outfile_', Now, '.csv')

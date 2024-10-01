param (
    [string]$directory,
    [string]$fileNameFragment
)

# Use Get-ChildItem to find files with the specified fragment in the name
$files = Get-ChildItem -Path $directory -Recurse -Filter "*$fileNameFragment*"

# Count the number of files found
$fileCount = $files.Count

# Output the count
Write-Output "Number of files with '$fileNameFragment' in the name: $fileCount"

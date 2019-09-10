# AzureArchiveBlobs
**A PowerShell tool used to set all eligible blobs (Block) a specified storage account to 'Archive'
reducing storage costs to approximately 1/10th the price of Hot blobs. Do note that while the cost of 'Archive' storage is significantly reduced, the cost to enumerate/retrieve is significantly higher. Also, when blobs are descripted as "Archive", early deletion fees apply. Please do your own research and cost analysis prior to leverage this tool. More information regarding Azure Blob pricing can be found here: https://azure.microsoft.com/en-us/pricing/details/storage/

## Getting started

This was developed and tested in PowerShell 5.1 on Windows Server 2016. There is no installation necessary aside from having a relevant version of PowerShell installed.

### To get started:

NOTE: This is not parameterized and requires manual editing for the time being.

1. Download the Set-BlobArchiveTier.ps1 file
2. Edit the file to accommodate your variable
   * Storage Account Name
   * Storage Account Key
   * Storage Account Container Name
3. Once the file is saved, run the PowerShell script
4. Confirm the objects in scope were appropriately descripted as "Archive"
   * This can be done from within the Azure Portal, Azure Storage Explorer, or of course within az cli or Azure PowerShell

** There is no output when running this PowerShell

## Features

* As described above, this simply marks all blobs in the specified scope as "Archive", reducing the storage costs associated with the storage account.

#### There are currently no arguments for this PowerShell. Modify the file and run it accordingly.
#####   .\Set-BlobArchiveTier.ps1

## Contributing

This tool is simple but is not without its shortcomings; all contributions are welcomed.

Aside from working on the random **TODO:** I would like to see customization of the inputs. For example, specifying which tier, promoting blobs back to Hot or Cool, etc.

I welcome and encourage all feedback and contributions!


## Links

- Project homepage: https://github.com/Kentix/AzureArchiveBlobs
- Repository: https://github.com/Kentix/AzureArchiveBlobs
- Issue tracker: https://github.com/Kentix/AzureArchiveBlobs/issues

## License

The code in this project is licensed under the MIT license.
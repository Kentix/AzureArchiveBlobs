#TODO: Parameterize these things
#Storage Account Name
$StgAcc = "ENTER-STORAGE-ACCOUNT-NAME-HERE"
#Storage account Key
$StgKey = "ENTER-STORAGE-ACCOUNT-KEY-HERE"
#Container name within the specified storage account
$Container = "ENTER-BLOB-CONTAINER-NAME-HERE"
#Storage Context, combines all of the above into a single "Storage" object
$ctx = New-AzureStorageContext -StorageAccountName $StgAcc -StorageAccountKey $StgKey

#Get all the blobs in container specified
$blob = Get-AzureStorageBlob -Container $Container -Context $ctx


#Trim the list of blobs to only include block blobs as you are unable to set a tier on PageBlobs, for example
$allblockblobs = $blob | Where-Object {$_.BlobType -like "Block*"}


#For every block blob in scope, set the blob tier to "Archive"
Foreach($singleblob in $allblockblobs){
    #Set tier of all blobs to desired tier
    $singleblob.icloudblob.SetStandardBlobTier("Archive")
    }

#TODO:Produce logging output
FileLoad
========

Simple file load for iOS coded in Swift.

    // Load data
    FileLoad.loadDataFromDocumentsDirectory("YourFile.extension", subdirectory:"YourSubDirectory")
    FileLoad.loadDataFromLibraryDirectory("YourFile.extension", subdirectory:"YourSubDirectory")
    FileLoad.loadDataFromTemporaryDirectory("YourFile.extension", subdirectory:"YourSubDirectory")
    FileLoad.loadDataFromCachesDirectory("YourFile.extension", subdirectory:"YourSubDirectory")
    FileLoad.loadDataFromApplicationSupportDirectory("YourFile.extension", subdirectory:"YourSubDirectory")
    
    // Load strings
    FileLoad.loadStringFromDocumentsDirectory("YourFile.extension", subdirectory:"YourSubDirectory")
    FileLoad.loadStringFromLibraryDirectory("YourFile.extension", subdirectory:"YourSubDirectory")
    FileLoad.loadStringFromTemporaryDirectory("YourFile.extension", subdirectory:"YourSubDirectory")
    FileLoad.loadStringFromCachesDirectory("YourFile.extension", subdirectory:"YourSubDirectory")
    FileLoad.loadStringFromApplicationSupportDirectory("YourFile.extension", subdirectory:"YourSubDirectory")
  
See also [FileLoad](https://github.com/sketchytech/FileSave) and [FileDelete](https://github.com/sketchytech/FileDelete)

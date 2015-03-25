FileLoad
========

Simple file load for iOS coded in Swift 1.2 (Xcode 6.3 Beta 4).

    // Load data
    FileLoad.loadData(path:String, directory:NSSearchPathDirectory, subdirectory:String?) -> NSData?
    FileLoad.loadDataFromTemporaryDirectory(path:String, subdirectory:String?) -> NSData?
    
    // Load strings
    FileLoad.loadString(path:String, directory:NSSearchPathDirectory, subdirectory:String?, encoding enc:NSStringEncoding = NSUTF8StringEncoding) -> String?
    FileLoad.loadStringFromTemporaryDirectory(path:String, subdirectory:String?, encoding enc:NSStringEncoding = NSUTF8StringEncoding) -> String?

See also [FileSave](https://github.com/sketchytech/FileSave) and [FileDelete](https://github.com/sketchytech/FileDelete)

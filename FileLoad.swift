//
//  FileLoad.swift
//
//  Created by Anthony Levings on 25/06/2014.
//  Copyright (c) 2014 Gylphi. All rights reserved.
//

import Foundation

class FileLoad {
    
    class func loadDataFromDocumentsDirectory(path:String, subdirectory:String?) -> NSData
    {
        // Remove unnecessary slash if need
        var newPath = self.stripSlashIfNeeded(path)
        var newSubdirectory:String?
        if subdirectory {
            newSubdirectory = self.stripSlashIfNeeded(subdirectory!)
        }
        // Create generic beginning to file save path
        var loadPath = self.applicationDocumentsDirectory().path+"/"
        
        if newSubdirectory {
            loadPath += newSubdirectory!
            self.createSubDirectory(loadPath)
            loadPath += "/"
        }
        
        // Add requested save path
        loadPath += newPath
        
        println(loadPath)
        // Save the file and see if it was successful
        var data:NSData = NSFileManager.defaultManager().contentsAtPath(loadPath)
        
        // Return status of file save
        return data
        
    }
    
    
    class func loadDataFromLibraryDirectory(path:String, subdirectory:String?) -> NSData
    {
        
        // Remove unnecessary slash if need
        var newPath = self.stripSlashIfNeeded(path)
        var newSubdirectory:String?
        if subdirectory {
            newSubdirectory = self.stripSlashIfNeeded(subdirectory!)
        }
        
        // Create generic beginning to file save path
        var loadPath = self.applicationLibraryDirectory().path+"/"
        
        if newSubdirectory {
            loadPath += newSubdirectory!
            self.createSubDirectory(loadPath)
            loadPath += "/"
        }
        
        // Add requested save path
        loadPath += newPath
        
        println(loadPath)
        // Save the file and see if it was successful
        var data:NSData = NSFileManager.defaultManager().contentsAtPath(loadPath)
        
        // Return status of file save
        return data
    }
    
    class func loadDataFromTemporaryDirectory(path:String, subdirectory:String?) -> NSData
    {
        
        // Remove unnecessary slash if need
        var newPath = self.stripSlashIfNeeded(path)
        var newSubdirectory:String?
        if subdirectory {
            newSubdirectory = self.stripSlashIfNeeded(subdirectory!)
        }
        
        // Create generic beginning to file save path
        var loadPath = self.applicationTemporaryDirectory().path+"/"
        
        if newSubdirectory {
            loadPath += newSubdirectory!
            self.createSubDirectory(loadPath)
            loadPath += "/"
        }
        
        // Add requested save path
        loadPath += newPath
        
        println(loadPath)
        // Save the file and see if it was successful
        var data:NSData = NSFileManager.defaultManager().contentsAtPath(loadPath)
        
        // Return status of file save
        return data
    }
    
    class func loadDataFromCachesDirectory(path:String, subdirectory:String?) -> NSData
    {
        
        
        // Remove unnecessary slash if need
        var newPath = self.stripSlashIfNeeded(path)
        var newSubdirectory:String?
        if subdirectory {
            newSubdirectory = self.stripSlashIfNeeded(subdirectory!)
        }
        
        // Create generic beginning to file save path
        var loadPath = self.applicationCachesDirectory().path+"/"
        
        if newSubdirectory {
            loadPath += newSubdirectory!
            self.createSubDirectory(loadPath)
            loadPath += "/"
        }
        
        // Add requested save path
        loadPath += newPath
        
        println(loadPath)
        // Save the file and see if it was successful
        var data:NSData = NSFileManager.defaultManager().contentsAtPath(loadPath)
        
        // Return status of file save
        return data
    }
    
    class func loadDataFromApplicationSupportDirectory(path:String, subdirectory:String?) -> NSData
    {
        
        // Remove unnecessary slash if need
        var newPath = self.stripSlashIfNeeded(path)
        var newSubdirectory:String?
        if subdirectory {
            newSubdirectory = self.stripSlashIfNeeded(subdirectory!)
        }
        
        // Create generic beginning to file save path
        var loadPath = self.applicationSupportDirectory().path+"/"
        
        if newSubdirectory {
            loadPath += newSubdirectory!
            self.createSubDirectory(loadPath)
            loadPath += "/"
        }
        
        // Add requested save path
        loadPath += newPath
        
        println(loadPath)
        // Save the file and see if it was successful
        var data:NSData = NSFileManager.defaultManager().contentsAtPath(loadPath)
        
        // Return status of file save
        return data
    }
    
    // string methods
    
    class func loadStringFromDocumentsDirectory(path:String, subdirectory:String?) -> String
    {
        // Remove unnecessary slash if need
        var newPath = self.stripSlashIfNeeded(path)
        var newSubdirectory:String?
        if subdirectory {
            newSubdirectory = self.stripSlashIfNeeded(subdirectory!)
        }
        // Create generic beginning to file save path
        var loadPath = self.applicationDocumentsDirectory().path+"/"
        
        if newSubdirectory {
            loadPath += newSubdirectory!
            self.createSubDirectory(loadPath)
            loadPath += "/"
        }
        
        // Add requested save path
        loadPath += newPath
        var error:NSError?
        println(loadPath)
        // Save the file and see if it was successful
        var text:String? = String.stringWithContentsOfFile(loadPath, encoding:NSUTF8StringEncoding, error: &error)
        
        // Return status of file save
        if !text {
            text = ""
        }
        return text!
        
    }

    class func loadStringFromLibraryDirectory(path:String, subdirectory:String) -> String {
        
        var newPath = self.stripSlashIfNeeded(path)
        var newSubdirectory:String? = self.stripSlashIfNeeded(subdirectory)
        
        // Create generic beginning to file save path
        var loadPath = self.applicationLibraryDirectory().path+"/"
        
        if newSubdirectory {
            loadPath += newSubdirectory!
            self.createSubDirectory(loadPath)
            loadPath += "/"
        }
        
        // Add requested save path
        loadPath += newPath
        var error:NSError?
        println(loadPath)
        // Save the file and see if it was successful
        var text:String? = String.stringWithContentsOfFile(loadPath, encoding:NSUTF8StringEncoding, error: &error)
        
        // Return status of file save
        if !text {
            text = ""
        }
        return text!
    }
    class func loadStringFromTemporaryDirectory(path:String, subdirectory:String) -> String {
        
        var newPath = self.stripSlashIfNeeded(path)
        var newSubdirectory:String? = self.stripSlashIfNeeded(subdirectory)
        
        // Create generic beginning to file save path
        var loadPath = self.applicationTemporaryDirectory().path+"/"
        
        if newSubdirectory {
            loadPath += newSubdirectory!
            self.createSubDirectory(loadPath)
            loadPath += "/"
        }
        
        // Add requested save path
        loadPath += newPath
        var error:NSError?
        println(loadPath)
        // Save the file and see if it was successful
        var text:String? = String.stringWithContentsOfFile(loadPath, encoding:NSUTF8StringEncoding, error: &error)
        
        // Return status of file save
        if !text {
            text = ""
        }
        return text!
        
    }
    
    class func loadStringFromCachesDirectory(path:String, subdirectory:String) -> String {
        
        var newPath = self.stripSlashIfNeeded(path)
        var newSubdirectory:String? = self.stripSlashIfNeeded(subdirectory)
        
        // Create generic beginning to file save path
        var loadPath = self.applicationCachesDirectory().path+"/"
        
        if newSubdirectory {
            loadPath += newSubdirectory!
            self.createSubDirectory(loadPath)
            loadPath += "/"
        }
        
        // Add requested save path
        loadPath += newPath
        var error:NSError?
        println(loadPath)
        // Save the file and see if it was successful
        var text:String? = String.stringWithContentsOfFile(loadPath, encoding:NSUTF8StringEncoding, error: &error)
        
        // Return status of file save
        if !text {
            text = ""
        }
        return text!
    }
    
    
    class func loadStringFromApplicationSupportDirectory(path:String, subdirectory:String) -> String {
        
        var newPath = self.stripSlashIfNeeded(path)
        var newSubdirectory:String? = self.stripSlashIfNeeded(subdirectory)
        
        // Create generic beginning to file save path
        var loadPath = self.applicationSupportDirectory().path+"/"
        
        if newSubdirectory {
            loadPath += newSubdirectory!
            self.createSubDirectory(loadPath)
            loadPath += "/"
        }
        
        // Add requested save path
        loadPath += newPath
        var error:NSError?
        println(loadPath)
        // Save the file and see if it was successful
        var text:String? = String.stringWithContentsOfFile(loadPath, encoding:NSUTF8StringEncoding, error: &error)
        
        // Return status of file save
        if !text {
            text = ""
        }
        return text!
    }
    
    
    
    // private methods
    
    //directories
    
    class func applicationDocumentsDirectory() -> NSURL {
        
        var documentsDirectory:String?
        var paths:AnyObject[] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true);
        if paths.count > 0 {
            if let pathString = paths[0] as? NSString {
                documentsDirectory = pathString
            }
        }
        
        return NSURL.URLWithString(documentsDirectory)
    }
    
    class func applicationLibraryDirectory() -> NSURL {
        var libraryDirectory:String?
        var paths:AnyObject[] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.LibraryDirectory, NSSearchPathDomainMask.UserDomainMask, true);
        if paths.count > 0 {
            if let pathString = paths[0] as? NSString {
                libraryDirectory = pathString
            }
        }
        return NSURL.URLWithString(libraryDirectory)
    }
    
    class func applicationSupportDirectory() -> NSURL {
        var applicationSupportDirectory:String?
        var paths:AnyObject[] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.ApplicationSupportDirectory, NSSearchPathDomainMask.UserDomainMask, true);
        if paths.count > 0 {
            if let pathString = paths[0] as? NSString {
                applicationSupportDirectory = pathString
            }
        }
        return NSURL.URLWithString(applicationSupportDirectory)
    }
    
    
    
    
    
    class func applicationTemporaryDirectory() -> NSURL {
        
        var temporaryDirectory:String? = NSTemporaryDirectory();
        
        return NSURL.URLWithString(temporaryDirectory)
        
    }
    class func applicationCachesDirectory() -> NSURL {
        
        var cachesDirectory:String?
        
        var paths = NSSearchPathForDirectoriesInDomains(.ApplicationSupportDirectory,.UserDomainMask, true);
        
        if paths.count > 0 {
            if let pathString = paths[0] as? NSString {
                cachesDirectory = pathString
            }
        }
        return NSURL.URLWithString(cachesDirectory);
    }
    //pragma mark - strip slashes
    
    class func stripSlashIfNeeded(stringWithPossibleSlash:String) -> String {
        var stringWithoutSlash:String = stringWithPossibleSlash
        // If the file name contains a slash at the beginning then we remove so that we don't end up with two
        if stringWithPossibleSlash.hasPrefix("/") {
            stringWithoutSlash = stringWithPossibleSlash.substringFromIndex(1)
        }
        // Return the string with no slash at the beginning
        return stringWithoutSlash
    }
    
    class func createSubDirectory(subdirectoryPath:NSString) -> Bool {
        var error:NSError?
        var isDir:ObjCBool=false;
        var exists:Bool = NSFileManager.defaultManager().fileExistsAtPath(subdirectoryPath, isDirectory:&isDir)
        if (exists) {
            /* a file of the same name exists, we don't care about this so won't do anything */
            if isDir==true {
                /* subdirectory already exists, don't create it again */
                return true;
            }
        }
        var success:Bool = NSFileManager.defaultManager().createDirectoryAtPath(subdirectoryPath, withIntermediateDirectories:true, attributes:nil, error:&error)
        
        if error { println(error) }
        
        return success;
    }
}

# CocoaPods

### CocoaPods is a dependency manager for Swift and Objective-C Cocoa projects. CocoaPods can help you scale your projects elegantly. 
###A dependency manager makes it easy to add, remove, update and manage third-party dependencies used by your app.
--

# CocoaPods Tutorial
###In this tutorial, you’ll learn how to use CocoaPods with Swift.

## Install CocoaPods
You first need to install CocoaPods.  

Open Terminal and enter the following command:  

```ruby
sudo gem install cocoapods
```  
Enter your password when requested.

Enter this command in Terminal to complete the setup:

```ruby
pod setup --verbose
```
This process will likely take a few minutes as it clones the **CocoaPods Master Specs repository** into ~/.cocoapods/ on your computer.

## Installing Your First Dependency
You first need to close Xcode.

Open Terminal and navigate to the directory that contains your IceCreamShop project by using the cd command:

```ruby
cd ~/Path/To/Folder/Containing/IceCreamShop
```
Next, enter the following command:

```ruby
pod init
```
This creates a Podfile for your project.

Finally, type the following command to open the Podfile using Xcode for editing:

```ruby
open -a Xcode Podfile
```
```ruby
Note: 
You shouldn’t use TextEdit to edit the Podfile because it replaces standard quotes with more graphically appealing typeset quotes. This can cause CocoaPods to become confused and throw errors, so it’s best to use Xcode or another programming text editor to edit your Podfile.
```
The default Podfile looks like this:

```ruby
\# Uncomment the next line to define a global platform for your project  
\# platform :ios, '9.0'
target 'DemoProject' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
  # Pods for DemoProject
end
```
Delete the # and space before platform, and delete the other lines starting with #.

Your Podfile should now look like this:

```ruby
platform :ios, '9.0'
target 'IceCreamShop' do
  use_frameworks!
end
```
This tells CocoaPods your project is targeting iOS 9.0 and will be using frameworks instead of static libraries.

In order to use CocoaPods written in Swift, you must explicitly include **use_frameworks!** to opt into using frameworks. If you forget to include this, and CocoaPods detects you’re trying to use a Swift CocoaPod, you’ll get an error when you try to install the pods.

Add the following to your Podfile, right after use_frameworks!:

```
pod 'Alamofire', '4.4.0'
```
This tells CocoaPods you want to include Alamofire version 4.4.0 – the latest, stable version at the time of writing this tutorial – as a dependency for your project.

```
Save and close the Podfile.
```
You now need to tell CocoaPods to install the dependencies for your project. Enter the following command in Terminal, after ensuring you’re still in the directory containing the DemoProject and Podfile:

```
pod install
```
You should see output similar to the following:

```
Analyzing dependencies
Downloading dependencies
Installing Alamofire (4.4.0)
Generating Pods project
Integrating client project
```

[!] Please close any current Xcode sessions and use `DemoProject.xcworkspace` for this project from now on.  
Open the project folder using Finder, and you’ll see CocoaPods created a new DemoProject.xcworkspace file and a Pods folder in which to store all the project’s dependencies.

```
Note: From now on, as the command-line warning mentioned, you must always open the project with the .xcworkspace file and not the .xcodeproj, otherwise you’ll encounter build errors.
```
Excellent! You’ve just added your first dependency using CocoaPods!

### [Read More](https://www.raywenderlich.com/156971/cocoapods-tutorial-swift-getting-started)
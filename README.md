# iOS Stopwatch In-Class Lab

## Basic Instructions

Clone this repository and open the project in Xcode.  Once you have done that, follow the instructions in the code to fill out the functionality of this stopwatch app.

## Edit the Bundle Identifier

You may have issues signing the the project or problems with the provisioning profile.  The easiest thing to do is to edit your Bundle Identifier on the project information page under Settings (click on the root of your project in the left project explorer - the blue icon at the top).  Just add a dot and your computing ID to the end, so it looks like `edu.yourschool.Stopwatch.compid` and it should work.

## Steps to Follow

1. You should start by reading through the HomeViewController code, paying close attention to the comments. Then you should take a look at the Main.storyboard file.
2. Get the stopwatch working in HomeViewController (Checkpoint 1)
3. You will need to create a new View Controller called AddTimeViewController. (Checkpoint 2)
3. Connect the two scenes together, following the instructions below. (Checkpoint 3)
5. Build out the AddTimeViewController (Checkpoint 4)
6. Code snippits are provided below for particular functionality to minimize Googling.

## Get the stopwatch working (Checkpoint 1)

1. Hook up the IBOutlet for the 'elapsedTimeLabel' of the 'HomeViewController' 
	- one way to do this is by right-clicking on the little yellow circle at the top of the home view controller in the Storyboard, and then dragging the open circle next to the elapsedTimeLabel outlet in the 'Outlets' section of the drop down over to the physical label
2. Hook up the IBActions for starting and stopping the timer to the 'Start' and 'Stop' buttons.
	- again, one way to do this is to click on the little yellow circle at the top of the home view controller in the Storyboard, and then dragging the open circle next to the appropriate function signatures in the 'Recieved Actions' section of the dropdown over to the corresponding physical button
3. You should be able to get the stopwatch functionality working in the 'HomeViewController' by adding the provided code to the appropriate functions in 'HomeViewController'

CHECK: At this point, you should be able to run the app and the stopwatch functionality should work. (The label updates as time passes and start/stop buttons work as expected.)

## Creating a new View Controller (Checkpoint 2)

1. Right click on the Stopwatch folder
2. Choose New File... -> Cocoa Touch Class
3. Give it the name AddTimeViewController
4. Make it a subclass of UIViewController
5. Once the file is created, go to the Storyboard and add this AddTimeViewController by dragging in a new view controller from the 'Object Library' (lower right panel, third icon which is round).
6. Then select this new view controller (by clicking the little yellow circle on the top) and change its class to AddTimeViewController in the identity inspector (top right panel, id card icon).
7. Next, embed this 'AddTimeViewController' in a navigation controller by selecting it in the Storyboard (again, by clicking the little yellow circle on the top), then clicking 'Editor' in the top menu bar > Embed In > Navigation Controller.

## Connecting the Two Scenes Together (Checkpoint 3)

1. Now we wish to launch our AddTimeViewController in response to a button click in the HomeViewController. In the Storyboard, drag a bar button item from the Object Library onto the top right corner of the navigation bar in the HomeViewController that was created for you. 
2. Initially, the bar button item will be a simple button that says 'item'. Cick on it, and in the Attribute Inspector (top-right panel), select 'Add' from the System Item dropdown. The button should change to a plus.
3. Finally, control-drag from the bar button item to the navigation controller enclosing your AddTimeViewController, and select 'present modally' from the drop down box that appears.

CHECK: At this point, you should be able to run the app, and clicking the '+' button should launch the 'AddTimeViewController'

## Build out the AddTimeViewController (Checkpoint 4)

Finally, it's up to you to build out the 'AddTimeViewController' to exhibit the following functionality:

1. It should have a label in the middle that it prepopulated with the current value of the elapsedTimeLabel in the 'HomeViewController' when the 'AddTimeViewController is launched' (note: this label's value will be static, it won't update like the elapsedTimeLabel)
2. It should have a 'cancel' bar button item in top left that dismisses the 'AddTimeViewController'.
3. It should have a 'save' button somewhere, which, when pressed, presents an alert saying that you just 'fake' saved the time. In the alert message, you should mention the value in the label.
4. To pass the time from the 'HomeViewController' to the 'AddTimeViewController', you will need to edit the code found in the 'prepare()' function in 'HomeViewController'.  Here, uncomment the line that creates the 'targetController'.  In the 'AddTimeViewController', add a field called 'elapsedTime' as a 'String' with an initial blank value.  Back in the 'prepare()' function, add a line of code that will set the 'elapsedTime' value in the 'targetController' with the value of the time label in the 'HomeViewController'.  In 'onViewDidLoad()' in the 'AddTimeViewController', you can now set the label text based on the value of 'elapsedTime'.

## Submit

When the lab is over, zip up your project directory and upload whatever you have finished to the assignment submission in Collab.  If you worked with someone, both of you should up load the same zip file and just mention the other person (and computing ID) in the submission comments.

## Code Snippits

__Code that will start the stopwatch:__

```swift
print("Starting stopwatch...")
Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(HomeViewController.updateElapsedTimeLabel(_:)), userInfo: nil, repeats: true)
stopwatch.start()
```

__Code to stop the stopwatch:__
```swift
print(stopwatch.elapsedTime)
stopwatch.stop()
```

__Code to dismiss the AddTimeViewController screen when you press cancel:__
```swift
dismiss(animated: true, completion: nil)
```

__Code to show a popup when you "save" the time on the AddTimeViewController:__
```swift
let alertController = UIAlertController(title: "Time Saved!", message: "You just fake saved the time " + timeLabel.text! + "!", preferredStyle: .alert)
        
let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
alertController.addAction(defaultAction)
        
present(alertController, animated: true, completion: nil)
```



### License

This work is licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-nc-sa/4.0/), by Yong Bakos.

Adapted from https://swifteducation.github.io/teaching_app_development_with_swift/stopwatch.html

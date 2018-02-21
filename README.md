# Android Mini-App Project

## Justin Barry (jbb2fe) & Robert Fox (rjf6tp)

## Device used: iPhone 7 Simulator

## Project Title: Bucket List Items Checklist

Our app functions in accordance with the specifications described in the project description. The first activity that the user is directed to is the HomeTableViewController, where they can view a preloaded list of bucket list items sorted by date. From here, users can add items to their list with the “plus” button on the top navigation bar, edit their list items by swiping right on an item and selecting “edit”, and check items as completed by selecting “done”. Both the AddItemViewController and EditItemViewController contain fields to enter a name, description, latitude, longitude, and due date for a bucket list item, and can be added to the list displayed back on the main activity. However, when a user clicks an item to edit it, the next activity comes preset with the fields that were previously entered for that item. Users can return to the previous screen by tapping the cancel button in the top menu bar.

Throughout working on the app, one of the most important things we learned about was data persistence across different activities. We did much exploring into passing data when segues are triggered, and implemented various targetController fields in order to fields from activity to activity. We required this when sending data from the and and edit controllers to the main, as well as sending from the main to the edit controller. We also spent significant time figuring out the easiest way to sort our cells by both due date and whether or not the activity is completed. It required a slightly different method than we had in Java using the compareTo function for Android. Overall, the largest structural lessons about Swift development that we learned dealt with how activities can trigger and interact with each other, and how different data is shared across an entire application using segues.


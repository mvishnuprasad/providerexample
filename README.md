# providerexample

# A simple example to demonstrate provider - consumer functionality and how the state is managed on two different screens


1. two screens, on pressing the floating action button on either , the counter and the list should update on both
2. initially its achieved using simple setState() function in stateful widget, but when we update from the child screen , parent screen is not getting updated.
3. For this the List is added to a class inherited from ChangeNotifier, and the add function is implemented in there, also notifylistners is added.
4. both home and second page are wrapped using the consumers and we can access the list from there without passing the list , rather from the parent widget tree created in step 3

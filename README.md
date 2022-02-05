# Responsive.Flutter

****** Knowledge ******

////// Keys //////
+ For every widget tree, Flutter builds a corresponding element tree
+ The element tree keeps track of the type of each widget and a reference to its child widgets
+ The element tree is a skeletal representation of the widget tree
+ If the widget tile in the row is swapped, the element tree checks that the type and key are the 
    same as the widget tree.  If not, the element tree will delete the row element reference and rebuild 
    the references based on the widget tree to match
+ The widget tree is modifiable by the user while the element tree evaluates the changes to the widget tree 
    and adjusts the element tree to match.
+ Keys are used to preserve scroll position or collection modification order
+ Keys are needed if the types in a collections have no distinction from on another
+ For example, if the keys are attached to the tile widget in a list, but then you add a padding widget around
    the tile widget - you lose the key reference for the element tree to keep things in order.
    The element tree can only deal with one level of child reference.  These are local keys, they match up
    between the two trees at a certain level.  If it can't find a same level match, it will drop the child
    and reinitialize a new widget.  This may not have the same color or other dependancy attributes as expected.
    In this case, move your key reference to the padding widget and all will be well.
+ ValueKeys - Say the text in the widget is unique, so we are good
+ ObjectKey - The combination of all the object's attributes make a unique key, so we are good
+ UniqueKey - System generated Guid for uniqueness, so we are good
+ PageStorageKeys - Used for scroll position uniqueness
+ GlobalKeys are used to maintain state of a widget accross the app pages.  Using Redux is better for this though.
+ Final variables
+ Const ver new and when to use them
+ Mixins (use the Redux mixin as an example to explain)
+ InheritedWidget? How is Stacks using it
+ StreamController, when do I need one?
+ StreamBuilders?  Add example?  Look at how OrangeDarkTerror is using it.
+ Flutter animations
+ Camera
+ OCR Technology
+ When you start a Flutter (or any Dart) application, a new Thread process (in Dart language = “Isolate") is created and launched. 
  This thread will be the only one that you will have to care for the entire application.   
  So, when this thread is created, Dart automatically
  Initializes 2 Queues, namely “MicroTask” and “Event” FIFO queues;
  Executes the main() method and, once this code execution is completed,
  Launches the Event Loop
+ The Event Queue versus the MicroTask Queue:
  The Event Queue has priority, however the MicroTask will look for opportunities to run very short async tasks when the Event Queue allows it.
  The Flutter system rarely uses the MicroTask Queue in comparison to the Event Queue. 

+ The Event Queue handles these operations:
  I/O
  Gesture
  Drawing
  Timers
  Streams
  Futures

+ When you instantiate a new Future (Like a C# Task):
  Not run in parallel.  The event queue grabs and runs it in the same main isolate.
  Simple adding async to a method turns that method into a future.
  It runs synchronously the code of that method up to the very first await keyword, then it pauses the execution of the remainder of that method
  The next line of code will be run as soon as the Future, referenced by the await keyword, will have completed
  Exampe: Notice the "After the Future" print doesn't wait for the Futuer to complete

    void main(){
      print('Before the Future');
      Future((){
        print('Running the Future');
        }).then((_){
          print('Future is complete');
      });
    print('After the Future');
    }

    Before the Future
    After the Future
    Running the Future
    Future is complete

    An instance of that Future is created and recorded in an internal array, managed by Dart;
    The code that needs to be executed by this Future is directly pushed into the Event Queue;
    The future instance is returned with a status (=incomplete);
    If any, the next synchronous code is executed (NOT the code of the Future)

+ Isolates:
  If a method takes a couple of milliseconds => use a Future
  If a processing might take several hundreds of milliseconds => use an Isolate
  Isolate communication can only be done between the main isolate and any other programmically created isolate
  They each have their own 2 queues
  If you only need to run some piece of code to do some specific job and do not need to interact with that 
    Isolate once the job is done, there exists a very convenient Helper, called compute.

+ This compute function will do all this for you:
  Spawns an Isolate,
  Runs a callback function on that isolate, passing it some data,
  Returns the value, outcome the callback,
  Kills the Isolate at the end of the execution of the callback.

****** ToDo ******
***** Hints *****
***** Issues *****

****** Commands ******

flutter doctor                          //gives the state of things.  Google issues to get everything to green
flutter run --track-widget-creation     //verbose app running

[Shift] R                               //Hot reload as you make code changes to a running app
[Control] R                             //Kill running app
taskkill /F /IM dart.exe                //Kill possible orphaned processes
flutter clean

flutter pub get                         //Get packages updates
flutter screenshot                      //Show off your work
flutter devices                         //What are you connected to

****** Architecture ******

+ ScopedModel - High Level Architecture Overview

Adopted Stacked Flutter Responsive ScopedModel Architecture:
  https://www.filledstacks.com/post/building-a-responsive-ui-architecture-in-flutter/
Each view will have it's own model that extends the ChangeNotifier.
Notify listeners for a view will ONLY BE CALLED when the View's state changes.
Each view only has 2 states. Idle and Busy. Any other piece of UI contained in a view, that requires logic and state / UI updates will have it's own model associated with it.   This way the main view only paints when the main view state changes.
Providers will NOT be passed in through app level global provider, unless it's required by more than 1 view in the app architecture (Users information).
Providers and services will be injected using get_it.
Models will ONLY request data from Services and reduce state from that data. Nothing else.
Dedicated Services(Just normal objects, to not confuse beginners) will perform all the actual work. Api class will request and serialize data. 
  The model will just call the function to do that. Authentication service will use the Api to get the user details and track it. 
  The model just calls the function and passes values to it.

+ Code Design Per Vm Widget Added To Drawer Menu

  Responsive Block (RB) 
    |--> DeviceTypeWidget (SL) "What type of device do we have here?"
    |--> OrientationWidget (SL) "Are we in Portrait or Landscape?"
        (For every orientation change, the LayoutBuilder rebuilds the context)

  main
  |-->MainApplication
     |-->HomeResponsiveWidget (SL)  It replicates the same for all pages attached to menu drawer)
         |-->RB (Entering the Responsive Block, under Widgets/Responsive) 
	      |--> builder returns ViewModelBuilder<HomeViewModel>.reactive()
	           |--> Call the appropriate widget of 4 choices ie. MobileMenuHomePortraitWidget
		        |--> HomeDrawerWidget    AND    |--> MobileHomePortraitWidget extends BaseViewModelProviderWidget<HomeViewModel> 
			     |-->RB			    (allows for more child widgets bound to the HomeViewModel, just extend 
			         |--> Call the appropriate     BaseViewModelProviderWidget<HomeViewModel> as it's parent did.)              			
				      widget of 4 ie. MobileDrawerPortraitWidget    			
				      (SL) (Exiting Responsive Block)
						        |	
						        |                                         OR
						        |--> widget's builder returns ViewModelBuilder<SomeViewModel>{.reactive()/nonreactive}
							    |--> SomeWidgetPortraitWidget extends BaseViewModelProviderWidget<SomeViewModel>
								  (allows for more child widgets bound to the HomeViewModel, just extend 							      				                   BaseViewModelProviderWidget<HomeViewModel> as it's parent did.)	
						
   So, for every new Vm Widget added to the drawer menu, add these folders to get started...

   (This handles the UI portrait and lanscape changes and calls the appriate page for that context rebuild)
   Widgets
      |-->responsive
      	  |-->newpage
        	|-->controls (RB base files used by newpage)
                |-->mobile
	            |--> drawer
          	|-->tablet
	            |--> drawer
    
   AND

   (This handles each page for either portrait or lanscape, not knowing anything about the RB who calls them.)
   Widgets
      |-->newpage
          |-->mobile
          |-->tablet

+ Multiple Widgets Listening To A Single ViewModel Across Several Routed Pages

  The Settings page demonstrates its own viewmodel with a counter.  It's state is held until the page is popped back to the Home page.
  Notice how incrimenting the counter, popping back to the Home page, and returning back to the Settings page displays a zero counter.
  Yet, all actions made on the Shopping Cart number counter state is held regardless of navigation.  Then ShoppingCart service adds to the ReactiveServiceMixin library
   an instance of itself.  This ReactiveServiceMixin library, with the use of the library observable_ish, takes in a dynamic type and polymorphically casts it to either a     
  RxValue, RxList, or RxSet type.  Then any change to the service's properties will reactively update the widget bound to the service though the viewmodel.  

+ Partial Widgets Listening To A Vm

  The SettingsCounterPartialWidget, SettingsCounterWidget, and SettingsCounterParityWidget are called and initialized at app load.  Both SettingsCounterPartialWidget and    
  SettingsCounterWidget will not rebuild for every counter change.  However, SettingsCounterParityWidget will listen and rebuild for every change.

****** Notes ******

+ I would rather implement a few viewmodels with several reactive mixins widgets that listen to them.  Don't these widgets act as partial widgets already? I don't think I need  
  to use the partial widget paradym.

+ The stream switch is nice but for every top-level FloatingActionBtn hit or user device rotation, the page is reloaded and the stream switch is set to the first default choice.
  I would rather maintain both streams in a reactive mixin and show/hide streams as needed.
  
+ FloatingActionBtns have to be built on a Scaffold that often wraps a routed page.  Pressing on a FloatingActionBtn should be used to route to a detail page related to the     
  previous page and not so much used to modify the data of the wrapped page.  You could use it to mod data of that page but for each press, the widget tree is rebuilt.  This is 
  cuz the FloatingActionBtn is attached to the scaffold - the parent of that page.

****** Issues ******

MobileHomeLandscapeWidget
    if (model.isPopupOpen == true) {
      model.setHomePopState(false);
      Navigator.of(context).pop();
    }
I/flutter (27563): Another exception was thrown: setState() or markNeedsBuild() called during build.

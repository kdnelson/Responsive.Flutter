# Responsive.Flutter

****** ScopedModel - High Level Architecture Overview ******

+ Each view will have it's own model that extends the ChangeNotifier.
+ Notify listeners for a view will ONLY BE CALLED when the View's state changes.
+ Each view only has 2 states. Idle and Busy. Any other piece of UI contained in a view, that requires logic and state / UI updates will have it's own model associated with it. + This way the main view only paints when the main view state changes.
+ Providers will NOT be passed in through app level global provider, unless it's required by more than 1 view in the app architecture (Users information).
+ Providers and services will be injected using get_it.
+ Models will ONLY request data from Services and reduce state from that DATA. Nothing else.
+ Dedicated Services(Just normal objects, to not confuse beginners) will perform all the actual work. Api class will request and serialize data. 
  The model will just call the function to do that. Authentication service will use the Api to get the user details and track it. 
  The model just calls the function and passes values to it.

****** Code Design Per Page Add To Drawer Menu ******

Responsive Block (RB) 
	|--> DeviceTypeWidget (SL) "What type of device do we have here?"
	|--> OrientationWidget (SL) "Are we in Portrait or Landscape?"
	(For every orientation change, have LayoutBuilder rebuild the context)

main
|-->MainApplication
	|-->HomeResponsiveWidget extends BaseWidget<HomeViewModel> (Using the Home pages as an example.  It replicates the same for all pages attached to menu drawer)
		|-->RB (Entering the Responsive Block, under Widgets/Common) 
			|--> Call the appropriate widget of 4 choices ie. MobileMenuPortraitWidget (SF - BaseWidget<HomeViewModel>)
				|--> DrawerWidget              AND                |--> MobileHomePortraitWidget (SF - BaseWidget<HomeViewModel>) (Exiting the Responsive Block)
					|-->RB			  	             	|--> Text(Print vm.title)
					     |--> Call the appropriate widget of 4 ie. MobileDrawerPortraitWidget (SL) (Exiting the Responsive Block)
							
So for every new page added to the drawer menu, add these folders to get started...

(This handles the UI portrait and lanscape changes and calls the appriate page for that context rebuild)
Widgets
  |-->common
    |-->responsive
      |-->newpage
        |-->controls (RB files used by newpage)
        |-->mobile
        |-->tablet
    
AND

(This handles each page for either portrait or lanscape, not knowing anything about the RB who call them.)
Widgets
  |-->newpage
    |-->mobile
    |-->tablet

****** Issues ******

****** Review ******

final variables
const ver new and when to use them
keys
InheritedWidget

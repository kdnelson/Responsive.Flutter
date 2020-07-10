# Responsive.Flutter

Design:

---------- Flutter Responsive Architecture ----------

Responsive Block (RB) 
	|--> DeviceTypeWidget (SL) "What type of device do we have here?"
	|--> OrientationWidget (SL) "Are we in Portrait or Landscape?"
	(For every orientation change, have LayoutBuilder rebuild the context)

main
|-->MainApplication
	|-->HomeResponsiveWidget extends BaseWidget<HomeViewModel> (Using the Home pages as an example.  It replicates the same for all pages attached to menu drawer)
		|-->RB (Entering the Responsive Block, under Widgets/Common) 
			|--> Call the appropriate widget of 4 choices ie. MobileMenuPortraitWidget (SF - BaseWidget<HomeViewModel>)
				|--> DrawerWidget                 AND                   |--> MobileHomePortraitWidget (SF - BaseWidget<HomeViewModel>) (Exiting the Responsive Block)
					|-->RB			  	                                        |--> Text(Print vm.title)
						|--> Call the appropriate widget of 4 ie. MobileDrawerPortraitWidget (SL) (Exiting the Responsive Block)
							
So for every new page added to the drawer menu, add these folders to get started...

(This handles the UI portrait and lanscape changes and calls the appriate page for that context rebuild)
Widgets
  |-->common
    |-->responsive
      |-->newpage
        |-->mobile
        |-->tablet
    
AND

(This handles each page for either portrait or lanscape, not knowing anything about the RB who call them.)
Widgets
  |-->newpage
    |-->mobile
    |-->tablet

Issues:

Review:

final variables
const ver new and when to use them
keys

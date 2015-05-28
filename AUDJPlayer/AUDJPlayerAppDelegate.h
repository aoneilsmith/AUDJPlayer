/*
 
AUDJPlayerAppDelegate.h
AUDJPlayer

Abstract: The Application Delegate Class.
 
Created by Andrew O'Neil-Smith on 3/14/14.
Copyright (c) 2014 Andrew O'Neil-Smith. All rights reserved.
*/

#import <UIKit/UIKit.h>
#import "CAXException.h"
#import "AUDJPlayerViewController.h"
#import "AudioEngine.h"

@interface AUDJPlayerAppDelegate : UIResponder <UIApplicationDelegate>

{
    //pointer to obj- 1 for each track and stinger
    AudioEngine *trackOneAudioEngine;
    AudioEngine *trackTwoAudioEngine;
    
    AudioEngine *stingerOneAudioEngine;
    AudioEngine *stingerTwoAudioEngine;
    AudioEngine *stingerThreeAudioEngine;
    AudioEngine *stingerFourAudioEngine;
    AudioEngine *stingerFiveAudioEngine;
    
   // UIWindow *window;
   // UINavigationController *navigationController;
    //pointer to view controller
    //AUDJPlayerViewController *auDJPlayerViewController;
    
}

@property (strong, nonatomic) IBOutlet UIWindow *window;
//@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;
//@property (nonatomic, retain) IBOutlet AUDJPlayerViewController *auDJPlayerViewController;

@end

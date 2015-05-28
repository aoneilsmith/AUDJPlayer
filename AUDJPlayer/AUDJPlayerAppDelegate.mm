//
//  AUDJPlayerAppDelegate.m
//  AUDJPlayer
//
//  Created by Andrew O'Neil-Smith on 3/14/14.
//  Copyright (c) 2014 Andrew O'Neil-Smith. All rights reserved.
//

#import "AUDJPlayerAppDelegate.h"
#import "AUDJPlayerViewController.h"

@implementation AUDJPlayerAppDelegate

@synthesize window = _window;
//@synthesize auDJPlayerViewController, window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

   
    //create audio engine objects
    trackOneAudioEngine = [[AudioEngine alloc] init];
    trackTwoAudioEngine = [[AudioEngine alloc] init];
    
    //stingers
    stingerOneAudioEngine = [[AudioEngine alloc] init];
    stingerTwoAudioEngine = [[AudioEngine alloc] init];
    stingerThreeAudioEngine = [[AudioEngine alloc] init];
    stingerFourAudioEngine  = [[AudioEngine alloc] init];
    stingerFiveAudioEngine  = [[AudioEngine alloc] init];
    
    // init with the files
    NSString *musicPath = [[NSBundle mainBundle] pathForResource:@"Frolic" ofType:@"wav"];
    NSString *musicPath2 = [[NSBundle mainBundle] pathForResource:@"Temptation Sensation" ofType:@"wav"];
    //stingers
    NSString *musicPath3 = [[NSBundle mainBundle] pathForResource:@"RDFX_NoiseToyz-25" ofType:@"wav"];
    NSString *musicPath4 = [[NSBundle mainBundle] pathForResource:@"RDFX_NoiseToyz-12" ofType:@"wav"];
    NSString *musicPath5 = [[NSBundle mainBundle] pathForResource:@"SB_NSAT2_126_SNARE_05" ofType:@"wav"];
    NSString *musicPath6 = [[NSBundle mainBundle] pathForResource:@"SB_NSAT2_126_KICK_03" ofType:@"wav"];
    NSString *musicPath7 = [[NSBundle mainBundle] pathForResource:@"SB_NSAT2_126_FX_13" ofType:@"wav"];

    //init
    bool succeeded = [trackOneAudioEngine initAudioPlayerWithFile:musicPath];
    bool succeeded2 = [trackTwoAudioEngine initAudioPlayer2WithFile:musicPath2];
    //stingers
    bool succeeded3 = [stingerOneAudioEngine initAudioPlayer3WithFile:musicPath3];
    bool succeeded4 = [stingerTwoAudioEngine initAudioPlayer4WithFile:musicPath4];
    bool succeeded5 = [stingerThreeAudioEngine initAudioPlayer5WithFile:musicPath5];
    bool succeeded6 = [stingerFourAudioEngine initAudioPlayer6WithFile:musicPath6];
    bool succeeded7 = [stingerFiveAudioEngine initAudioPlayer7WithFile:musicPath7];

    if(succeeded)
        NSLog(@"initAudioPlayerWithFile worked!");
    if(succeeded2)
        NSLog(@"initAudioPlayer2WithFile worked!");
    
    
    //create view controller and set it is the root view controller
    AUDJPlayerViewController *playerViewController = [[AUDJPlayerViewController alloc] init];
    
    //set engine if passes
    if(succeeded)
      //[playerViewController setAudioEngine:trackOneAudioEngine1];
    if(succeeded2)
       //[playerViewController setAudioEngine:trackTwoAudioEngine];
    
    [self.window setRootViewController:playerViewController];
    
    //AUDJPlayerViewController = [[AUDJPlayerViewController alloc]init];
    //[self.window setRootViewController:auDJPlayerViewController];
    
    //give the VC a pointer to the audioEngine objects
   // [playerViewController setAudioEngine:trackOneAudioEngine];
    //[playerViewController setAudioEngine:trackTwoAudioEngine];
    //track two, stingers 1-5
  
    [[self window] makeKeyAndVisible];
    
    
    //init
    //[auDJPlayerViewController initAudioEngine];
    
    //self.window.rootViewController = navigationController;
    /*
    AUDJPlayerViewController *PlayerViewController = [[AUDJPlayerViewController alloc] init];

    [self.window setRootViewController:PlayerViewController];
    
    [[self window] makeKeyAndVisible];
    
    try {
        NSError *error = nil;
        
        // Configure the audio session
        AVAudioSession *sessionInstance = [AVAudioSession sharedInstance];
        
        // our default category -- we change this for conversion and playback appropriately
        [sessionInstance setCategory:AVAudioSessionCategoryPlayback error:&error];
      //  XThrowIfError(error.code, "couldn't set audio category");
        
        NSTimeInterval bufferDuration = .005;
        [sessionInstance setPreferredIOBufferDuration:bufferDuration error:&error];
       // XThrowIfError(error.code, "couldn't set IOBufferDuration");
        
        double hwSampleRate = 44100.0;
        [sessionInstance setPreferredSampleRate:hwSampleRate error:&error];
       // XThrowIfError(error.code, "couldn't set preferred sample rate");
        
        // add interruption handler
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(handleInterruption:)
                                                     name:AVAudioSessionInterruptionNotification
                                                   object:sessionInstance];
        
        // we don't do anything special in the route change notification
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(handleRouteChange:)
                                                     name:AVAudioSessionRouteChangeNotification
                                                   object:sessionInstance];
        
        // activate the audio session
        [sessionInstance setActive:YES error:&error];
        XThrowIfError(error.code, "couldn't set audio session active\n");
        
        // just print out some info
        printf("Current IOBufferDuration: %fms\n", sessionInstance.IOBufferDuration * 1000);
        printf("Hardware Sample Rate: %.1fHz\n", sessionInstance.sampleRate);
        printf("Current Hardware Output Latency: %fms\n", sessionInstance.outputLatency * 1000);
    }
    catch (CAXException e) {
        char buf[256];
        fprintf(stderr, "Error: %s (%s)\n", e.mOperation, e.FormatError(buf));
        printf("You probably want to fix this before continuing!");
    }
    

    // initialize the graphController object
    [auDJPlayerViewController.graphController initializeAUGraph];
    
    // set up the mixer according to our interface defaults
    //[auDJPlayerViewController setUIDefaults];
*/


    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

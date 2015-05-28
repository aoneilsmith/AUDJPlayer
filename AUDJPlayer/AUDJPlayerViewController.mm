//
//  AUDJPlayerViewController.m
//  AUDJPlayer
//
//  Abstract: The main view controller.
//
//  Created by Andrew O'Neil-Smith on 3/14/14.
//  Copyright (c) 2014 Andrew O'Neil-Smith. All rights reserved.
//

#import "AUDJPlayerViewController.h"


//@interface AUDJPlayerViewController ()

//@end

@implementation AUDJPlayerViewController

@synthesize  trackOneAudioEngine, trackTwoAudioEngine, trackOneWaveView, trackTwoWaveView, stingerOneAudioEngine, stingerTwoAudioEngine,stingerThreeAudioEngine, stingerFourAudioEngine, stingerFiveAudioEngine; //;startButton,graphController
//syntesisze other sounds?

/*-(void) initAudioEngine
{
    
}
*/
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)playbackMonitorTimerFired:(NSTimer *)timer
{
    // get the left meter value
    float trackOneMeterdB = [trackOneAudioEngine getLeftMeterValue];
    float trackTwoMeterdB = [trackTwoAudioEngine getRightMeterValue]; 
    
    // update the meter - it takes dB values!
    [trackOneMeterView updateMeter:trackOneMeterdB];
    [trackTwoMeterView updateMeter:trackTwoMeterdB]; 
    
    
    [trackOneWaveView setPower:trackOneMeterdB];
    [trackOneWaveView setNeedsDisplay]; // redraw the visualizer
    
    [trackTwoWaveView setPower:trackTwoMeterdB];
    [trackTwoWaveView setNeedsDisplay];
    
}

-(IBAction)playButtonPressed:(id)sender
{ /*
    if (graphController.isPlaying) {
        [graphController stopAUGraph];
        self.startButton.selected = NO;
    } else {
        [graphController startAUGraph];
        self.startButton.selected = YES;
    }
   
    [trackOneAudioEngine stopAUGraph];
    [trackTreadwriteengine stopAUGraph];
    //stingers
    
    [trackOneAudioEngine initPlaybackAURioWithFile:@"Temptation Sensation" ofType:@"wav" isCompressed:NO];
    [trackTwoAudioEngine initPlaybackAURioWithFile:@"Frolic" ofType:@"wav" isCompressed:NO];
    
    [trackOneAudioEngine startAUGraph];
    [trackTwoAudioEngine startAUGraph];
*/
    
    if([trackOneAudioEngine isPlaying])
        return;
    if([trackTwoAudioEngine isPlaying])
        return;
    
    //playAtTime: ?
    //@prop NSTIMEINTERVAL devicecurrenttiem
    
    //start the player
    [trackOneAudioEngine startAudioPlayer];
    [trackTwoAudioEngine startAudioPlayer];
    
    [trackOneWaveView clear];
    [trackOneWaveView setNeedsDisplay];
    
    [trackTwoWaveView clear];
    [trackTwoWaveView setNeedsDisplay];
    
    playbackMonitorTimer = [NSTimer scheduledTimerWithTimeInterval:0.050
                                                            target:self
                                                          selector:@selector(playbackMonitorTimerFired:)
                                                          userInfo:nil
                                                           repeats:YES];
    NSLog(@"Play/Sync Pressed");
  
}

-(IBAction)stopButtonPressed:(id)sender
{/*
    if (graphController.isPlaying) {
        [graphController stopAUGraph];
        self.startButton.selected = NO;
    } else {
        [graphController startAUGraph];
        self.startButton.selected = YES;
    }
  */
    [trackOneAudioEngine stopAudioPlayer];
    [trackTwoAudioEngine stopAudioPlayer];
    
    //stop timer
    [playbackMonitorTimer invalidate];
    
    //clear meter
    [trackOneMeterView clearMeter];
    [trackTwoMeterView clearMeter];
    NSLog(@"Stop Pressed");

    
}
-(IBAction)stingerOnePressed:(id)sender
{
    [stingerOneAudioEngine startAudioPlayer];
    NSLog(@"Stinger 1 Played");

}
-(IBAction)stingerTwoPressed:(id)sender
{
    [stingerTwoAudioEngine startAudioPlayer];
    NSLog(@"Stinger 2 Played");

    
}
-(IBAction)stingerThreePressed:(id)sender
{
    [stingerThreeAudioEngine startAudioPlayer];
    NSLog(@"Stinger 3 Played");

    
}
-(IBAction)stingerFourPressed:(id)sender
{
    [stingerFourAudioEngine startAudioPlayer];
    NSLog(@"Stinger 4 Played");

    
}
-(IBAction)stingerFivePressed:(id)sender
{
    [stingerFiveAudioEngine startAudioPlayer];
    NSLog(@"Stinger 5 Played");

    
}

-(IBAction)mixSliderMoved:(id)sender{
   // AudioUnitParameterValue value = sender.value;
    
   // [graphController setOutputVolume:value];
    NSLog(@"Mix Slider Moved");
	//[trackOneAudioEngine setTrack:0 panValue:[mixSlider value]];
    //[trackTwoAudioEngine setTrack:1 panValue:[mixSlider value]];


}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // load up the info text
    //NSString *infoSouceFile = [[NSBundle mainBundle] pathForResource:@"info" ofType:@"html"];
	//NSString *infoText = [NSString stringWithContentsOfFile:infoSouceFile encoding:NSUTF8StringEncoding error:nil];
    //[self.webView loadHTMLString:infoText baseURL:nil];//no web view
    
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

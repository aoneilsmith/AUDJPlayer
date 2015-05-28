//
//  AUDJPlayerViewController.h
//  AUDJPlayer
//
//  Created by Andrew O'Neil-Smith on 3/14/14.
//  Copyright (c) 2014 Andrew O'Neil-Smith. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

#import "AUDJPlayerAppDelegate.h"
#import "AUGraphController.h"
#import "AudioWaveView.h"
#import "MeterView.h"
#import "AudioEngine.h"


@interface AUDJPlayerViewController : UIViewController
{
    AudioEngine *trackOneAudioEngine;
    AudioEngine *trackTwoAudioEngine;
    
    AudioEngine *stingerOneAudioEngine;
    AudioEngine *stingerTwoAudioEngine;
    AudioEngine *stingerThreeAudioEngine;
    AudioEngine *stingerFourAudioEngine;
    AudioEngine *stingerFiveAudioEngine;
    
    IBOutlet MeterView   *trackOneMeterView;
    IBOutlet MeterView   *trackTwoMeterView;
    
    IBOutlet AudioWaveView *trackOneWaveView;
    IBOutlet AudioWaveView *trackTwoWaveView;
    
    //IBOutlet UIButton   *startButton;
  
    IBOutlet UISlider *mixSlider;
    
    NSTimer *playbackMonitorTimer;
    
    //AUGraphController *graphController;

}

//- (void) initAudioEngine;

//audio engines, track 1+2, stingers get set
@property (atomic, retain) AudioEngine *trackOneAudioEngine;
@property (atomic, retain) AudioEngine *trackTwoAudioEngine;

@property (atomic, retain) AudioEngine *stingerOneAudioEngine;
@property (atomic, retain) AudioEngine *stingerTwoAudioEngine;
@property (atomic, retain) AudioEngine *stingerThreeAudioEngine;
@property (atomic, retain) AudioEngine *stingerFourAudioEngine;
@property (atomic, retain) AudioEngine *stingerFiveAudioEngine;







@property (nonatomic, strong) AVAudioPlayer *audioPlayer;

//wave views
@property (nonatomic, retain) AudioWaveView *trackOneWaveView;
@property (nonatomic, retain) AudioWaveView *trackTwoWaveView;

//mixer slider
-(IBAction)mixSliderMoved:(id)sender;
//@property (readonly, nonatomic) IBOutlet UISlider *mixSlider;


//stop/start
-(IBAction)playButtonPressed:(id)sender;
-(IBAction)stopButtonPressed:(id)sender;

//@property (readonly, nonatomic) IBOutlet UIButton *startButton;


//stinger buttons
-(IBAction)stingerOnePressed:(id)sender;
-(IBAction)stingerTwoPressed:(id)sender;
-(IBAction)stingerThreePressed:(id)sender;
-(IBAction)stingerFourPressed:(id)sender;
-(IBAction)stingerFivePressed:(id)sender;

//AUGraphController
//@property (readonly, nonatomic) IBOutlet AUGraphController *graphController;


@end

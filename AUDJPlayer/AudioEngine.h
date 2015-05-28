//
//  AudioEngine.h
//  Copyright 2011 University of Miami. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>

@interface AudioEngine : NSObject <AVAudioPlayerDelegate>
{
    // first one - you (probably) need to make an array if you want more than one
    AVAudioPlayer *audioPlayer;
    AVAudioPlayer *audioPlayer2;
    AVAudioPlayer *audioPlayer3;
    AVAudioPlayer *audioPlayer4;
    AVAudioPlayer *audioPlayer5;
    AVAudioPlayer *audioPlayer6;
    AVAudioPlayer *audioPlayer7;
    
    NSMutableArray *soundsArray;
}

// default initializer
- (id)init;

- (BOOL)initAudioPlayerWithFile:(NSString *)audioFilePath;
- (BOOL)initAudioPlayer2WithFile:(NSString *)audioFilePath2;
- (BOOL)initAudioPlayer3WithFile:(NSString *)audioFilePath3;
- (BOOL)initAudioPlayer4WithFile:(NSString *)audioFilePath4;
- (BOOL)initAudioPlayer5WithFile:(NSString *)audioFilePath5;
- (BOOL)initAudioPlayer6WithFile:(NSString *)audioFilePath6;
- (BOOL)initAudioPlayer7WithFile:(NSString *)audioFilePath7;

- (BOOL)initAudioPlayerWithFiles:(NSMutableArray *)audioFilesPaths;

// start/stop functions; if you have multuple players you need to index them
- (void)startAudioPlayer;
- (void)stopAudioPlayer;
- (bool)isPlaying;

// metering methods; if you have multuple players you need to index them
- (float)getLeftMeterValue;
- (float)getRightMeterValue;

// you do the right one!

// you need to implement some kind of return to beginning (rewind button)

// NOTE we are a delegate of AVAudioPlayerDelegate but I have not implemented any of the functions here. You do it?



@end








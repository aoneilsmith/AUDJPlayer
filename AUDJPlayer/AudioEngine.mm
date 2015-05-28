//
//  AudioEngine.mm
//  Created by willpirkle on 2/16/12.
//  Copyright 2011 University of Miami. All rights reserved.
//

#import "AudioEngine.h"


@implementation AudioEngine

// default initializer
- (id)init
{
	self = [super init];
    if (self) 
	{
        // Custom initialization - you probably want to setup variables here - WP
		
		
		// end init
    }
	
    return self;
}

// give me a file path, I load my player and queue it up!
- (BOOL)initAudioPlayerWithFile:(NSString *)audioFilePath
{
    if(audioFilePath)
	{
		// 1) URL
		NSURL *url = [NSURL fileURLWithPath:audioFilePath];
        //NSURL *url2 = [NSURL fileURLWithPath:audioFilePath];
        
        
        // error check!!!! every step of the way
        if(!url)
            return NO; // fail
      //  if(!url2)
        //    return NO;
		
		// 2) init audio player with this mp3
		audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
     //   audioPlayer2 =[[AVAudioPlayer alloc] initWithContentsOfURL:url2 error:nil];
      ///  NSMutableArray *soundsArray =[@[url, url2] mutableCopy];
        
        
		// 3) set the delegate
		[audioPlayer setDelegate:self];
     //   [audioPlayer2 setDelegate:self];
        //[soundsArray setDelegate:self];
        
        // 4) preload first buffer
        [audioPlayer prepareToPlay];
        [audioPlayer2 prepareToPlay];
        
        
        // 5) enable metering
        [audioPlayer setMeteringEnabled:YES];
     //   [audioPlayer2 setMeteringEnabled:YES];

        
        // rockin
        return YES;
	}
    
    // fail
    return NO;
}
- (BOOL)initAudioPlayer2WithFile:(NSString *)audioFilePath2
{
    if(audioFilePath2)
	{
		// 1) URL
		//NSURL *url = [NSURL fileURLWithPath:audioFilePath];
        NSURL *url2 = [NSURL fileURLWithPath:audioFilePath2];
        
        
        // error check!!!! every step of the way
        //if(!url)
          //  return NO; // fail
        if(!url2)
            return NO;
		
		// 2) init audio player with this mp3
		//audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
        audioPlayer2 =[[AVAudioPlayer alloc] initWithContentsOfURL:url2 error:nil];
    //    NSMutableArray *soundsArray =[@[url, url2] mutableCopy];
        
        
		// 3) set the delegate
		//[audioPlayer setDelegate:self];
        [audioPlayer2 setDelegate:self];
        //[soundsArray setDelegate:self];
        
        // 4) preload first buffer
      //  [audioPlayer prepareToPlay];
        [audioPlayer2 prepareToPlay];
        
        
        // 5) enable metering
    //    [audioPlayer setMeteringEnabled:YES];
        [audioPlayer2 setMeteringEnabled:YES];
        
        
        // rockin
        return YES;
	}
    
    // fail
    return NO;
}

- (BOOL)initAudioPlayer3WithFile:(NSString *)audioFilePath3
{
    if(audioFilePath3)
	{
		// 1) URL
        NSURL *url3 = [NSURL fileURLWithPath:audioFilePath3];
        
        
        // error check!!!! every step of the way
        if(!url3)
            return NO;
		
		// 2) init audio player with this mp3
        audioPlayer3 =[[AVAudioPlayer alloc] initWithContentsOfURL:url3 error:nil];        
        
		// 3) set the delegate
        [audioPlayer3 setDelegate:self];
        
        // 4) preload first buffer
        [audioPlayer3 prepareToPlay];
        
        
        // 5) enable metering
        [audioPlayer3 setMeteringEnabled:YES];

        // rockin
        return YES;
	}
    
    // fail
    return NO;
}
- (BOOL)initAudioPlayer4WithFile:(NSString *)audioFilePath4
{
    if(audioFilePath4)
	{
		// 1) URL
        NSURL *url4 = [NSURL fileURLWithPath:audioFilePath4];
        
        // error check!!!! every step of the way
        if(!url4)
            return NO;
		
		// 2) init audio player with this mp3
        audioPlayer4 =[[AVAudioPlayer alloc] initWithContentsOfURL:url4 error:nil];
        
		// 3) set the delegate
        [audioPlayer4 setDelegate:self];
        
        // 4) preload first buffer
        [audioPlayer4 prepareToPlay];
        
        // 5) enable metering
        [audioPlayer4 setMeteringEnabled:YES];
        
        // rockin
        return YES;
	}
    
    // fail
    return NO;
}
- (BOOL)initAudioPlayer5WithFile:(NSString *)audioFilePath5
{
    if(audioFilePath5)
	{
		// 1) URL
        NSURL *url5 = [NSURL fileURLWithPath:audioFilePath5];
        
        
        // error check!!!! every step of the way
        if(!url5)
            return NO;
		
		// 2) init audio player with this mp3
        audioPlayer5 =[[AVAudioPlayer alloc] initWithContentsOfURL:url5 error:nil];
        
		// 3) set the delegate
        [audioPlayer5 setDelegate:self];
        
        // 4) preload first buffer
        [audioPlayer5 prepareToPlay];
            
        // 5) enable metering
        [audioPlayer5 setMeteringEnabled:YES];
        
        // rockin
        return YES;
	}
    
    // fail
    return NO;
}
- (BOOL)initAudioPlayer6WithFile:(NSString *)audioFilePath6
{
    if(audioFilePath6)
	{
		// 1) URL
        NSURL *url6 = [NSURL fileURLWithPath:audioFilePath6];
        
        
        // error check!!!! every step of the way
        if(!url6)
            return NO;
		
		// 2) init audio player with this mp3
        audioPlayer6 =[[AVAudioPlayer alloc] initWithContentsOfURL:url6 error:nil];
        
		// 3) set the delegate
        [audioPlayer6 setDelegate:self];
        
        // 4) preload first buffer
        [audioPlayer6 prepareToPlay];
        
        // 5) enable metering
        [audioPlayer6 setMeteringEnabled:YES];
        
        // rockin
        return YES;
	}
    
    // fail
    return NO;
}
- (BOOL)initAudioPlayer7WithFile:(NSString *)audioFilePath7
{
    if(audioFilePath7)
	{
		// 1) URL
        NSURL *url7 = [NSURL fileURLWithPath:audioFilePath7];
        
        
        // error check!!!! every step of the way
        if(!url7)
            return NO;
		
		// 2) init audio player with this mp3
        audioPlayer7 =[[AVAudioPlayer alloc] initWithContentsOfURL:url7 error:nil];
        
		// 3) set the delegate
        [audioPlayer7 setDelegate:self];
        
        // 4) preload first buffer
        [audioPlayer7 prepareToPlay];
        
        // 5) enable metering
        [audioPlayer7 setMeteringEnabled:YES];
        
        // rockin
        return YES;
	}
    
    // fail
    return NO;
}
/*- (BOOL)initAudioPlayerWithFiles:(NSMutableArray *)audioFilesPaths
{
    if(audioFilesPaths)
    {
        //URLs
        NSURL *url = [NSURL fileURLWithPath:audioFilesPaths];
        NSURL *url2 = [NSURL fileURLWithPath:audioFilesPaths];
        
        soundsArray = [NSMutableArray arrayWithObjects:url, url2, nil];

        
        
        
        
        
        //rock out!
        return YES;
    }
    
    
    //fail
    return NO;
}*/

- (void)startAudioPlayer
{
    // start it
    [audioPlayer play];
    [audioPlayer2 play];
    
    
}

- (void)stopAudioPlayer
{
    // stop it
    [audioPlayer stop];
    [audioPlayer2 stop];
    for (AVAudioPlayer *a in soundsArray) {
        [a stop];
    }
}
- (bool)isPlaying
{
    return [audioPlayer isPlaying];
    return [audioPlayer2 isPlaying];
}

// returns meter value, -120dBFS -> 0dBFS
- (float)getLeftMeterValue
{
    // 1) as per documentation, call this first
    [audioPlayer updateMeters];
    //[audioPlayer2 updateMeters];
    
    // 2) now ask for the value and return it 
    return [audioPlayer averagePowerForChannel:0]; // channel 0 is LEFT
    //return [audioPlayer2 averagePowerForChannel:0];
    
}
//Added by AOS
- (float)getRightMeterValue
{
    // 1) as per documentation, call this first
    //[audioPlayer updateMeters];
    [audioPlayer2 updateMeters];
    
    // 2) now ask for the value and return it
    //return [audioPlayer averagePowerForChannel:1]; // channel 1 is RIGHT
    return [audioPlayer2 averagePowerForChannel:1];
}


- (void)dealloc 
{
   // [super dealloc];
}
@end

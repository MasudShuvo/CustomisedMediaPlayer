//
//  ViewController.h
//  CustomisedMediaPlayer
//
//  Created by Shuvo on 12/29/13.
//  Copyright (c) 2013 Masud Shuvo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
@interface ViewController : UIViewController <AVAudioPlayerDelegate>
{
    AVAudioPlayer *audioPlayer;
    IBOutlet UIButton *playButton;
    IBOutlet UIButton *pauseButton;
    IBOutlet UIProgressView *progressView;
    IBOutlet UILabel *label;
}

- (IBAction)playButtonPressed:(id)sender;
- (IBAction)pausedButtonPressed:(id)sender;
@end

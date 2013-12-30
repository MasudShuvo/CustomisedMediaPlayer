//
//  ViewController.m
//  CustomisedMediaPlayer
//
//  Created by Shuvo on 12/29/13.
//  Copyright (c) 2013 Masud Shuvo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSError *error;
    audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"sample" ofType:@"mp3"]] error:&error];
    audioPlayer.delegate = self;
    [audioPlayer play];
    
    [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateProgressView) userInfo:nil repeats:YES];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)updateProgressView
{
    if ([audioPlayer isPlaying]) {
        progressView.progress = audioPlayer.currentTime / audioPlayer.duration;
        label.text = [NSString stringWithFormat:@"%.1f",audioPlayer.currentTime];
    }
}

- (IBAction)playButtonPressed:(id)sender
{
    [audioPlayer play];
}
- (IBAction)pausedButtonPressed:(id)sender
{
    [audioPlayer pause];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

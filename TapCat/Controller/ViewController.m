//
//  ViewController.m
//  TapCat
//
//  Created by Marcos Kilmer on 05/06/20.
//  Copyright © 2020 mkilmer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.meowLabel.hidden = YES;
    
    
    NSURL *soundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Cat" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, &soundID);
    
   
}


- (IBAction)cat:(id)sender {
    self.meowLabel.hidden = NO;
    
    AudioServicesPlaySystemSound(soundID);
    
    [NSTimer scheduledTimerWithTimeInterval:0.8 target:self selector:@selector(hideLabel) userInfo:nil repeats:NO];
}

-(void) hideLabel{
    self.meowLabel.hidden = YES;
}
@end

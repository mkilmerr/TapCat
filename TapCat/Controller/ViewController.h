//
//  ViewController.h
//  TapCat
//
//  Created by Marcos Kilmer on 05/06/20.
//  Copyright © 2020 mkilmer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController{
    SystemSoundID soundID;
}

@property (weak, nonatomic) IBOutlet UILabel *meowLabel;

- (IBAction)cat:(id)sender;
@end


//
//  ViewController.h
//  reaktion-game
//
//  Created by Merdin Pirildak on 12.09.14.
//  Copyright (c) 2014 Merdin Pirildak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    IBOutlet UIView *starterView;
    IBOutlet UIImageView *reaktionsBild;
    IBOutlet UILabel *reaktionsLabel;
    IBOutlet UIButton *ireactedButton;
    IBOutlet UIButton *repeatBtn;
    
    NSTimer *reaktionsTimer;
    
    float reaktionsZeit;
    BOOL checkCheat;
}

-(IBAction)startGamne:(id)sender;
-(IBAction)reactNow:(id)sender;
-(IBAction)repeat:(id)sender;

@end


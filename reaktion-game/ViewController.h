//
//  ViewController.h
//  reaktion-game
//
//  Created by Merdin Pirildak on 12.09.14.
//  Copyright (c) 2014 Merdin Pirildak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    IBOutlet UIImageView *reaktionsBild;
    IBOutlet UILabel *reaktionsLabel;
    NSTimer *reaktionsTimer;
    float reaktionsZeit;
    
}

-(IBAction)startGamne:(id)sender;
-(IBAction)reactNow:(id)sender;

@end


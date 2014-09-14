//
//  ViewController.m
//  reaktion-game
//
//  Created by Merdin Pirildak on 12.09.14.
//  Copyright (c) 2014 Merdin Pirildak. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    reaktionsZeit = 0.000;
    reaktionsLabel.hidden = YES;
    reaktionsBild.image = [UIImage imageNamed:@"normal.jpg"];

    
    [super viewDidLoad];

}

-(IBAction)startGamne:(id)sender{
    
    int randomTime = (arc4random() %10) +2;

    NSTimer *timer1 = [NSTimer scheduledTimerWithTimeInterval:randomTime target:self selector:@selector(reagiereJetzt) userInfo:nil repeats:NO];
}

-(IBAction)reactNow:(id)sender{
    
    [reaktionsTimer invalidate];
    
    reaktionsLabel.hidden = NO;
    reaktionsLabel.text = [NSString stringWithFormat:@"Reaktionszeit: %.3f",reaktionsZeit];
    
}

-(void)reagiereJetzt{
    
    reaktionsBild.image = [UIImage imageNamed:@"now.jpg"];
    
    reaktionsTimer = [NSTimer scheduledTimerWithTimeInterval:0.001 target:self selector:@selector(plusOne) userInfo:nil repeats:YES];
}

-(void)plusOne{
    
    reaktionsZeit+=0.001;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end

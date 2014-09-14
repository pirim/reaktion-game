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
    
    starterView.hidden = NO;
    ireactedButton.hidden = YES;
    repeatBtn.hidden = YES;
    checkCheat = NO;
    reaktionsZeit = 0.000;
    reaktionsBild.image = [UIImage imageNamed:@"normal.jpg"];
    
    [super viewDidLoad];

}

-(IBAction)startGamne:(id)sender{
    
    int randomTime = (arc4random() %10) +2;

    NSTimer *timer1 = [NSTimer scheduledTimerWithTimeInterval:randomTime target:self selector:@selector(reagiereJetzt) userInfo:nil repeats:NO];
    
    starterView.hidden = YES;
}

-(IBAction)repeat:(id)sender{
    
    [self viewDidLoad];
    reaktionsLabel.text = @"";
    reaktionsBild.image = [UIImage imageNamed:@"normal.jpg"];
    
}

-(IBAction)reactNow:(id)sender{
    
    [reaktionsTimer invalidate];
    reaktionsLabel.text = [NSString stringWithFormat:@"Reaktionszeit: %.3f",reaktionsZeit];
    ireactedButton.hidden = YES;
    repeatBtn.hidden = NO;
    
}

-(void)reagiereJetzt{
    
    if (checkCheat == NO)
    {
        ireactedButton.hidden = NO;
        reaktionsBild.image = [UIImage imageNamed:@"now.jpg"];
        reaktionsTimer = [NSTimer scheduledTimerWithTimeInterval:0.001 target:self selector:@selector(plusOne) userInfo:nil repeats:YES];
    }
    else{
        
    }
}

-(void)plusOne{
    
    reaktionsZeit+=0.001;
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    if (reaktionsBild.image == [UIImage imageNamed:@"normal.jpg"])
    {
        if (reaktionsTimer.isValid == YES)
        {
            [reaktionsTimer invalidate];
        }
        reaktionsLabel.text = [NSString stringWithFormat:@"Leider zu früh grdrückt!"];
        
        checkCheat = YES;
        ireactedButton.hidden = YES;
        repeatBtn.hidden = NO;
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end

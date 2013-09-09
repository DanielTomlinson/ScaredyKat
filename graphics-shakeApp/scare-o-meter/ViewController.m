//
//  ViewController.m
//  scare-o-meter
//
//  Created by Gemma Barrett on 05/09/2013.
//  Copyright (c) 2013 iOS Dev UK 2013 - Gemma Barrett. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(BOOL) canBecomeFirstResponder; {
    
    return YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self becomeFirstResponder];
}


-(void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    UIImageView *oldView = self.imageView;
    UIImageView *replacementView = [[UIImageView alloc] initWithFrame: oldView.frame];
    replacementView.image = [UIImage imageNamed:@"scared.png"];
    [self.view insertSubview: replacementView belowSubview: oldView];

    [UIView animateWithDuration: 0.5 animations: ^{
        oldView.alpha = 0;
    } completion: ^(BOOL finished) {
        self.imageView = replacementView;
        [oldView removeFromSuperview];
    }];
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

-(void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

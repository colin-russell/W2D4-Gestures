//
//  SwipeViewController.m
//  Gestures
//
//  Created by Colin on 2018-04-19.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import "SwipeViewController.h"

@interface SwipeViewController ()

@property BOOL open;

@property (nonatomic)CGRect frame;

@end

@implementation SwipeViewController

- (void)viewDidLoad {
    self.open = NO;
    self.view.backgroundColor = [UIColor brownColor];
    
    CGFloat width = self.view.frame.size.width - 20;
    CGFloat height = 100;
    
    self.frame = CGRectMake(CGRectGetMidX(self.view.bounds) - width/2, CGRectGetMidY(self.view.bounds) - height/2, width, height);
    
    UIView *backView = [[UIView alloc] initWithFrame:self.frame];
    backView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:backView];
    
    UIView *frontView = [[UIView alloc] initWithFrame:self.frame];
    frontView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:frontView];
    
    UISwipeGestureRecognizer *swipeRightGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(viewSwiped:)];
    UISwipeGestureRecognizer *swipeLeftGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(viewSwiped:)];
    [swipeLeftGesture setDirection:UISwipeGestureRecognizerDirectionLeft];
    [frontView addGestureRecognizer:swipeRightGesture];
    [frontView addGestureRecognizer:swipeLeftGesture];
    
    
}

- (void)viewSwiped:(UISwipeGestureRecognizer *)sender {
    
    if (self.open == YES) {
        
        self.open = NO;
    } else {
        sender.view.backgroundColor = [UIColor yellowColor];
        CGRect frame = sender.view.frame;
        if (sender.direction == UISwipeGestureRecognizerDirectionLeft){
            frame.size.width-=50;
            
        } else if (sender.direction == UISwipeGestureRecognizerDirectionRight){
            frame.size.width-=50;
            frame.origin.x+=50;
        }
        sender.view.frame = frame;
        
        self.open = YES;
    }
    
}



@end

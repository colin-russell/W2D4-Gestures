//
//  PanViewController.m
//  Gestures
//
//  Created by Colin on 2018-04-19.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import "PanViewController.h"

@interface PanViewController ()

@end

@implementation PanViewController

- (IBAction)redViewPanned:(UIPanGestureRecognizer *)sender {
    CGPoint locationInView = [sender locationInView:self.view];
    sender.view.center = locationInView;
}



@end

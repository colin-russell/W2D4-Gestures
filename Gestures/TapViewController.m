//
//  TapViewController.m
//  Gestures
//
//  Created by Colin on 2018-04-19.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import "TapViewController.h"

@interface TapViewController ()


@end

@implementation TapViewController

- (void)viewDidLoad {
    CGFloat width = 100;
    CGFloat height = 100;
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds) - width/2, CGRectGetMidY(self.view.bounds) - height/2, width, height);
    UIView *view = [[UIView alloc] initWithFrame:frame];
    view.backgroundColor = [UIColor blueColor];
    [self.view addSubview:view];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTapped:)];
    [view addGestureRecognizer:tapGesture];
}

- (void)viewTapped:(UIPinchGestureRecognizer *)sender {
    NSLog(@"tapped");
    if (sender.view.backgroundColor == [UIColor blueColor]){
        sender.view.backgroundColor = [UIColor whiteColor];
    }else {
        sender.view.backgroundColor = [UIColor blueColor];
    }
    
}
@end

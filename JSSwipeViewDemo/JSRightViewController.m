//
//  JSRightViewController.m
//  JSSwipeViewDemo
//
//  Created by Jayant Sani on 7/23/14.
//  Copyright (c) 2014 Jayant Sani. All rights reserved.
//

#import "JSRightViewController.h"
#import "JSSwipeView.h"

@interface JSRightViewController ()

@end

@implementation JSRightViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Third Swipe View";
	
    self.swipeView = [[JSSwipeView alloc] initWithFrame:self.view.bounds];
    self.swipeView.backgroundColor = [UIColor blueColor];
    
    __weak JSRightViewController *weakSelf = self;
    
    [self.swipeView setUpRightSwipeAction:^{
        [weakSelf rightActionViewController];
    }];
    
    [self.view addSubview:self.swipeView];
}

- (void)rightActionViewController
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end

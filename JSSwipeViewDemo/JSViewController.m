//
//  JSViewController.m
//  JSSwipeViewDemo
//
//  Created by Jayant Sani on 7/23/14.
//  Copyright (c) 2014 Jayant Sani. All rights reserved.
//

#import "JSViewController.h"
#import "JSLeftViewController.h"
#import "JSRightViewController.h"
#import "JSSwipeView.h"

@interface JSViewController ()

@end

@implementation JSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Second Swipe View";
	
    self.swipeView = [[JSSwipeView alloc] initWithFrame:self.view.bounds];
    self.swipeView.backgroundColor = [UIColor whiteColor];
    
    __weak JSViewController *weakSelf = self;
    
    [self.swipeView setUpLeftSwipeAction:^{
        [weakSelf leftActionViewController];
    }];
    
    [self.swipeView setUpRightSwipeAction:^{
        [weakSelf rightActionViewController];
    }];
    
    [self.view addSubview:self.swipeView];
}

- (void)leftActionViewController
{
    JSRightViewController *rightViewController = [[JSRightViewController alloc] init];
    [self.navigationController pushViewController:rightViewController animated:YES];
}

- (void)rightActionViewController
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end

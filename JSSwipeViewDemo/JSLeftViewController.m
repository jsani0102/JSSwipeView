//
//  JSLeftViewController.m
//  JSSwipeViewDemo
//
//  Created by Jayant Sani on 7/23/14.
//  Copyright (c) 2014 Jayant Sani. All rights reserved.
//

#import "JSLeftViewController.h"
#import "JSViewController.h"
#import "JSSwipeView.h"

@interface JSLeftViewController ()

@end

@implementation JSLeftViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"First Swipe View";
	
    self.swipeView = [[JSSwipeView alloc] initWithFrame:self.view.bounds];
    self.swipeView.backgroundColor = [UIColor redColor];
    
    __weak JSLeftViewController *weakSelf = self;
    
    [self.swipeView setUpLeftSwipeAction:^{
        [weakSelf leftActionViewController];
    }];
    
    [self.view addSubview:self.swipeView];
}

- (void)leftActionViewController
{
    JSViewController *nextViewController = [[JSViewController alloc] init];
    [self.navigationController pushViewController:nextViewController animated:YES];
}

@end

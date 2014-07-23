//
//  JSSwipeView.m
//  JSSwipeViewDemo
//
//  Created by Jayant Sani on 7/23/14.
//  Copyright (c) 2014 Jayant Sani. All rights reserved.
//

#import "JSSwipeView.h"

@implementation JSSwipeView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(doRightSwipeAction)];
        self.rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
        
        self.leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(doLeftSwipeAction)];
        self.leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
        
        [self addGestureRecognizer:self.rightSwipe];
        [self addGestureRecognizer:self.leftSwipe];
    }
    return self;
}

- (void)setUpRightSwipeAction:(swipeViewBlock)rightSwipeAction
{
    self.rightSwipeAction = rightSwipeAction;
}

- (void)setUpLeftSwipeAction:(swipeViewBlock)leftSwipeAction
{
    self.leftSwipeAction = leftSwipeAction;
}

- (void)doRightSwipeAction
{
    if (self.rightSwipeAction)
    {
        self.rightSwipeAction();
    }
}

- (void)doLeftSwipeAction
{
    if (self.leftSwipeAction)
    {
        self.leftSwipeAction();
    }
}

@end

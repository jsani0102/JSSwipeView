//
//  JSSwipeView.h
//  JSSwipeViewDemo
//
//  Created by Jayant Sani on 7/23/14.
//  Copyright (c) 2014 Jayant Sani. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^swipeViewBlock)();

@interface JSSwipeView : UIView

@property (strong, nonatomic) UISwipeGestureRecognizer *rightSwipe;
@property (strong, nonatomic) UISwipeGestureRecognizer *leftSwipe;
@property (nonatomic, copy) swipeViewBlock rightSwipeAction;
@property (nonatomic, copy) swipeViewBlock leftSwipeAction;

- (void)setUpRightSwipeAction:(swipeViewBlock)rightSwipeAction;
- (void)setUpLeftSwipeAction:(swipeViewBlock)leftSwipeAction;

@end

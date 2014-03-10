//
//  PageControl.h
//  MDLottery
//
//  Created by Hank McLaughlin on 6/20/13.
//  Copyright (c) 2013 Mindgrub. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PageControl.h"

@protocol PageControlDelegate;

@interface PageControl : UIView

// Set these to control the PageControl.
@property (nonatomic) NSInteger currentPage;
@property (nonatomic) NSInteger numberOfPages;

// Customize these as well as the backgroundColor property.
@property (nonatomic, strong) UIColor *dotColorCurrentPage;
@property (nonatomic, strong) UIColor *dotColorOtherPage;

// Optional delegate for callbacks when user taps a page dot.
@property (nonatomic, weak) NSObject<PageControlDelegate> *delegate;

@end

@protocol PageControlDelegate<NSObject>
@optional
- (void)pageControlPageDidChange:(PageControl *)pageControl;
@end
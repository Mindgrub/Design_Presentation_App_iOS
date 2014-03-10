//
//  PageControl.m
//  MDLottery
//
//  Created by Hank McLaughlin on 6/20/13.
//  Copyright (c) 2013 Mindgrub. All rights reserved.
//

#import "PageControl.h"


// Tweak these or make them dynamic.
#define kDotDiameter 12.0
#define kDotSpacer 13.0

@implementation PageControl
@synthesize currentPage;
@synthesize numberOfPages;


- (void)setCurrentPage:(NSInteger)page
{
    currentPage = MIN(MAX(0, page), self.numberOfPages-1);
    [self setNeedsDisplay];
}

- (void)setNumberOfPages:(NSInteger)pages
{
    numberOfPages = MAX(0, pages);
    currentPage = MIN(MAX(0, self.currentPage), numberOfPages-1);
    [self setNeedsDisplay];
}

- (id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        // Default colors.
        self.backgroundColor = [UIColor clearColor];
        self.dotColorCurrentPage = [UIColor orangeColor];
        self.dotColorOtherPage = [UIColor blackColor];
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder])
    {
        self.dotColorCurrentPage = [UIColor orangeColor];
        self.dotColorOtherPage = [UIColor blackColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetAllowsAntialiasing(context, true);
    
    CGRect currentBounds = self.bounds;
    CGFloat dotsWidth = self.numberOfPages*kDotDiameter + MAX(0, self.numberOfPages-1)*kDotSpacer;
    CGFloat x = CGRectGetMidX(currentBounds)-dotsWidth/2;
    CGFloat y = CGRectGetMidY(currentBounds)-kDotDiameter/2;
    for (int i=0; i<self.numberOfPages; i++)
    {
        
        if (i == self.currentPage)
        {
            CGRect circleRect = CGRectMake(x, y, kDotDiameter, kDotDiameter);
            CGContextSetFillColorWithColor(context, self.dotColorCurrentPage.CGColor);
            CGContextFillEllipseInRect(context, circleRect);
        }
        else
        {
            CGRect circleRect = CGRectMake(x + 1, y + 1, kDotDiameter - 2, kDotDiameter - 2);
            CGContextSetLineWidth(context, 2.0);
            CGContextSetStrokeColorWithColor(context, self.dotColorOtherPage.CGColor);
            CGContextStrokeEllipseInRect(context, circleRect);
        }
        x += kDotDiameter + kDotSpacer;
    }
}



- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if (!self.delegate) return;
    
    CGPoint touchPoint = [[[event touchesForView:self] anyObject] locationInView:self];
    
    CGFloat dotSpanX = self.numberOfPages*(kDotDiameter + kDotSpacer);
    CGFloat dotSpanY = kDotDiameter + kDotSpacer;
    
    CGRect currentBounds = self.bounds;
    CGFloat x = touchPoint.x + dotSpanX/2 - CGRectGetMidX(currentBounds);
    CGFloat y = touchPoint.y + dotSpanY/2 - CGRectGetMidY(currentBounds);
    
    if ((x<0) || (x>dotSpanX) || (y<0) || (y>dotSpanY)) return;
    
    self.currentPage = floor(x/(kDotDiameter+kDotSpacer));
    if ([self.delegate respondsToSelector:@selector(pageControlPageDidChange:)])
    {
        [self.delegate pageControlPageDidChange:self];
    }
}

@end
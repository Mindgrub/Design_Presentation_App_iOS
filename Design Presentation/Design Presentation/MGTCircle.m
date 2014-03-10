//
//  MGTCircle.m
//  Design Presentation
//
//  Created by Hank on 3/10/14.
//  Copyright (c) 2014 Mindgrub. All rights reserved.
//

#import "MGTCircle.h"

@implementation MGTCircle


- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [UIColor whiteColor].CGColor);
    
    CGContextFillRect(context, rect);
    
    CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
    
    CGContextFillEllipseInRect(context, rect);
    
}


@end

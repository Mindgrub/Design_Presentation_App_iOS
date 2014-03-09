//
//  UIFont+DesignHandoff.m
//  Design Presentation
//
//  Created by Charles Berlin on 3/9/14.
//  Copyright (c) 2014 Mindgrub. All rights reserved.
//

#import "UIFont+DesignHandoff.h"

@implementation UIFont (DesignHandoff)

+ (UIFont*) dh_CafetaFontOfSize:(CGFloat)size
{
    return [UIFont fontWithName:@"cafeta" size:size];
}

+ (UIFont*) dh_EnigmaFontOfSize:(CGFloat)size
{
    return [UIFont fontWithName:@"Enigmatic" size:size];
}

+ (UIFont*) dh_MyriadFontOfSize:(CGFloat)size
{
    return [UIFont fontWithName:@"MyriadPro-Regular" size:size];
}

@end

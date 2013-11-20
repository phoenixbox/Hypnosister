//
//  HypnosisterView.m
//  Hypnosister
//
//  Created by Shane Rogers on 11/19/13.
//  Copyright (c) 2013 Shane Rogers. All rights reserved.
//

#import "HypnosisterView.h"

@implementation HypnosisterView

- (void)drawRect:(CGRect)dirtyRect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGRect bounds = [self bounds];
    
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    float maxRadius = hypot(bounds.size.width, bounds.size.height)/ 2.0;
    
    CGContextSetLineWidth(ctx, 10);
    
//    [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1];
    [[UIColor lightGrayColor]setStroke];
    
//    CGContextAddArc(ctx, center.x, center.y, maxRadius, 0.0, M_PI * 2.0, YES);
    
//    CGContextStrokePath(ctx);
    
    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20){
        CGContextAddArc(ctx, center.x, center.y, currentRadius, 0.0, M_PI * 2.0, YES);
        CGContextStrokePath(ctx);
    }
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self){
        [self setBackgroundColor:[UIColor clearColor]];
    }
    return self;
}
@end

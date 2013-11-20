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
    
    CGContextSetRGBStrokeColor(ctx, 0.6, 0.6, 0.6, 1.0);
    
    CGContextAddArc(ctx, center.x, center.y, maxRadius, 0.0, M_PI * 2.0, YES);
    
    CGContextStrokePath(ctx);
}

@end

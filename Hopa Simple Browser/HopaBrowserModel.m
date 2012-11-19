//
//  HopaBrowserModel.m
//  Hopa Simple Browser
//
//  Created by Peter Höche on 08.11.12.
//  Copyright (c) 2012 Hopa. All rights reserved.
//

#define DEFAULT_WIDTH 800
#define DEFAULT_HEIGHT 600

#import "HopaBrowserModel.h"

@implementation HopaBrowserModel

@synthesize url = _url;
@synthesize windowWidth = _windowWidth;
@synthesize windowHeight = _windowHeight;

- (NSNumber*) windowWidth
{
    if ( _windowWidth == 0 )
        _windowWidth = [NSNumber numberWithInt:DEFAULT_WIDTH];

    return _windowWidth;
}

- (NSNumber*) windowHeight
{
    if ( _windowHeight == 0 )
        _windowHeight = [NSNumber numberWithInt:DEFAULT_HEIGHT];
    
    return _windowHeight;
}

@end

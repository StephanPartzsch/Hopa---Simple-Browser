//
//  Application.m
//  Hopa Simple Browser
//
//  Created by Peter Höche on 14.11.12.
//  Copyright (c) 2012 Hopa. All rights reserved.
//

#import "Application.h"

@implementation NSApplication (Application)

- (HopaBrowserModel *) browserModel
{
    return [[NSApp delegate] browserModel];
}

- (NSString*) browserUrl
{
    return self.browserModel.url;
}

- (void) setBrowserUrl:(NSString*)url
{
    self.browserModel.url = url;
}

- (NSNumber*) windowWidth
{
    return self.browserModel.windowWidth;
}

- (void) setWindowWidth:(NSNumber*)width;
{
    self.browserModel.windowWidth = width;
}

- (NSNumber*) windowHeight
{
    return self.browserModel.windowHeight;
}

- (void) setWindowHeight:(NSNumber*)height
{
    self.browserModel.windowHeight = height;    
}

@end

//
//  Application.h
//  Hopa Simple Browser
//
//  Created by Peter Höche on 14.11.12.
//  Copyright (c) 2012 Hopa. All rights reserved.
//

#import <AppKit/AppKit.h>
#import "HopaBrowserModel.h"

@interface NSApplication (Application)

- (NSString*) browserUrl;
- (void) setBrowserUrl:(NSString*)url;

- (NSNumber*) windowWidth;
- (void) setWindowWidth:(NSNumber*)width;

- (NSNumber*) windowHeight;
- (void) setWindowHeight:(NSNumber*)height;

@end

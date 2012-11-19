//
//  AppDelegate.h
//  Hopa Simple Browser
//
//  Created by Stephan Partzsch on 10/26/12.
//  Copyright (c) 2012 Hopa. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

#import "HopaBrowserModel.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet WebView *webview;

@property (nonatomic, strong) HopaBrowserModel *browserModel;

@end

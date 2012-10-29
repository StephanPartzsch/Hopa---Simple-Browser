//
//  AppDelegate.m
//  Hopa Simple Browser
//
//  Created by Stephan Partzsch on 10/26/12.
//  Copyright (c) 2012 Hopa. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize window;
@synthesize webview;


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{   
    NSUserDefaults *standardDefaults = [NSUserDefaults standardUserDefaults];
    
    NSString *urlPath = [standardDefaults stringForKey:@"url"];
    
    [[webview mainFrame] loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlPath]]];
}

@end

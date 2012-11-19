//
//  AppDelegate.m
//  Hopa Simple Browser
//
//  Created by Stephan Partzsch on 10/26/12.
//  Copyright (c) 2012 Hopa. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate()

- (void) registerObservers;
- (void) updateWindowSize;

@end

@implementation AppDelegate

@synthesize window = _window;
@synthesize webview = _webview;
@synthesize browserModel = _browserModel;

- (HopaBrowserModel *) browserModel
{
    if ( _browserModel == nil )
    {
        _browserModel = [[HopaBrowserModel alloc] init];
    }
    
    return _browserModel;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [self registerObservers];    
}

-(BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender
{
    return YES;
}

- (void) registerObservers
{
    [self.browserModel addObserver:self forKeyPath:@"url" options:NSKeyValueObservingOptionOld context:NULL];
    [self.browserModel addObserver:self forKeyPath:@"windowWidth" options:NSKeyValueObservingOptionOld context:NULL];
    [self.browserModel addObserver:self forKeyPath:@"windowHeight" options:NSKeyValueObservingOptionOld context:NULL];
}

- (void)observeValueForKeyPath:(NSString *)keyPath 
                      ofObject:(id)object 
                        change:(NSDictionary *)change 
                       context:(void *)context 
{
    if ( [keyPath isEqualToString:@"url"] )
    {
        NSURL *url = [NSURL URLWithString:[object valueForKeyPath:keyPath]];
        WebFrame *mainFrame = [self.webview mainFrame];        

        [mainFrame loadRequest:[NSURLRequest requestWithURL:url]];
    }
    else if ( [keyPath isEqualToString:@"windowWidth"] || [keyPath isEqualToString:@"windowHeight"] )
    {
        [self updateWindowSize];
    }
}

- (void) updateWindowSize
{
    NSRect frame = [self.window frame];
    frame.size.width = self.browserModel.windowWidth.intValue;
    frame.size.height = self.browserModel.windowHeight.intValue;
    
    [self.window setFrame:frame display:YES animate:YES];
}

@end

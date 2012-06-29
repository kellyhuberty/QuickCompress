//
//  AppDelegate.m
//  QuickCompress
//
//  Created by Kelly Huberty on 4/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize controller;



- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
    controller = [[MainWindowController alloc]initWithWindow:_window];

    _window = controller.window;
    
    
    [controller showWindow:nil];
    
    
}

@end

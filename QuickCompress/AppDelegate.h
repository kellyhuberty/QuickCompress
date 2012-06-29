//
//  AppDelegate.h
//  QuickCompress
//
//  Created by Kelly Huberty on 4/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MainWindowController.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>{
    
    
    MainWindowController * controller;
    
}
@property (nonatomic, retain) IBOutlet MainWindowController * controller;
@property (assign) IBOutlet NSWindow *window;






@end

//
//  PDWindowController.m
//  QuickCompress
//
//  Created by Kelly Huberty on 5/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PDWindowController.h"

@interface PDWindowController ()

@end

@implementation PDWindowController

- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
        // Initialization code here.
        
    }
    
    return self;
}

-(IBAction)compress:(id)sender{
    
    
    
    
    
}


-(IBAction)openDirectory:(id)sender{
    
    
    NSApplication * thisApplication = [NSApplication sharedApplication];
        // NSLog(@"Yo here's a message");
        //NSOpenPanel *
    openDialog = [NSOpenPanel openPanel];
        // NSLog(@"Yo here's a message");
    
    [openDialog setDelegate: self];
    
    [openDialog beginSheetForDirectory:nil
                              file:nil
                             types:nil
                    modalForWindow:[thisApplication mainWindow]
                     modalDelegate:nil
                    didEndSelector:nil//The selector for recieving the file selector's data
                       contextInfo:nil];
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    
    
    
    
        // NSLog([dataFilePath objectAtIndex:0]);
    
    
    
    
}




- (void)windowDidLoad
{
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

@end

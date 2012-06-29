    //
    //  PDWindowController.m
    //  QuickCompress
    //
    //  Created by Kelly Huberty on 5/3/12.
    //  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
    //

#import "MainWindowController.h"

 



@implementation MainWindowController

@synthesize leaveOriginalButton;
@synthesize recurseButton;
@synthesize pathSelector;
@synthesize filetypeSelector;


- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
            // Initialization code here.
        
        model = [[PDCompressor alloc]init];
        
    }
    
    return self;
}

-(IBAction)compress:(id)sender{
    
    
    NSLog(@"Yo here's a message");
    
    
}


-(IBAction)openDirectory:(id)sender{
    
    NSLog(@"Yo here's a message");
    NSApplication * thisApplication = [NSApplication sharedApplication];
         NSLog(@"Yo here's a message");
        //NSOpenPanel *
    openDialog = [NSOpenPanel openPanel];
         NSLog(@"Yo here's a message");
    
    [openDialog setDelegate: self];
    
         [openDialog setCanChooseDirectories:YES];
    
        [openDialog beginSheetModalForWindow:self.window completionHandler:nil];
    
    /*
    [openDialog beginSheetForDirectory:nil
                                  file:nil
                                 types:nil
                        modalForWindow:[self window]
                         modalDelegate:self
                        didEndSelector:nil//The selector for recieving the file selector's data
                           contextInfo:nil];
     */
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    
    
    
    
        // NSLog([dataFilePath objectAtIndex:0]);
    
    
    
    
}




- (BOOL)panel:(id)sender validateURL:(NSURL *)url error:(NSError **)outError{
    
    NSFileManager * manager = [NSFileManager defaultManager];
    NSError * error;
    NSDictionary * fileAttriutes = [manager attributesOfItemAtPath:[url path] error:&error];


    if (NSFileTypeDirectory == [fileAttriutes valueForKey:@"NSFileType"]){
    
        [pathSelector setURL:url];
        
            //[model setStartPath:url];
    }
    
    
    
    return false;
    
}


- (void)windowDidLoad
{
    [super windowDidLoad];
    
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

@end

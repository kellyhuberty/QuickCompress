    //
    //  PDWindowController.h
    //  QuickCompress
    //
    //  Created by Kelly Huberty on 5/3/12.
    //  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
    //

#import <Cocoa/Cocoa.h>
#import "PDCompressor.h"

@interface MainWindowController : NSWindowController<NSOpenSavePanelDelegate>{
    
    
    NSOpenPanel *openDialog;
    
    
    PDCompressor * model;
    
    
}
@property (assign) IBOutlet NSPathControl * pathSelector;
@property (assign) IBOutlet NSPopUpButton * filetypeSelector;
@property (assign) IBOutlet NSButton * recurseButton;
@property (assign) IBOutlet NSButton * leaveOriginalButton;







-(IBAction)compress:(id)sender;
-(IBAction)openDirectory:(id)sender;

- (NSString *)panel:(id)sender userEnteredFilename:(NSString *)filename confirmed:(BOOL)okFlag;



@end

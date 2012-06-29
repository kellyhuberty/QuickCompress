//
//  PDWindowController.h
//  QuickCompress
//
//  Created by Kelly Huberty on 5/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PDWindowController : NSWindowController<NSOpenSavePanelDelegate>{
    
    
    NSOpenPanel *openDialog;
    
    
    
}
-(IBAction)compress:(id)sender;



@end

//
//  PDCompressor.h
//  QuickCompress
//
//  Created by Kelly Huberty on 5/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PDCompressor : NSObject{
    NSMutableDictionary * imageRef;
    NSMutableDictionary * textRef;
    
    
}
-(NSString *)recurseLoop:(NSURL *)directory;



@end

//
//  PDCompressor.m
//  QuickCompress
//
//  Created by Kelly Huberty on 5/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PDCompressor.h"

@implementation PDCompressor







-(NSString *)recurseLoop:(NSURL *)directory{
    NSFileManager * manager = [NSFileManager defaultManager];
    NSLog(@"sdafjh");
    NSDirectoryEnumerator * enumerator = [manager enumeratorAtPath:[directory path]];
    NSLog(@"sdafjh");

    NSURL * fileURL = @"kj";
   
    while (fileURL = [enumerator nextObject]){
        
        
            NSLog(fileURL);
        
            //[self convertFile: fileURL];
        
    }
    
    return @"end";
}



-(void)convertFile:(NSURL *)location {
    NSString * ext = [location pathExtension];
    
    
    if([self isPhoto:ext]){
     
        [self convertImgFile:location];
        
    }
    
    if([self isHypertext:ext]){
        
        [self convertTxtFile:location];

    }
    
    
    

}


-(BOOL)isPhoto:(NSString * )ext{
    
    NSArray * validExt = [[NSArray alloc]initWithObjects:@"psd",  @"jpg",@"jpeg",@"tiff",@"tif", nil];
    for (int i = 0; i < [validExt count]; ++i) {
        if ([(NSString *)[validExt objectAtIndex:i] caseInsensitiveCompare:ext] == 0) {
                //[validExt release];

            return true;
        }
    }
    return false;
    
}


-(BOOL)isHypertext:(NSString * )ext{
    
    NSArray * validExt = [[NSArray alloc]initWithObjects:@"html",  @"tpl",@"php" nil];
    for (int i = 0; i < [validExt count]; ++i) {
        if ([(NSString *)[validExt objectAtIndex:i] caseInsensitiveCompare:ext] == 0) {

            
            return true;
        }
    }
    return false;
    
}




-(void)convertImgFile:(NSData *)imgData{
    



}




-(void)convertTxtFile:(NSData *)textData{
    
    NSString * text = [[NSString alloc]initWithData:textData encoding:kCFStringEncodingUTF8]; 
    
    NSString * regex = @"<img[^\>]+src=\"[^\>]+\">";
    NSError * error;
    NSRegularExpression * expression = [ NSRegularExpression regularExpressionWithPattern:regex options:NSRegularExpressionCaseInsensitive error:&error ];
    
    NSArray * matches = [expression matchesInString:text options:NSMatchingWithoutAnchoringBounds range:nil];


        //[self parseImgTags:matches ofText:text];
    
    [expression enumerateMatchesInString:text
                            options:0
                              range:NSMakeRange(0, [text length])
                         usingBlock:^(NSTextCheckingResult *match, NSMatchingFlags flags, BOOL *stop){
                             
                             text rep
                             
                             
                         }];
    
}


-(void)parseImgTags:(NSArray *)matches ofText:(NSString *)text{
    
    for (int i = 0; i < [matches count]; ++i) {
        
        NSTextCheckingResult * result = [matches objectAtIndex:i];
    
        NSString * string = [text substringWithRange:[result range]];
    
            //NSRegularExpression regularExpressionCheckingResultWithRanges:count:regularExpression:
        NSString * regex = @"src=\"[^\"]+";
        NSRegularExpression * exp = [NSRegularExpression regularExpressionWithPattern:regex options:NSRegularExpressionCaseInsensitive error:&error ];
        [exp firstMatchInString:string options: range:nil]
        
    }
    
}





@end

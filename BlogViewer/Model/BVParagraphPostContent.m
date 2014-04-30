//
//  BVParagraphPostContent.m
//  BlogViewer
//
//  Created by Murillo Nicacio de Maraes on 4/26/14.
//  Copyright (c) 2014 This Impossible Life. All rights reserved.
//

#import "BVParagraphPostContent.h"

@implementation BVParagraphPostContent

#pragma makr - Paragraph Initialization
-(instancetype)initWithText:(NSString *)text
{
    self = [self init];
    
    if (self) {
        _text = text;
    }
    
    return self;
}

#pragma mark - Paragraph Creation
+(id)paragraphWithText:(NSString *)text
{
    return [[self alloc] initWithText:text];
}
@end

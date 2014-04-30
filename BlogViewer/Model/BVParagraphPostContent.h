//
//  BVParagraphPostContent.h
//  BlogViewer
//
//  Created by Murillo Nicacio de Maraes on 4/26/14.
//  Copyright (c) 2014 This Impossible Life. All rights reserved.
//

#import "BVPostContent.h"

@interface BVParagraphPostContent : BVPostContent

#pragma mark - Paragraph Properties
@property (nonatomic) NSString *text;

#pragma mark - Paragraph Initialization
-(instancetype)initWithText:(NSString *)text;

#pragma mark - Paragraph Creation
+(id)paragraphWithText:(NSString *)text;

@end

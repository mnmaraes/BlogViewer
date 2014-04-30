//
//  BVPost.m
//  BlogViewer
//
//  Created by Murillo Nicacio de Maraes on 4/26/14.
//  Copyright (c) 2014 This Impossible Life. All rights reserved.
//

#import "BVPost.h"

#import "BVPostContent.h"

@interface BVPost ()

@property (nonatomic, readwrite) NSMutableArray *contents;

@end

@implementation BVPost

#pragma mark - Post initialization
-(instancetype)initWithTitle:(NSString *)title
{
    self = [self init];
    
    if (self) {
        _title = title;
        _contents = [NSMutableArray new];
    }
    
    return self;
}

#pragma mark - Post creation
+(id)postWithTitle:(NSString *)title
{
    return [[BVPost alloc] initWithTitle:title];
}

#pragma mark - Content Management
-(void)addPostContent:(BVPostContent *)content
{
    [[self mutableContents] addObject:content];
    content.post = self;
}

-(void)insertPostContent:(BVPostContent *)content atPosition:(NSUInteger)index
{
    [[self mutableContents] insertObject:content atIndex:index];
    content.post = self;
}

-(void)removeContent:(BVPostContent *)content
{
    [[self mutableContents] removeObject:content];
    content.post = nil;
}

#pragma mark - Helper methods
-(NSMutableArray *)mutableContents
{
    return (NSMutableArray *)_contents;
}

@end

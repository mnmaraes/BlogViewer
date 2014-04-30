//
//  BVPost.h
//  BlogViewer
//
//  Created by Murillo Nicacio de Maraes on 4/26/14.
//  Copyright (c) 2014 This Impossible Life. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BVPostContent;

@interface BVPost : NSObject

#pragma mark - Post Properties
@property (nonatomic) NSString *title;
@property (nonatomic, readonly) NSArray *contents;

#pragma mark - Post init methods
-(instancetype)initWithTitle:(NSString *)title;

#pragma mark - Post creation methods;
+(id)postWithTitle:(NSString *)title;

#pragma mark - Content Management
-(void)addPostContent:(BVPostContent *)content;
-(void)insertPostContent:(BVPostContent *)content atPosition:(NSUInteger)index;
-(void)removeContent:(BVPostContent *)content;

@end

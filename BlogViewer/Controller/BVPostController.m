//
//  BVPostController.m
//  BlogViewer
//
//  Created by Murillo Nicacio de Maraes on 4/28/14.
//  Copyright (c) 2014 This Impossible Life. All rights reserved.
//

#import "BVPostController.h"

@implementation BVPostController

-(instancetype)initWithPost:(BVPost *)post
{
    self = [self init];
    
    if (self) {
        _post = post;
    }
    
    return self;
}

#pragma mark - Post Controller Creation
+(id)controllerWithPost:(BVPost *)post
{
    return  [[self alloc] initWithPost:post];
}

-(void)configureViewModel
{
    //TODO.
}

@end

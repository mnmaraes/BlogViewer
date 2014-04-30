//
//  BVPostController.h
//  BlogViewer
//
//  Created by Murillo Nicacio de Maraes on 4/28/14.
//  Copyright (c) 2014 This Impossible Life. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BVPost, BVPostViewModel;

@interface BVPostController : NSObject

#pragma mark - Post Controller Properties
@property (nonatomic) BVPost *post;
@property (nonatomic) BVPostViewModel *viewModel;

#pragma mark - Post Controller Creation
+(id)controllerWithPost:(BVPost *)post;

@end

//
//  BVPostViewModel.h
//  BlogViewer
//
//  Created by Murillo Nicacio de Maraes on 4/29/14.
//  Copyright (c) 2014 This Impossible Life. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BVPostViewModel : NSObject

#pragma mark - View Being Managed
@property (nonatomic, readonly) UIView *view;

#pragma mark - Post View Attributes
@property (nonatomic) NSString *title;
@property (nonatomic) NSArray *contentViewModels;

#pragma mark - Post View Initialization
-(instancetype)initWithTitle:(NSString *)title
        andContentViewModels:(NSArray *)contentViewModels;

#pragma mark - Post View Model Creation
+(id)postViewModelWithTitle:(NSString *)title
       andContentViewModels:(NSArray *)contentViewModels;

@end

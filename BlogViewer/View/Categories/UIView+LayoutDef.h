//
//  UIView+LayoutDef.h
//  BlogViewer
//
//  Created by Murillo Nicacio de Maraes on 4/25/14.
//  Copyright (c) 2014 This Impossible Life. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LayoutDef;

@interface UIView (LayoutDef)

@property (nonatomic) LayoutDef *layoutDef;

-(instancetype)initWithLayoutDef:(LayoutDef *)layoutDef;

@end

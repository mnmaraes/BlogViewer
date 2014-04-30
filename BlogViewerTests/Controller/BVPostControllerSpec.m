//
//  BVPostControllerSpec.m
//  BlogViewer
//
//  Created by Murillo Nicacio de Maraes on 4/28/14.
//  Copyright (c) 2014 This Impossible Life. All rights reserved.
//

#import "Specta.h"

#define EXP_SHORTHAND
#import "Expecta.h"

#import "OCMock.h"

#import "BVPostController.h"

#import "BVPost.h"

SpecBegin(BVPostController)

describe(@"BVPostController", ^{
    beforeEach(^{
        
    });
    
    it(@"should be able to be created with a post", ^{
        id post = [OCMockObject mockForClass:[BVPost class]];
        
        BVPostController *controller = [BVPostController controllerWithPost:post];
        
        expect(controller).toNot.beNil();
        expect(controller.post).to.equal(post);
    });
    
    context(@"after creation", ^{
        __block BVPostController *controller;
        __block id post;
        
        beforeEach(^{
            post = [OCMockObject mockForClass:[BVPost class]];
            controller = [BVPostController controllerWithPost:post];
        });
        
//        it(@"should be able to create an appropriate view model", ^{
//            expect(controller.viewModel).toNot.beNil();
//        });
        
    });
    
    afterEach(^{
        
    });
});

SpecEnd

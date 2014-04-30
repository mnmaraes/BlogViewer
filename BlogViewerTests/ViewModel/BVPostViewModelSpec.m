//
//  BVPostViewModelSpec.m
//  BlogViewer
//
//  Created by Murillo Nicacio de Maraes on 4/29/14.
//  Copyright (c) 2014 This Impossible Life. All rights reserved.
//

#import "Specta.h"

#define EXP_SHORTHAND
#import "Expecta.h"

#import "BVPostViewModel.h"

SpecBegin(BVPostViewModel)

describe(@"BVPostViewModel", ^{
    __block BVPostViewModel *viewModel;
    
    beforeEach(^{
        viewModel = [BVPostViewModel postViewModelWithTitle:@"Title" andContentViewModels:@[]];
    });
    
    it(@"should be created properly", ^{
        expect(viewModel).toNot.beNil();
        expect(viewModel.title).to.equal(@"Title");
        expect(viewModel.contentViewModels).to.equal(@[]);
        expect(viewModel.view).toNot.beNil();
    });
    
    context(@"managed view", ^{
        it(@"should be properly configured", ^{
           //TO DO.
        });
    });
    
    afterEach(^{
        
    });
});

SpecEnd

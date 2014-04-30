//
//  BVParagraphViewModelSpec.m
//  BlogViewer
//
//  Created by Murillo Nicacio de Maraes on 4/29/14.
//  Copyright (c) 2014 This Impossible Life. All rights reserved.
//

#import "Specta.h"

#define EXP_SHORTHAND
#import "Expecta.h"

#import "BVParagraphViewModel.h"

SpecBegin(BVParagraphViewModel)

describe(@"BVParagraphViewModel", ^{
    __block BVParagraphViewModel *viewModel;
    beforeEach(^{
        viewModel = [BVParagraphViewModel paragraphViewModelWithText:@"Text"];
    });
    
    it(@"should do this", ^{
        expect(viewModel).toNot.beNil();
        expect(viewModel.text).to.equal(@"Text");
        expect(viewModel.view).toNot.beNil();
    });
    
    context(@"managed view", ^{
        it(@"should be properly configured", ^{
            expect(viewModel.view.text).to.equal(viewModel.text);
        });
    });
    
    afterEach(^{
        
    });
});

SpecEnd

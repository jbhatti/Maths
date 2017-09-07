//
//  QuestionFactory.m
//  Maths
//
//  Created by Jaison Bhatti on 2017-09-06.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
    //
    }
    return self;
}


- (Question *) genRandomQuestion {

    NSArray *questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"DivisionQuestion", @"MultiplicationQuestion"];
    int randomNum = arc4random_uniform(4);
    NSString* randomOperationGenerator = questionSubclassNames[randomNum];
    
    return [[NSClassFromString(randomOperationGenerator) alloc] init];
}


@end

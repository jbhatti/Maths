//
//  AdditionQuestion.m
//  Maths
//
//  Created by Jaison Bhatti on 2017-09-05.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init {
    self = [super init];
        if (self) {
            int randomNum1;
            int randomNum2;
            randomNum1 = arc4random_uniform(91) + 10;
            randomNum2 = arc4random_uniform(91) + 10;
            
            NSString * generateQuestion = [NSString stringWithFormat:@"%i + %i", randomNum1, randomNum2];
            
            _question = generateQuestion;
            
            int sumOfTwoRandomNums;
            sumOfTwoRandomNums = randomNum1 + randomNum2;
            
            _answer = sumOfTwoRandomNums;
            
            _startTime = [NSDate date];
        }
    return self;
}

// overriding getter
- (NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

//calculating the time difference
- (NSTimeInterval)answerTime {
    NSTimeInterval duration = [_endTime timeIntervalSinceDate:_startTime];
    return duration;
}




@end

//
//  AdditionQuestion.h
//  Maths
//
//  Created by Jaison Bhatti on 2017-09-05.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic, copy) NSString *question;
@property (nonatomic) NSInteger answer;

@property (nonatomic, strong) NSDate* startTime;
@property (nonatomic, strong) NSDate* endTime;

@property (nonatomic) NSInteger rightValue;
@property (nonatomic) NSInteger leftValue;

- (instancetype)init;

- (NSTimeInterval)answerTime;

- (void) genQuestion;


@end

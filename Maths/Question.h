//
//  AdditionQuestion.h
//  Maths
//
//  Created by Jaison Bhatti on 2017-09-05.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property NSString *question;
@property (nonatomic) NSInteger answer;

@property NSDate* startTime;
@property NSDate* endTime;

- (instancetype)init;

- (NSTimeInterval)answerTime;




@end

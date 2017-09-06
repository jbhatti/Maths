//
//  InputHandler.m
//  Maths
//
//  Created by Jaison Bhatti on 2017-09-06.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

- (NSString *) parseAnswer {
char userAnswer[255];
fgets(userAnswer, 255, stdin);

NSString *userAnswerInString = [NSString stringWithCString:userAnswer encoding:NSUTF8StringEncoding];
NSString *parseUserAnswer = [userAnswerInString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

    return parseUserAnswer;
}

@end

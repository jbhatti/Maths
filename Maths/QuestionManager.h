//
//  QuestionManager.h
//  Maths
//
//  Created by Jaison Bhatti on 2017-09-06.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionManager : NSObject

@property NSMutableArray* questions;

- (NSString *) timeOutput;

@end

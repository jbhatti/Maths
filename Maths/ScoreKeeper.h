//
//  ScoreKeeper.h
//  Maths
//
//  Created by Jaison Bhatti on 2017-09-06.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property int correct;
@property int incorrect;
@property float total;

- (void) generateScore;
    
@end

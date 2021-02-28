//
//  Dice.m
//  Lab6
//
//  Created by Yuki Tsukada on 2021/02/28.
//

#import "Dice.h"

@implementation Dice

- (instancetype) init {
    if (self = [super init]) {
        _currentValue = self.randomizeValue;
    }
    return self;
}

- (int) randomizeValue {
    return arc4random_uniform(6) + 1;  // (0+1)~(5+1)
}

- (NSString *) returnDieFace {
    switch (self.currentValue) {
        case 1:
            return @"⚀";
        case 2:
            return @"⚁";
        case 3:
            return @"⚂";
        case 4:
            return @"⚃";
        case 5:
            return @"⚄";
        case 6:
            return @"⚅";
        default:
            return nil;
    }
}

@end

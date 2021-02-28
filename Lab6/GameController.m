//
//  GameController.m
//  Lab6
//
//  Created by Yuki Tsukada on 2021/02/28.
//

#import "GameController.h"

@implementation GameController

- (instancetype) init {
    if (self = [super init]) {
        _fiveDiceContainer = [NSMutableArray new];
        _heldDice = [NSMutableDictionary new];
    }
    return self;
}

- (void) holdDie: (NSString *) targetDieNumberStr {
    int targetDieNumber = (int)[targetDieNumberStr integerValue];
    Dice *targetDie = self.fiveDiceContainer[targetDieNumber - 1];
    targetDie.isHeld = !targetDie.isHeld;
    switch (targetDieNumber) {
        case 1:
            self.heldDice[@1] = self.fiveDiceContainer[0];
            break;
        case 2:
            self.heldDice[@2] = self.fiveDiceContainer[1];
            break;
        case 3:
            self.heldDice[@3] = self.fiveDiceContainer[2];
            break;
        case 4:
            self.heldDice[@4] = self.fiveDiceContainer[3];
            break;
        case 5:
            self.heldDice[@5] = self.fiveDiceContainer[4];
            break;
    }
}

@end

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

- (void) resetDice {
    for (Dice *eachDie in self.fiveDiceContainer) {
        eachDie.isHeld = false;
    }
}

- (NSString *) returnCurrentDice {
    Dice *die1 = self.fiveDiceContainer[0];
    Dice *die2 = self.fiveDiceContainer[1];
    Dice *die3 = self.fiveDiceContainer[2];
    Dice *die4 = self.fiveDiceContainer[3];
    Dice *die5 = self.fiveDiceContainer[4];
    NSString *currentDice = [NSString stringWithFormat:@"%@ %@ %@ %@ %@", die1.returnDieFace, die2.returnDieFace, die3.returnDieFace, die4.returnDieFace, die5.returnDieFace];
    return currentDice;
}

- (int) returnCurrentScore {
    int score = 0;
    for (Dice *eachDie in self.fiveDiceContainer) {
        if (eachDie.currentValue != 3) {
            score += eachDie.currentValue;
        }
    }
    return score;
}

- (void) printCurrentGameState {
    NSLog(@"--------------------");
    NSLog(@"--  Current Dice  --");
    NSLog(@"%@", self.returnCurrentDice);
    NSLog(@"");
    NSLog(@"--   Total Score  --");
    NSLog(@"Score: %d", self.returnCurrentScore);
    NSLog(@"--------------------");
}

@end

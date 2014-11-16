//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    self.arrayStrong = arrayToRemember;
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    self.arrayCopy = arrayToCopy;
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    self.someFloat = floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember {
    return self.arrayStrong;
}

- (NSMutableArray *) arrayYouShouldCopy {
    return self.arrayCopy;
}

- (CGFloat) floatYouShouldRemember {
    
    return self.someFloat;
}

@end
//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    int input = [number intValue];
    return [NSNumber numberWithInt:(input*2)];
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSInteger low = MIN(number, otherNumber);
    NSInteger high = MAX(number, otherNumber);
    
    NSMutableArray *result = [@[] mutableCopy];
    for(NSInteger i=low; i<=high; i++) {
        [result addObject:[NSNumber numberWithLong:(long)i]];
    }
    
    return result;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    
    NSSortDescriptor *sortDesc = [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES];
    NSArray * result = [arrayOfNumbers sortedArrayUsingDescriptors:@[sortDesc]];
    NSNumber *first = [result firstObject];
    
    return [first longValue];
}

@end

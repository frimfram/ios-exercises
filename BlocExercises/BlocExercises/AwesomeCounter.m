//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableString *result = [[NSMutableString alloc] init];
    
    NSInteger low = (number < otherNumber) ? number : otherNumber;
    NSInteger high = (number < otherNumber) ? otherNumber : number;
    
    for(NSInteger i=low; i<=high; i++) {
        [result appendString: [NSString stringWithFormat:@"%ld", (long)i]];
    }
    
    return result;
}

@end

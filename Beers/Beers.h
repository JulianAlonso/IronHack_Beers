//
//  Beers.h
//  BeerBrowser
//
//  Created by Alessandro on 13/10/14.
//  Copyright (c) 2014 Alessandro. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Beer;

@interface Beers : NSObject

- (void) addBeer:(Beer * )beer;
- (NSArray *)allBeers;
- (NSUInteger)count;

@end

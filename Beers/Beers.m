//
//  Beers.m
//  BeerBrowser
//
//  Created by Alessandro on 13/10/14.
//  Copyright (c) 2014 Alessandro. All rights reserved.
//

#import "Beers.h"
#import "Beer.h"

@interface Beers ()

@property (nonatomic, strong) NSMutableArray *beersDatabase;

@end

@implementation Beers

- (NSMutableArray *)beersDatabase{
	if (!_beersDatabase) {
		_beersDatabase = [[NSMutableArray alloc] init];
		NSString *path = [[NSBundle mainBundle] pathForResource:@"BeersDatabase" ofType:@"plist"];
		NSArray *plistContent = [[NSArray alloc] initWithContentsOfFile:path];
		[plistContent enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
			NSDictionary *beerData = (NSDictionary *)obj;
			Beer *b = [[Beer alloc] initWithName:beerData[@"Brand"]];
			b.country = beerData[@"Country"];
			b.alcoholGrade = [beerData[@"Alcohol"] integerValue];
			b.imageUrl = beerData[@"ImageUrl"];
			[self.beersDatabase addObject:b];
		}];
	}
	
	return _beersDatabase;
}

- (void) addBeer:(Beer * )beer{
	if (![self beerInDatabase:beer]) {
		[self.beersDatabase addObject:beer];
	}
}

- (NSArray *)allBeers{
	return [NSArray arrayWithArray:self.beersDatabase];
}

- (BOOL) beerInDatabase:(Beer *)otherBeer{
	for (Beer *b in self.beersDatabase) {
		if ([b.name isEqualToString:otherBeer.name]) {
			return YES;
		}
	}
	
	return NO;
}

- (NSUInteger)count{
	return self.beersDatabase.count;
}

@end

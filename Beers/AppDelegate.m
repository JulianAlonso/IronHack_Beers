//
//  AppDelegate.m
//  Beers
//
//  Created by Julian Alonso on 5/2/15.
//  Copyright (c) 2015 Julian Alonso. All rights reserved.
//

#import "AppDelegate.h"
#import "Beer.h"

#import "Beers.h"
#import "BeerListTableViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
//    Beer *beer = [[Beer alloc] initWithName:@"Heineken"];
//    beer.country = @"Holanda";
//    beer.alcoholGrade = 5;
//    beer.imageUrl = @"http://payload134.cargocollective.com/1/2/78699/4998518/HeinekenBottle_Final_WithIce_LowRes_1024.jpg";
//    
//    Beers *beers = [[Beers alloc] init];
//    [beers addBeer:beer];
//    [beers addBeer:beer];
//    [beers addBeer:beer];

    NSString *path = [[NSBundle mainBundle] pathForResource:@"BeersDatabase" ofType:@"json"];
    //NSURL *url = [NSURL URLWithString:@"http://localhost:8080/beer"];
    Beers *beers = [[Beers alloc] initFromJSONFile:path];
    
    UINavigationController *nc = (UINavigationController *)self.window.rootViewController;
    
    BeerListTableViewController *beerTableViewController = (BeerListTableViewController *)nc.topViewController;
    
    beerTableViewController.beers = beers;
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

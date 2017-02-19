//
//  AppDelegate.m
//  Array_01
//
//  Created by Slava on 15.02.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import "AppDelegate.h"
#import "Human.h"
#import "Cyclest.h"
#import "Runner.h"
#import "Swimmer.h"
#import "SuperMan.h"
#import "Dog.h"
#import "Cat.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
#pragma mark lvl_1
    Cyclest *cyclestMan = [Cyclest new];
    cyclestMan.name = @"Anton";
    cyclestMan.height = 183.222f;
    cyclestMan.weight = 38.343f;
    cyclestMan.sex = 1;
    
    Runner *runnerMan = [Runner new];
    runnerMan.name = @"Lena";
    runnerMan.height = 173.222f;
    runnerMan.weight = 58.343f;
    runnerMan.sex = 0;
    
    Swimmer *swimmerMan = [Swimmer new];
    swimmerMan.name = @"Roma";
    swimmerMan.height = 123.222f;
    swimmerMan.weight = 51.343f;
    swimmerMan.sex = 1;
    
    SuperMan *superMan = [SuperMan new];
    superMan.name = @"Klark";
    superMan.height = 192.32f;
    superMan.weight = 84.34f;
    superMan.sex = 1;
    superMan.isReal = 1;
    
    Dog *animalDog = [Dog new];
    animalDog.nickName = @"Bobik";
    animalDog.color = @"brovn";
    animalDog.isAgressive = 1;
    
    Cat *animalCat = [Cat new];
    animalCat.nickName = @"Barsick";
    animalCat.color = @"White";
    animalCat.isAgressive = 1;
    
#pragma mark lvl_1 and lvl_2
//    NSArray *array = @[cyclestMan, runnerMan, swimmerMan, superMan];
//    for (int i = array.count - 1; i >= 0; i--) {
//        Human *obj = [array objectAtIndex:i];
//        if ([obj isKindOfClass:[SuperMan class]]) {
//            SuperMan *str = (SuperMan *)obj;
//            NSLog(@"name - %@", str.name);
//            NSLog(@"height - %.2f", str.height);
//            NSLog(@"widht - %.2f", str.weight);
//            NSLog(@"sex - %@", str.sex? @"male" : @"female");
//            NSLog(@"is real - %@", str.isReal? @"yes" : @"no");
//            [obj moving];
//            
//            NSLog(@"===========");
//        }else {
//            NSLog(@"name - %@", obj.name);
//            NSLog(@"height - %.2f", obj.height);
//            NSLog(@"widht - %.2f", obj.weight);
//            NSLog(@"sex - %@", obj.sex? @"male" : @"female");
//            [obj moving];
//            NSLog(@"===========");
//        }
//    }
    
#pragma mark lvl_3
    
//    NSArray *arrayWhithHumanAndAnimal = @[cyclestMan, runnerMan, swimmerMan, superMan, animalCat, animalDog];
//    for (int i = 0; i < arrayWhithHumanAndAnimal.count; i++) {
//        NSString *obj = [arrayWhithHumanAndAnimal objectAtIndex:i];
//        if ([obj isKindOfClass:[Human class]]) {
//            Human *objectHuman = (Human *)obj;
//            if ([obj isKindOfClass:[SuperMan class]]) {
//                SuperMan *string = (SuperMan *)obj;
//                [string type];
//                NSLog(@"name - %@", string.name);
//                NSLog(@"height - %.2f", string.height);
//                NSLog(@"width - %.2f", string.weight);
//                NSLog(@"sex - %@", string.sex? @"male" : @"famele");
//                NSLog(@"he is real - %@", string.isReal? @"yes" : @"no");
//                [string moving];
//            } else {
//                [objectHuman type];
//                NSLog(@"name - %@", objectHuman.name);
//                NSLog(@"height - %.2f", objectHuman.height);
//                NSLog(@"width - %.2f", objectHuman.weight);
//                NSLog(@"sex - %@", objectHuman.sex? @"male" : @"female");
//                [objectHuman moving];
//            }
//        } else if ([obj isKindOfClass:[Animals class]]) {
//            Animals *objAnimals = (Animals *)obj;
//            [objAnimals type];
//            NSLog(@"nick name - %@", objAnimals.nickName);
//            NSLog(@"color - %@", objAnimals.color);
//            NSLog(@"is agresive - %@", objAnimals.isAgressive? @"yes" : @"no");
//            [objAnimals motion];
//        }
//    }

    
    NSLog(@"LVL 4");
#pragma marc lvl_4
    NSArray *arrayHuman = @[cyclestMan, runnerMan, swimmerMan, superMan];
    NSArray *arrayAnimals = @[animalDog, animalCat];
//    NSInteger humanCount = arrayHuman.count;
//    NSInteger animalsCount = arrayAnimals.count;
//    NSInteger maxCount = MAX(humanCount, animalsCount);
//    
//    for (int i = 0; i < maxCount; i++) {
//        if (i < humanCount) {
//            Human *obj = [arrayHuman objectAtIndex:i];
//            NSLog(@"%@", obj.name);
//        }
//        if (i < animalsCount) {
//            Animals *obj = [arrayAnimals objectAtIndex:i];
//            NSLog(@"%@", obj.nickName);
//        } else {
//            NSLog(@"nil");
//        }
//    }
#pragma marc lvl_5

    NSMutableArray *unsortArray = [NSMutableArray array];
    [unsortArray addObjectsFromArray:arrayHuman];
    [unsortArray addObjectsFromArray:arrayAnimals];
    NSLog(@"%@", unsortArray);
    NSArray *sortedArray = [unsortArray sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        if ([obj1 isKindOfClass:[Human class]] && [obj2 isKindOfClass:[Human class]]) {
            return  [[(Human *) obj1 name] compare:[(Human *) obj2 name]];
        } else if ([obj1 isKindOfClass:[Animals class]] && [obj2 isKindOfClass:[Animals class]]) {
            return [[(Animals *) obj1 nickName] compare:[(Animals *) obj2 nickName]];
        } else if ([obj1 isKindOfClass:[Animals class]]) {
            return NSOrderedAscending;
        } else {
            return NSOrderedAscending;
        }
    }];
    
    NSLog(@"%@", sortedArray);


    
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end

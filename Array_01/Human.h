//
//  Human.h
//  Array_01
//
//  Created by Slava on 15.02.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

@interface Human : NSObject

@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) CGFloat height;
@property (assign, nonatomic) CGFloat weight;
@property (assign, nonatomic) Boolean sex;

- (void) moving;
- (void) type;

@end

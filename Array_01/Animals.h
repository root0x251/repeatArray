//
//  Animals.h
//  Array_01
//
//  Created by Slava on 17.02.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animals : NSObject

@property(strong, nonatomic) NSString *nickName;
@property(strong, nonatomic) NSString *color;
@property(assign, nonatomic) BOOL isAgressive;

- (void) motion;
- (void) type;

@end

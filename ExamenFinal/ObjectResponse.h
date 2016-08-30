//
//  ObjectResponse.h
//  ExamenFinal
//
//  Created by Annalicia Ostos on 29/08/16.
//  Copyright © 2016 Codelko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Coord.h"
#import "MainObject.h"

@interface ObjectResponse : NSObject
@property (nonatomic, strong) Coord *coord;
@property (nonatomic, strong) MainObject *main;
@property (nonatomic, strong) NSString *name;
@end

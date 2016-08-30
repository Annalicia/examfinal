//
//  Parser.m
//  ExamenFinal
//
//  Created by Annalicia Ostos on 29/08/16.
//  Copyright © 2016 Codelko. All rights reserved.
//

#import "Parser.h"

@implementation Parser

+ (ObjectResponse *)parseGeoObject {
    //check for valid value
    if(mjsonGeo != nil) {
        // Using ObjectMapper Directly
        ObjectResponse *customizedObject = [[ObjectMapper sharedInstance] objectFromSource:mjsonGeo toInstanceOfClass:[ObjectResponse class]];
        return customizedObject;
    }
    return nil;
}

@end

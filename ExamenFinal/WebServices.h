//
//  WebServices.h
//  ExamenFinal
//
//  Created by Annalicia Ostos on 29/08/16.
//  Copyright © 2016 Codelko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WebServices : NSObject
+ (NSDictionary *)getWeatherWithLatitude:(NSString *)latitude AndLongitude:(NSString*)longitude;
+ (NSDictionary*) sendPost:(NSString*)postUrl forData:(NSString *)data andMode:(BOOL)mode;
@end

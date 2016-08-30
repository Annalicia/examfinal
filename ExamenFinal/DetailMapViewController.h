//
//  DetailMapViewController.h
//  ExamenFinal
//
//  Created by Annalicia Ostos on 28/08/16.
//  Copyright © 2016 Codelko. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailMapViewController : UIViewController

@property NSString *slatitud;
@property NSString *slongitud;
@property NSString *shumidity;
@property NSString *spressure;
@property NSString *stemp;
@property NSString *stemp_min;
@property NSString *stemp_max;
@property NSString *name;

@property (strong, nonatomic) IBOutlet UILabel *labelName;
@property (strong, nonatomic) IBOutlet UILabel *labelTempMin;
@property (strong, nonatomic) IBOutlet UILabel *labelTempMax;
@property (strong, nonatomic) IBOutlet UILabel *labelHumedad;

@end

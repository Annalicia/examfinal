//
//  ProductDetail.h
//  ExamenFinal
//
//  Created by Annalicia Ostos on 28/08/16.
//  Copyright © 2016 Codelko. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PayPalMobile.h"

@interface ProductDetail : UIViewController<PayPalPaymentDelegate>

@property NSString *nameProduct;
@property NSString *priceProduct;
@property NSString *imageProduct;



@property (strong, nonatomic) IBOutlet UILabel *productName;
@property (strong, nonatomic) IBOutlet UIImageView *productImage;
@property (strong, nonatomic) IBOutlet UILabel *productPrice;

@property (nonatomic, strong, readwrite) PayPalConfiguration *payPalConfiguration;


@end

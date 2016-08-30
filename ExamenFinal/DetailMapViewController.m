//
//  DetailMapViewController.m
//  ExamenFinal
//
//  Created by Annalicia Ostos on 28/08/16.
//  Copyright © 2016 Codelko. All rights reserved.
//

#import "DetailMapViewController.h"

@interface DetailMapViewController ()

@end

@implementation DetailMapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    self.labelName.text         = _name;
    self.labelTempMax.text      = _stemp_max;
    self.labelTempMin.text      = _stemp_min;
    self.labelHumedad.text      = _shumidity;
    //self.productImage.image   = [UIImage imageNamed:self.imageProduct];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

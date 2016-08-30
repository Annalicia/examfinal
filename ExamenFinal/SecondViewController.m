//
//  SecondViewController.m
//  ExamenFinal
//
//  Created by Annalicia Ostos on 28/08/16.
//  Copyright © 2016 Codelko. All rights reserved.
///Users/annaliciaostos/Documents/maestria_ios/ExamenFinal/ExamenFinal/SecondViewController.h

#import "SecondViewController.h"

@interface SecondViewController ()
@property NSMutableArray *productName;
@property NSMutableArray *productPrice;
@property NSMutableArray *productImage;

@property NSString *stNameSelected;
@property NSString *stPriceSelected;
@property NSString *stImageSelected;

@end

@implementation SecondViewController

/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
    // Do any additional setup after loading the view, typically from a nib.
}

//-------------------------------------------------------------------------------

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initController {
    self.productName   = [[NSMutableArray alloc] initWithObjects: @"Zapatos Adidas", @"Zapatos Nike", @"Zapatos Asics", @"Zapatos Puma", @"Zapatos Adidas", @"Zapatos Adidas", @"Zapatos Adidas", nil];
    self.productPrice   = [[NSMutableArray alloc] initWithObjects: @"100.00", @"200.00", @"300.00", @"400.00", @"500.00", @"40.00", @"1300.00", nil];
    self.productImage   = [[NSMutableArray alloc] initWithObjects: @"prod1.jpg", @"prod2.jpg", @"prod3.jpg", @"prod4.jpg", @"prod5.jpg", @"prod6.jpg", @"prod7.png", nil];
}

/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.productName.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 120;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellHome *cell = (cellHome *)[tableView dequeueReusableCellWithIdentifier:@"cellHome"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellHome" bundle:nil] forCellReuseIdentifier:@"cellHome"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellHome"];
    }
    //Fill cell with info from arrays
    cell.labelName.text = self.productName[indexPath.row];
    cell.labelPrice.text = self.productPrice[indexPath.row];
    cell.imageProduct.image = [UIImage imageNamed:self.productImage[indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.stNameSelected = self.productName[indexPath.row];
    self.stPriceSelected  = self.productPrice[indexPath.row];
    self.stImageSelected  = self.productImage[indexPath.row];
    [self performSegueWithIdentifier:@"ProductDetail" sender:self];
}

/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    if ([segue.destinationViewController isKindOfClass:[ProductDetail class]]) {
        ProductDetail *product     = [segue destinationViewController];
        product.nameProduct        = self.stNameSelected;
        product.priceProduct  = self.stPriceSelected;
        product.imageProduct        = self.stImageSelected;
        
    }

}

//-------------------------------------------------------------------------------

@end

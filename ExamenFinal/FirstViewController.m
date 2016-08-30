//
//  FirstViewController.m
//  ExamenFinal
//
//  Created by Annalicia Ostos on 28/08/16.
//  Copyright © 2016 Codelko. All rights reserved.
//

#import "FirstViewController.h"
@import GoogleMaps;

@interface FirstViewController ()

@property ObjectResponse *object;
@property Coord *coordObject;
@property NSString *name;
@property MainObject *mainObject;

@end

@implementation FirstViewController{
    GMSMapView *mapView_;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadView];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadView {
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:20.6947103
                                                            longitude:-103.4203145
                                                                 zoom:15];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView_.delegate = self;
    self.view = mapView_;
}

#pragma mark - GMSMapViewDelegate

- (void)mapView:(GMSMapView *)mapView didTapAtCoordinate:(CLLocationCoordinate2D)coordinate {

    NSString *latitude = [[NSNumber numberWithDouble:coordinate.latitude] stringValue];
    NSString *longitude = [[NSNumber numberWithDouble:coordinate.longitude] stringValue];
    mjsonGeo = [WebServices getWeatherWithLatitude:latitude AndLongitude:longitude];
    
    self.object = [Parser parseGeoObject];
    self.name = self.object.name;
    self.mainObject = self.object.main;
    
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(coordinate.latitude, coordinate.longitude);
    marker.title = self.name;
    marker.map = mapView_;
}

-(void)mapView:(GMSMapView *)mapView didTapInfoWindowOfMarker:(GMSMarker *)marker{
    [self performSegueWithIdentifier:@"DetailMap" sender:self];

}

/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.destinationViewController isKindOfClass:[DetailMapViewController class]]) {
        
        self.mainObject.temp_min = self.mainObject.temp_min - 273.15;
        self.mainObject.temp_max = self.mainObject.temp_max - 273.15;
        
        DetailMapViewController *detailMap     = [segue destinationViewController];
        detailMap.name      = self.name;
        detailMap.shumidity  = [NSString stringWithFormat:@"%f", self.mainObject.humidity];
        detailMap.stemp_min  = [NSString stringWithFormat:@"%f", self.mainObject.temp_min];
        detailMap.stemp_max  = [NSString stringWithFormat:@"%f", self.mainObject.temp_max];
        
    }
    
}




@end

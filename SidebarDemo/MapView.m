//
//  MapView.m
//  RestaurantNoahCo
//
//  Created by Fabricio Aguiar de Padua on 16/02/15.
//  Copyright (c) 2015 Pro Master Solution. All rights reserved.
//

#import "MapView.h"
#import "SWRevealViewController.h"

//#import "OpenInGoogleMapsController.h"

@interface MapView (){
    GMSMapView *mapView;
}
@end

@implementation MapView

@synthesize ViewApper;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView* img = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"LogoNovo"]];
    self.navigationItem.titleView = img;
    
    [ViewApper setFrame:[[UIScreen mainScreen] bounds]];
    
    [self.navigationController.view addSubview:ViewApper];
    
    self.title = @"Location";
    
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }

    
    GMSCameraPosition * camera = [GMSCameraPosition cameraWithLatitude:53.353170 longitude:-6.390610 zoom:15];
    mapView = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView.myLocationEnabled = YES;
    //mapView.mapType = kGMSTypeNormal;
    //mapView.settings.compassButton = YES;
    //mapView.settings.myLocationButton = YES;
    
    self.view = mapView;
    
    GMSMarker *marker = [[GMSMarker alloc]init];
    marker.position = CLLocationCoordinate2DMake(53.353170,-6.390610);
    marker.title = @"Noah's & Co";
    marker.snippet = @"Cafe & Bistro";
    marker.map = mapView;
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

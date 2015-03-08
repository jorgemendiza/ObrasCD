//
//  HACKIntervension.h
//  HACKDF
//
//  Created by Jorge Mendizabal on 3/8/15.
//  Copyright (c) 2015 Jorge Mendizabal. All rights reserved.
//

@import Foundation;
@import MapKit;
#import "Intervencion.h"

@interface HACKIntervension : NSObject <MKAnnotation>{
    CLLocationCoordinate2D coord;
    Intervencion *ebintervencion;
    NSString *address;
}

@property(strong, nonatomic) Intervencion *intervencion;
@property (nonatomic, assign) CLLocationCoordinate2D coordinate;

- (instancetype)initWithIntervencion:(Intervencion *)intervencion;
- (MKMapItem *)mapItem;

@end

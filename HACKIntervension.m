//
//  HACKIntervension.m
//  HACKDF
//
//  Created by Jorge Mendizabal on 3/8/15.
//  Copyright (c) 2015 Jorge Mendizabal. All rights reserved.
//

#import "HACKIntervension.h"
#import <AddressBook/AddressBook.h>

@implementation HACKIntervension

- (instancetype)initWithIntervencion:(Intervencion *)intervencion2{
    
    self = [super init];
    if (self) {
        ebintervencion = intervencion2;
        self.intervencion = intervencion2;
        coord = intervencion2.coordinate;
        self.coordinate = coord;
        address = [NSString stringWithFormat:@"Colonia %@\n Delegación %@",ebintervencion.colonia , ebintervencion.delegacion];
    }
    return self;
}

-(NSString *)title{
    return [NSString stringWithFormat:@"%@",self.intervencion.calle];
}

-(NSString *)subtitle{
    return [NSString stringWithFormat:@"%@",self.intervencion.colonia];
}


- (MKMapItem *)mapItem {
    
    NSDictionary *addressDict = @{(NSString*)kABPersonAddressStreetKey : self.intervencion.calle};
    MKPlacemark *placemark = [[MKPlacemark alloc] initWithCoordinate:self.coordinate addressDictionary:addressDict];
    MKMapItem *mapItem = [[MKMapItem alloc] initWithPlacemark:placemark];
    mapItem.name = self.title;
    
    return mapItem;
}

@end

//
//  ThirdViewController.m
//  ViewApp
//
//  Created by Alek Åström on 2012-02-01.
//  Edited by Cenny Davidsson 2014-01-15.
//  Edited by Jakob Bandelin 2014-08-22.
//  Copyright (c) 2012 Linköping University. All rights reserved.
//

//  I den här vy-kontrollern ska ni få träna på delegering. I appens nuvarande form
//  kommer man direkt till Safari när man klickar på en av knapparna. Något som kan
//  vara önskvärt av användaren är någon form av bekräftelse innan appen stängs ner och
//  Safari dyker upp. Ni ska därför skapa antingen en UIActionSheet eller en UIAlertView
//  som ber om en bekräftelse när man tycker på de olika knapparna. Användaren ska kunna
//  avbryta öppnandet av länken, eller gå vidare till den.

//  Ett tips för att hålla reda på vilken actionsheet / alertview som kom från vilken knapp
//  är att kolla på propertyn tag som finns i UIView och alla dess subklasser.

#import "ThirdViewController.h"

@implementation ThirdViewController

#pragma mark - User Interaction

- (IBAction)didPressKurshemsida {
    [self goToWebAddress:@"http://www.ida.liu.se/~725G60/index.sv.shtml"];
}

- (IBAction)didPressKursforum {
    [self goToWebAddress:@"http://lisam.liu.se"];
}

- (IBAction)didPressWebreg {
    [self goToWebAddress:@"https://www.ida.liu.se/webreg3/"];
}

#pragma mark - Utility methods


// Den här metoden öppnar upp en webbaddress i Safari (och lägger därför denna app i bakgrunden)
- (void)goToWebAddress:(NSString *)address {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:address]];
}

#pragma mark - View lifecycle

- (NSUInteger)supportedInterfaceOrientations {
    // Retunera tillåtna orientations
    return UIInterfaceOrientationMaskAllButUpsideDown;
}

@end

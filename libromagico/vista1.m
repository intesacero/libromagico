//
//  vista1.m
//  libromagico
//
//  Created by INDUSTRIA TRANSF. ESPECIAL SL on 30/03/12.
//  Copyright (c) 2012 INDUSTRIA TRANSFORMADORA ESPECIA SL. All rights reserved.
//



/* esta es la vista inicial en ella se ha de cargar un sondido que se repita durante toda la aplicación, independientemente de otros que puedan ir surgiendo. La idea es que dure al menos un par de minutos */

#import "vista1.h"

@interface vista1 ()

@end

@implementation vista1

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

@end

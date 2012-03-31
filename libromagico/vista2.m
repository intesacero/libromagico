//
//  vista2.m
//  libromagico
//
//  Created by INDUSTRIA TRANSF. ESPECIAL SL on 31/03/12.
//  Copyright (c) 2012 INDUSTRIA TRANSFORMADORA ESPECIA SL. All rights reserved.
//

#import "vista2.h"
#import "vista1.h"
#import "vista3.h"
@interface vista2 ()

@end

@implementation vista2

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

- (IBAction)irvista1:(id)sender {
    vista1 *v1=[[vista1 alloc] initWithNibName:@"vista1" bundle:nil];
    [self.navigationController pushViewController:v1 animated:YES];

}

- (IBAction)irvista3:(id)sender {
    vista3 *v1=[[vista3 alloc] initWithNibName:@"vista3" bundle:nil];
    [self.navigationController pushViewController:v1 animated:YES];
}
@end

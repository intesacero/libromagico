//
//  vista3.m
//  libromagico
//
//  Created by INDUSTRIA TRANSF. ESPECIAL SL on 31/03/12.
//  Copyright (c) 2012 INDUSTRIA TRANSFORMADORA ESPECIA SL. All rights reserved.
//

#import "vista3.h"
#import "vista2.h"
#import <AudioToolbox/AudioToolbox.h>


@interface vista3 ()

@end




@implementation vista3


@synthesize bombilla;

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
     //  [self ejecutarSonido];
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

- (IBAction)irvista2:(id)sender {
    vista2 *v1=[[vista2 alloc] initWithNibName:@"vista2" bundle:nil];
    [self.navigationController pushViewController:v1 animated:YES];

    
}

- (IBAction)touchbombilla:(id)sender {
    
    continuarAnimacion=0;
    
    //Cuando tocamos el elemento, dentro tiene un imageview,
    //el cual puede añadirsele unc onjunto de imagenes, las cuales se deben programar
    //de tal manera que cierren la animacion
    bombilla.imageView.animationImages = [NSArray arrayWithObjects: 
                                            [UIImage imageNamed:@"bombillaof.png"],                                  
                                            [UIImage imageNamed:@"bombillaon.png"],                              
                                            
                                            [UIImage imageNamed:@"bombillaof.png"],
                                            [UIImage imageNamed:@"bombillaon.png"],nil];
    //cuantas veces repetimos la animacion
    bombilla.imageView.animationRepeatCount = 15;
    //cuanto dura la animacion de las imagenes
    bombilla.imageView.animationDuration = 0.5;
    [bombilla.imageView startAnimating];
    
   // [self animararribaBirdYellow];
    
    

    
}
@end

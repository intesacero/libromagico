//
//  vista1.m
//  libromagico
//
//  Created by INDUSTRIA TRANSF. ESPECIAL SL on 30/03/12.
//  Copyright (c) 2012 INDUSTRIA TRANSFORMADORA ESPECIA SL. All rights reserved.
//



/* esta es la vista inicial en ella se ha de cargar un sondido que se repita durante toda la aplicación, independientemente de otros que puedan ir surgiendo. La idea es que dure al menos un par de minutos */

#import "vista1.h"
#import "vista2.h"
#import <AVFoundation/AVFoundation.h>



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
    [self ejecutarSonidoIntro];
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

-(void)ejecutarSonidoIntro
{
    NSURL *url=[[NSURL alloc]initFileURLWithPath:[[NSBundle mainBundle] 
                                                  pathForResource:@"intro" ofType:@"mp3"] ];
    audioPlayer=[[AVAudioPlayer alloc]initWithContentsOfURL:url error:nil];    
    audioPlayer.volume=0.5;
    [audioPlayer prepareToPlay];
    [audioPlayer play];
    
    
    
    
    
    
    
    
}



@end

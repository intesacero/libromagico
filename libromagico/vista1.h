//
//  vista1.h
//  libromagico
//
//  Created by INDUSTRIA TRANSF. ESPECIAL SL on 30/03/12.
//  Copyright (c) 2012 INDUSTRIA TRANSFORMADORA ESPECIA SL. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface vista1 : UIViewController

{
    BOOL continuarAnimacion;
    
    NSTimer *timer;//timer, temporizador.
    CGRect projectileFrame;
    CGPoint actualPointBall2;// punto actual donde hemos tocado.
    AVAudioPlayer *audioPlayer; //Declarar una variable
    
}



- (IBAction)irvista2:(id)sender;

-(void)ejecutarSonidoIntro;

@end

//
//  vista3.h
//  libromagico
//
//  Created by INDUSTRIA TRANSF. ESPECIAL SL on 31/03/12.
//  Copyright (c) 2012 INDUSTRIA TRANSFORMADORA ESPECIA SL. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface vista3 : UIViewController

{
    BOOL continuarAnimacion;
    
    NSTimer *timer;//timer, temporizador.
    CGRect projectileFrame;
    CGPoint actualPointBall2;// punto actual donde hemos tocado.
    AVAudioPlayer *audioPlayer; //Declarar una variable
    
}


// definimos propiedades del boton bombilla
@property (weak, nonatomic) IBOutlet UIButton *bombilla;

- (IBAction)irvista2:(id)sender;
- (IBAction)touchbombilla:(id)sender;

-(void)ejecutarSonido;


@end

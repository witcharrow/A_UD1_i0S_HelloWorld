//
//  Pixel.m
//  Prueba
//
//  Created by user11394 on 4/8/14.
//  Copyright (c) 2014 Alex. All rights reserved.
//

#import "Pixel.h"

@implementation Pixel

//Declaraciones de metodos
- (void) situarEnOrigen{
    posX=0;
    posY=0;
}
- (void) moverHorizontalmente: (int) posicion{
    posX+=posicion;
}
- (void) moverHorizontalmente:(int)posicionX yVerticalmente: (int)posicionY{
    posX+=posicionX;
    posY+=posicionY;
}
- (BOOL) estaFueraDeLosLimites{
    return (posX>300)||(posY>300)||(posX<0)||(posY<0);
}
- (int) posX{
    return posX;
}
- (void) setPosX: (int) valor{
    posX=valor;
}
- (int) posY{
    return posY;
}
- (void) setPosY: (int) valor{
    posY=valor;
    
}

@end

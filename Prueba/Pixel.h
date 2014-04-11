//
//  Pixel.h
//  Prueba
//
//  Created by user11394 on 4/8/14.
//  Copyright (c) 2014 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Pixel : NSObject{

    //variables de instancia
    int posX;
    int posY;
}


//Declaraciones de metodos
- (void) situarEnOrigen;
- (void) moverHorizontalmente: (int) posicion;
- (void) moverHorizontalmente:(int)posicionX yVerticalmente: (int)posicionY;
- (BOOL) estaFueraDeLosLimites;
//getters y setters,tienen el mismo nombre que el método para poder usar la notacion de punto
- (int) posX;
- (void) setPosX: (int) valor;
- (int) posY;
- (void) setPosY: (int) valor;
//***********************************************UNIDAD 2: Punto 3 Gestión de Memoria en IOS
//- (id)init;
//- (id) initConPosicion:(int)posX yPosY:(int)posY;
//- (id)initConPosicion:(int)posX yPosY:(int)posY yColor:(Color) color;
@end

/*
 * File:   newmain.c
 * Author: federico
 *
 * Created on 26 de enero de 2019, 18:17
 */


#include <xc.h>

#pragma config WDTE = OFF, PWRTE = OFF, FOSC = HS
#define _XTAL_FREQ 4000000

#define ADC_CONVERSION_SUCCESS (!(ADCON0 & 0b00000100))
#define ADC_CONVERSION_IN_PROGRESS (!ADC_CONVERSION_SUCCESS)


void ADC_selectorCanal(unsigned short int canal);
void ADC_setear_Clock();
void ADC_ON();
void ADC_start_conversion();
void ADC_stop_conversion();
unsigned int ADC_readValue();
void leer_canales();
void activarPrecalentamiento();
void activarCombustible();
void activarArranque();
void apagarMotor();
void leerPulsadores();
void accionesPulsadores();
void leer_combustible_onoff_cargaBat();
void accionar_combustible_onoff_cargaBat();
void leer_temperatura_presion();
void accionar_temperatura_presion();
void configuracion_inicial();
void leer_tension_grupo();
void accionar_tension_grupo();
void leer_tension_linea();
void titilar_led_manual();
void encender_led_red_disponible();
void apagar_led_red_disponible();
void encender_alarma();
void apagar_led_uso_linea();
void encenderTransferencia();
void grupo_disponible();
void grupo_en_uso();
void funcion_minima();
void desactivar_uso_de_red();
void apagar_grupo_en_uso();
void apagar_grupo_disponible();
void activar_uso_de_red();
void apagar_funcion_minima();
void desactivar_combustible();
void refrigeracion_de_grupo();
void apagar_grupo();


enum{

    INDICE_PULSADORES, //Canal 0
    INDICE_COMBUSTIBLE, //Canal 1 
    INDICE_TEMPERATURA_PRESION, //Canal 2
    INDICE_TENSION_LINEA, //Canal 3
    INDICE_TENSION_DE_GRUPO // Canal 4


};

typedef struct estado{
    
    unsigned short int temp_pre;
    unsigned short int pulsadores;
    unsigned short int combustibles;
    unsigned short int tension_linea;
    unsigned short int tension_grupo;
    
}estados;

enum {

    TEYPRE_TEMPALTA,
    TEYPRE_OK,
    TEYPRE_ERRORAMBAS,
    TEYPRE_PREBAJA
            


};

enum {
    PULSAD_NADA,
    PULSAD_ON,
    PULSAD_OFF,
    PULSAD_MANUAL,
    PULSAD_AUTO

};

enum {
    V_LINE_220,
    V_LINE_210,
    V_LINE_200,
    V_LINE_190,
    V_LINE_180


};

enum {
    V_GRUP_OK,
    V_GRUP_ERROR,
    V_GRUP_SIN_TENSION

};

enum {
    RED_TENSION,
    TRANSFERENCIA_GRUPO,
    GRUPO_EN_USO,
    TRANSFERENCIA_RED
    
};


estados estado;

unsigned short int lectura[5] = {0};

#define COMBUSTIBLE
#define CARGA_BATERIA
#define ON_OFF
#define TEMPERATURA
#define PRESION
#define BOTON_OFF
#define BOTON_MANUAL
#define BOTON_ON
#define BOTON_AUTOMATICO


//Parametros programables

#define PRECALENTAMIENTO_ESPERA 2000
#define ARRANQUE_ESPERA 5000
#define TIEMPO_ESTABILIZACION 20000
#define TIEMPO_RETARDO_INICIO_GRUPO 4000
#define TIEMPO_RETARDO_PARADA_GRUPO 45000
#define REFRIGERACION_TIEMPO 60000
#define TENSION_MINIMA_RED 113
#define PARADA_TIEMPO 1000
#define TENSION_MINIMA_GRUPO 113
#define TIEMPO_MINIMO_FUNCIONAMIENTO 15000


unsigned short int flag_inicio_grupo = 0;
unsigned short int flag_parpadeo_automatico = 0;
unsigned short int flag_inicio_red = 0;
unsigned int led_manual = 0;
unsigned short int flag_hubo_falla = 0;
unsigned short int flag_equipo_en_marcha = 0;
unsigned short int reintentar_arranque = 0;


int main()
{
      
    
    
    
  // Se configura los puertos B y C como salida
  TRISB = 0;
  TRISC = 0;
  
  //Se configura como entrada los puertos A
  TRISA = 0xFF;
  
  //Seteo configuracion analogica de entrada
   ADCON1 = 0b00000000;
   ADCON0 = 0b00000000;
   
   //Seteo de clock del ADC
   ADC_setear_Clock(); 
     
   //Parametros iniciales del grupo electrogeno
   configuracion_inicial();
          
  while(1)
  {
     
      //Leo los canales del ADC
      leer_canales();
      
      //leerPulsadores();
      //accionesPulsadores();
      
      leer_tension_linea();
            
      
      
      titilar_led_manual();
      
      
      
      switch(estado.tension_linea){
          case RED_TENSION:
              
              encender_led_red_disponible();
              
              
              break;
              
          case TRANSFERENCIA_GRUPO:
              desactivar_uso_de_red();
              apagar_led_red_disponible();              
              activarCombustible();
              activarPrecalentamiento();
              activarArranque();
              encenderTransferencia();
              grupo_disponible();
              grupo_en_uso();
              funcion_minima();
              estado.tension_linea = GRUPO_EN_USO;
              break;
          case GRUPO_EN_USO:
              
              leer_tension_grupo();
              accionar_tension_grupo();
              
              if((estado.tension_grupo == V_GRUP_OK) && (flag_hubo_falla == 0)){
              
                leer_temperatura_presion();
                accionar_temperatura_presion();
              
              }
              
              break;
          case TRANSFERENCIA_RED:
              
              apagar_grupo_en_uso();
              encenderTransferencia();             
              apagar_grupo_disponible();
              encender_led_red_disponible();
              activar_uso_de_red();
              refrigeracion_de_grupo();
              desactivar_combustible();
              estado.tension_linea = RED_TENSION;
              
              break;
          default:
              break;
      }
      
      
      
      
      
  }
      
  return 0;
}

void ADC_selectorCanal(unsigned short int canal){
    
    ADCON0 = (ADCON0 & 0b11000111) | (canal << 3);
    __delay_ms(20);
}


void ADC_setear_Clock(){


   ADCON0 |= 0b10000000;


}

void ADC_ON(){

       ADCON0 |= 0b00000001;
       __delay_ms(20);

    
}


void ADC_start_conversion(){

    
    ADCON0 |= 0x4;


}


void ADC_stop_conversion(){

    ADCON0 &= 0xfb;

}


unsigned int ADC_readValue(){
    return ADRES;
}


void leer_canales(){

    unsigned short int canal = 0;
    
    
    while(canal < 5){
    ADC_ON();

    ADC_selectorCanal(canal);
      
      if(ADC_CONVERSION_SUCCESS){
          ADC_start_conversion();
      }
      
      while(ADC_CONVERSION_IN_PROGRESS){
            __delay_ms(20);

      } 
      
      
      lectura[canal] = ADC_readValue();
      canal ++;
      ADC_stop_conversion();
    }

}

void refrigeracion_de_grupo(){
    unsigned short int contador = 0;
    
    while(contador < 60){
    __delay_ms(1000);
    contador++;
    }
    
}    
void desactivar_combustible(){
    RC1 = 0;
    __delay_ms(2000);
    
}

void apagar_grupo(){
    
    if(flag_hubo_falla == 0){
       RC1 = 0; //Combustible
       RC5 = 0; //Apagar grupo en uso
       RB4 = 1; //Apagar grupo disponible
       encender_alarma();
       flag_hubo_falla = 1;
    }
    
}


void titilar_led_manual(){

    
        RC4 = 0;
       __delay_ms(1000);
        RC4 = 1;
    

}

void activar_uso_de_red(){
    RC6 = 0;
}




void desactivar_uso_de_red(){
    RC6 = 1;
}


void encender_led_red_disponible(){
    
    RB5 = 0;
    
}

void apagar_led_red_disponible(){
    //Se apaga pero deberia titilar. Significa que se corto la red
    
        RB5 = 1;

}

void encender_alarma(){
    
   
    
        RC2 = 1;
        
    
}



void activarPrecalentamiento(){

    /*
    Se prende el rele de pre calentamiento y se espera un segundo      
     */
    RC7 = 1;
    __delay_ms(PRECALENTAMIENTO_ESPERA);
    RC7 = 0;
    

}


void activarArranque(){
    /*
     Prende D1 y arranca el motor
     * 
     */
    
    RB6 = 1;
    __delay_ms(ARRANQUE_ESPERA);
    RB6 = 0;
    

}

void apagar_led_uso_linea(){
    RC6 = 0;
}
void prender_led_uso_grupo(){
    RC5 = 1;
}


void activarCombustible(){
    /*
     Prende D5 y habilita el motor para funcionar
     */
    
    RC1 = 1;
    __delay_ms(2000);
    

}

void encenderTransferencia(){
    unsigned short int counter = 0;
    while(counter < 10){
    
    RB3 = 0;
    __delay_ms(300);
    RB3 = 1;
    counter = counter + 1;
    }
}



void apagar_grupo_disponible(){
    RB4 = 1;
    __delay_ms(1000);
}

void grupo_disponible(){
    RB4 = 0;
    __delay_ms(1000);
}
void grupo_en_uso(){
    RC5 = 1;
    __delay_ms(1000);
}

void apagar_grupo_en_uso(){
    RC5 = 0;
    __delay_ms(1000);
}

void funcion_minima(){
    
    RB3 = 0;
    __delay_ms(TIEMPO_MINIMO_FUNCIONAMIENTO);
    RB3 = 1;
    
}

void apagar_funcion_minima(){
    RB3 = 1;
}

void apagarMotor(){
    /*
     Pin 13 del pic prende d4 y corta el funcionamiento del motor
     
     */
    RC2 = 1;    
    
}


void leerPulsadores(){

    
    
    
    if(lectura[INDICE_PULSADORES] < 15){
         estado.pulsadores = PULSAD_ON;
    }
    if(lectura[INDICE_PULSADORES] >= 15 && lectura[INDICE_PULSADORES] < 50 ){
        estado.pulsadores = PULSAD_OFF;
    }

    if(lectura[INDICE_PULSADORES] >= 50 && lectura[INDICE_PULSADORES] < 100 ){
        estado.pulsadores = PULSAD_MANUAL;
    }
    if(lectura[INDICE_PULSADORES] >= 100 && lectura[INDICE_PULSADORES] < 150){
        estado.pulsadores = PULSAD_AUTO;
    }
    if(lectura[INDICE_PULSADORES] >= 150){
        estado.pulsadores = PULSAD_NADA;
    }
    
    
    
}

void accionesPulsadores(){

    switch (estado.pulsadores){
    
        case PULSAD_NADA: 
            //PRUEBA CON CUALQUIER LED
            
            break;
        case PULSAD_ON:
            
            break;
        case PULSAD_OFF:
            
            break; 
        case PULSAD_MANUAL:
            configuracion_inicial();
            __delay_ms(100);
            break;
        case PULSAD_AUTO:
            
            break;
        default:
            break;
        
    }

}


void leer_combustible_onoff_cargaBat(){

    
    
    
    if(lectura[INDICE_COMBUSTIBLE]  >= 240){
        estado.combustibles = 0;

    }
    if(lectura[INDICE_COMBUSTIBLE] >= 200 && lectura[INDICE_COMBUSTIBLE] < 240 ){
        /*0 on/off 0 combu 1 carg bat
         *0 combustible 
         *1 carga bateria
         */
        estado.combustibles = 1;
    }

    if(lectura[INDICE_COMBUSTIBLE] >= 160 && lectura[INDICE_COMBUSTIBLE] < 200){
        /*0 on/off 
         *1 combustible
         *0 carga bateria 
         */
        estado.combustibles = 2;
    }
    if(lectura[INDICE_COMBUSTIBLE] >= 140 && lectura[INDICE_COMBUSTIBLE] < 160){
        /*0 on/off 
         *1 combustible
         *1 carga bateria 
         */
        estado.combustibles = 3;
    }
    if(lectura[INDICE_COMBUSTIBLE] >= 120 && lectura[INDICE_COMBUSTIBLE] < 140){
        /*1 on/off 0 combu 1 carg bat
         *0 combustible
         *0 carga bateria 
         */

        estado.combustibles = 4;
    }
    if(lectura[INDICE_COMBUSTIBLE] >= 107 && lectura[INDICE_COMBUSTIBLE] < 120){
        /*1 on/off 0 combu 1 carg bat
         *0 combustible
         *1 carga bateria 
         */
        estado.combustibles = 5;
    }
    if(lectura[INDICE_COMBUSTIBLE] >= 100 && lectura[INDICE_COMBUSTIBLE] < 107){
        /*1 on/off 0 combu 1 carg bat
         *1 combustible
         *0 carga bateria 
         */
        estado.combustibles = 6;
    }
    if(lectura[INDICE_COMBUSTIBLE] < 100){
        /*1 on/off 0 combu 1 carg bat
         *1 combustible
         *1 carga bateria 
         */
        estado.combustibles = 7;
        
    }
    
    
    
}
void accionar_combustible_onoff_cargaBat(){

    
    
    
    switch(estado.combustibles){
        case 0:
        /*0 on/off 
         *0 combustible
         *0 carga bateria
         */
       
        
        RB0 = 0;
        RB1 = 1;
        RB2 = 1;
        RB3 = 1;
        RB4 = 1;
        RB5 = 1;
        RC0 = 1;
        RC3 = 1;
        
        
        
        
        
        
        
        
        break;

    
        case 1:
        /*0 on/off 0 combu 1 carg bat
         *0 combustible 
         *1 carga bateria
         */
                   
            
        RB0 = 1;
        RB1 = 0;
        RB2 = 1;
        RB3 = 1;
        RB4 = 1;
        RB5 = 1;
        RC0 = 1;
        RC3 = 1;
        
        
        break;
    

        case 2:
        /*0 on/off 0 combu 1 carg bat
         *1 combustible
         *0 carga bateria 
         */
        RB0 = 1;
        RB1 = 1;
        RB2 = 0;
        RB3 = 1;
        RB4 = 1;
        RB5 = 1;
        RC0 = 1;
        RC3 = 1;
        break;
    
        case 3:
            /*0 on/off 
             *1 combustible
             *1 carga bateria 
             */
            RB0 = 1;
        RB1 = 1;
        RB2 = 1;
        RB3 = 0;
        RB4 = 1;
        RB5 = 1;
        RC0 = 1;
        RC3 = 1;
            break;
            
        case 4:            
         /*1 on/off 0 combu 1 carg bat
         *0 combustible
         *0 carga bateria 
         */
        RB0 = 1;
        RB1 = 1;
        RB2 = 1;
        RB3 = 1;
        RB4 = 0;
        RB5 = 1;
        RC0 = 1;
        RC3 = 1;
        break;
        
        case 5:
        /*1 on/off 0 combu 1 carg bat
         *0 combustible
         *1 carga bateria 
         */
        RB0 = 1;
        RB1 = 1;
        RB2 = 1;
        RB3 = 1;
        RB4 = 1;
        RB5 = 0;
        RC0 = 1;
        RC3 = 1;
        break;

        case 6:
        /*1 on/off 0 combu 1 carg bat
         *1 combustible
         *0 carga bateria 
         */
        RB0 = 1;
        RB1 = 1;
        RB2 = 1;
        RB3 = 1;
        RB4 = 1;
        RB5 = 1;
        RC0 = 0;
        RC3 = 1;
        break;

        case 7:
        /*1 on/off 0 combu 1 carg bat
         *1 combustible
         *1 carga bateria 
         */
        RB0 = 1;
        RB1 = 1;
        RB2 = 1;
        RB3 = 1;
        RB4 = 1;
        RB5 = 1;
        RC0 = 1;
        RC3 = 0;
        break;
    }
    
    
    
}


void leer_temperatura_presion(){


    if(lectura[INDICE_TEMPERATURA_PRESION] <= 105){   
        estado.temp_pre = TEYPRE_ERRORAMBAS;    
    }
    if(lectura[INDICE_TEMPERATURA_PRESION] > 105 && lectura[INDICE_TEMPERATURA_PRESION] <= 135){
        estado.temp_pre = TEYPRE_PREBAJA;
    }
    if(lectura[INDICE_TEMPERATURA_PRESION] > 135 && lectura[INDICE_TEMPERATURA_PRESION] <= 190){
        estado.temp_pre =TEYPRE_TEMPALTA;
    }
    if(lectura[INDICE_TEMPERATURA_PRESION] > 190 && lectura[INDICE_TEMPERATURA_PRESION] <= 255){
        estado.temp_pre = TEYPRE_OK;
    }





}

void accionar_temperatura_presion(){

    switch(estado.temp_pre){
        case TEYPRE_ERRORAMBAS:
            //1 temperatura
            //1 presion
            
            apagar_grupo();
            
           
            RB2 = 0;
            RC0 = 0;

            break;
        case TEYPRE_PREBAJA:
            //0 temperatura
            //1 presion
            
            apagar_grupo();            

            
            
            //Enciendo led on/off remoto
            
            RC0 = 0;
            RB2 = 1;
            
            
            
            
            break;
        case TEYPRE_TEMPALTA:
            //1 temperatura
            //0 presion
            
            apagar_grupo();
            
            
            RB2 = 1;
            RC0 = 0;
            
            break;
        case TEYPRE_OK:
            //0 Temperatura
            //0 Presion
            RB2 = 1;
            RC0 = 1;
            
            break;
        default:
            break;
    }




}






void leer_tension_linea(){
    
    unsigned short int no_iniciar = TIEMPO_RETARDO_INICIO_GRUPO / 1000;
    unsigned short int verificar_red = TIEMPO_RETARDO_PARADA_GRUPO / 1000;
    
    if(lectura[INDICE_TENSION_LINEA] >= TENSION_MINIMA_RED){
        
        
        if(estado.tension_linea == GRUPO_EN_USO){
            
            flag_inicio_red = flag_inicio_red + 1;
            
            if(flag_inicio_red > verificar_red){
                estado.tension_linea = TRANSFERENCIA_RED;
                flag_inicio_red = 0;
                return;
            }
            
            return;
            
        }
        
        
        
        estado.tension_linea = RED_TENSION;
        flag_inicio_grupo = 0;
        
        
        
    }
    else{
        
        
        if(estado.tension_linea == GRUPO_EN_USO){
            flag_inicio_red = 0;
            return;
        }
        
        flag_inicio_grupo = flag_inicio_grupo + 1;
        
        if(flag_inicio_grupo > no_iniciar && flag_hubo_falla == 0){
            estado.tension_linea = TRANSFERENCIA_GRUPO;
            flag_inicio_grupo = 0;
            return;            
        }
        
    }
    
     
    
    

}




void leer_tension_grupo(){
    
    
    if(lectura[INDICE_TENSION_DE_GRUPO] >= TENSION_MINIMA_GRUPO){
        estado.tension_grupo = V_GRUP_OK;
    }
    
    
    if(lectura[INDICE_TENSION_DE_GRUPO] >= 50 && lectura[INDICE_TENSION_DE_GRUPO] < TENSION_MINIMA_GRUPO){
        estado.tension_grupo = V_GRUP_ERROR;
    }
    
    
    if(lectura[INDICE_TENSION_DE_GRUPO] < 50){
        estado.tension_grupo = V_GRUP_SIN_TENSION;
    }
    
    
    
}
void accionar_tension_grupo(){
    switch(estado.tension_grupo){
        case V_GRUP_OK:
            
            RB0 = 1;
            flag_equipo_en_marcha = 1;
            reintentar_arranque = 0;
            
            break;
            
        case V_GRUP_ERROR:
            
            
            //Prender LED Tension
            apagar_grupo();
            RB0 = 0;
            break;
            
        case V_GRUP_SIN_TENSION:
            
            reintentar_arranque++;
            
            if(reintentar_arranque == 60){
              desactivar_uso_de_red();
              apagar_led_red_disponible();
              encender_alarma();
              activarCombustible();
              activarPrecalentamiento();
              activarArranque();
              encenderTransferencia();
              grupo_disponible();
              grupo_en_uso();
              funcion_minima();
                
            }
            
            if(reintentar_arranque == 120){
              desactivar_uso_de_red();
              apagar_led_red_disponible();
              encender_alarma();
              activarCombustible();
              activarPrecalentamiento();
              activarArranque();
              encenderTransferencia();
              grupo_disponible();
              grupo_en_uso();
              funcion_minima();  
            }
            
            if(reintentar_arranque >= 121){
                
                apagar_grupo();
                //Enciendo led arranque fallido
                RC3 = 0;
                
            }
            
            
            break;
    
    }


}


void configuracion_inicial(){
    RC0 = 1;
    RC1 = 0;
    RC2 = 0;
    RC3 = 1;
    RC4 = 1;
    RC5 = 0;
    RC6 = 0;
    RC7 = 0;
    
    RB0 = 1;
    RB1 = 1;
    RB2 = 1;
    RB3 = 1;
    RB4 = 1;
    RB5 = 1;
    RB6 = 0;
    flag_hubo_falla = 0;
    flag_inicio_grupo = 0;
    flag_parpadeo_automatico = 0;
    flag_inicio_red = 0;
    led_manual = 0;
    flag_equipo_en_marcha = 0;
    reintentar_arranque = 0;
    estado.tension_grupo = RED_TENSION;
    
}
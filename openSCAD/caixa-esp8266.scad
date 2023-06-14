largura = 26.3;
profundidade = 35;
altura = 20.5;
parede = 2;

profDHT = 18.5;   // prof real: 15.5
largDHT = 14;   // larg real: 12

altUSB = 9;
largUSB = 14;
profUSB = 9;

// altura de Caixa teste
alturaBaseCaixa = 11;
locProfUSB = ((profundidade)/2)-3.4;
locLargUSB = -0.5;
// altura do USB para caixa original
locAltUSB = ((altUSB-altura)/2)-0.1;



module caixa(){
    difference(){
        cube([profundidade+parede, largura+parede, altura], center=true); //volume externo
        translate([0,0,parede]) cube([profundidade, largura, altura], center=true); // volume interno
        translate([locProfUSB, locLargUSB, locAltUSB]) cube([profUSB, largUSB, altUSB], center=true); // abertura usb
    }
}

module tampa(){
    difference(){
        cube([profundidade+parede, largura+parede, parede], center=true);
        translate([9.3,-0.5,0]) cube([profDHT, largDHT, 3], center=true);
        }
}

// altura do USB para caixa base com buraco
locBaseAltUSB = ((altUSB-alturaBaseCaixa)/2)-0.1;

module baseCaixa(){
    difference(){
        cube([profundidade+parede, largura+parede, alturaBaseCaixa], center=true); //volume externo
        translate([0,0,parede]) cube([profundidade, largura, alturaBaseCaixa], center=true); // volume interno
        translate([locProfUSB, locLargUSB, locBaseAltUSB]) cube([profUSB, largUSB, altUSB], center=true); // abertura usb
    }
}
// baseCaixa();
altBase = 4;
locBaseAltUSB2 = ((altUSB-altBase)/2)-0.1;
module base(){
    difference(){
        cube([profundidade+parede, largura+parede, altBase], center=true); //volume externo
        translate([0,0,parede]) cube([profundidade, largura, altBase], center=true); // volume interno
        translate([locProfUSB, locLargUSB, locBaseAltUSB2+1]) cube([profUSB, largUSB, altUSB], center=true); // abertura usb
    }
}
//translate([0,largura+3.5,-((altura/2)-1)]) base();

// somente caixa
//caixa();
// somente tampa
// tampa();
// tampa e caixa
// translate([0,largura+3.5,-((altura/2)-1)]) tampa();
caixa();

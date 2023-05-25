// largura = 440;
largura = 28;
// profundidade = 550;
profundidade = 37;
// altura = 440;
altura = 23;

parede = 2;

profDHT = 17.5;   // prof real: 15.5
largDHT = 14;   // larg real: 12

altUSB = 9;
largUSB = 12;
profUSB = 9.5;

module caixa(){
    difference(){
        cube([profundidade+parede, largura+parede, altura], center=true); //volume externo
        translate([0,0,parede]) cube([profundidade, largura, altura], center=true); // volume interno
        translate([((profundidade)/2)-3.7, -0.5, -7.1]) cube([profUSB, largUSB, altUSB], center=true); // abertura usb
    }
}

module tampa(){
    difference(){
        cube([profundidade+parede, largura+parede, parede], center=true);
        translate([10.8,-0.5,0]) cube([profDHT, largDHT, 3], center=true);
        }
}

// somente caixa
caixa();
// somente tampa
// tampa();
// tampa e caixa
// translate([0,largura+3.5,-((altura/2)-1)]) tampa();
// caixa();

// largura = 440;
largura = 25;
// profundidade = 550;
profundidade = 34;
// altura = 440;
altura = 23;

parede = 2;

profDHT = 26;
largDHT = 12;

altUSB = 9;
largUSB = 12;

module caixa(){
    difference(){
        cube([profundidade+parede, largura+parede, altura], center=true); //volume externo
        translate([0,0,parede]) cube([profundidade, largura, altura], center=true); // volume interno
        translate([(profundidade)/2, 0, -5]) cube([3, largUSB, altUSB], center=true); // abertura usb
    }
}

module tampa(){
    difference(){
        cube([profundidade+parede, largura+parede, parede], center=true);
        translate([11.6,0,0]) cube([profDHT, largDHT, 30], center=true);
        }
}

// somente caixa
// caixa();
// somente tampa
// tampa();
// tampa e caixa
translate([0,largura+3.5,-((altura/2)-1)]) tampa();
caixa();

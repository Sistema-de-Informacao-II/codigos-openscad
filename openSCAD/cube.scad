// largura = 440;
largura = 250;
// profundidade = 550;
profundidade = 340;
// altura = 440;
altura = 230;

parede = 15;

profDHT = 260;
largDHT = 120;

altUSB = 90;
largUSB = 120;

module caixa(){
    difference(){
        cube([profundidade+parede, largura+parede, altura], center=true); //volume externo
        translate([0,0,parede]) cube([profundidade, largura, altura], center=true); 
        translate([((profundidade)/2)/2, largura/2,126]) cube([0, 0, 0], center=true);
    }
}

module tampa(){
    difference(){
        cube([profundidade+parede, largura+parede, parede], center=true);
        translate([116,0,0]) cube([profDHT, largDHT, 300], center=true);
        }
}
translate([0,largura+40,-((altura/2)-10)]) tampa();

caixa();

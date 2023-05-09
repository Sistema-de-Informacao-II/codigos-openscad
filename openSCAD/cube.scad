largura = 440;
profundidade = 550;
altura = 440;
parede = 15;

profDHT = 130;
alturaDHT = 190;

profUSB = 10;
largUSB = 8;

profCabo = 2;
largCabo = 4;

profCapacitor = 120;
largCapacitor = 70;



module caixa(){
    difference(){
        cube([profundidade+parede, largura+parede, altura], center=true); //volume externo
        translate([0,0,parede]) cube([profundidade, largura, altura], center=true); 
        translate([((profundidade)/2)/2, largura/2,126]) cube([profDHT, parede+1, alturaDHT], center=true);
    }
}

module tampa(){
    difference(){
        cube([profundidade+parede, largura+parede, parede], center=true);
        translate([100,-100,0]) cube([profCapacitor, largCapacitor, 300], center=true);
        }
}
translate([0,largura+40,-((altura/2)-10)]) tampa();

caixa();

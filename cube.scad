largura = 27;
profundidade = 34;
altura = 10;
parede = 2;

profDHT = 15.5;
largDHT = 12;


module caixa(){
    difference(){
        cube([profundidade+parede, largura+parede, altura], center=true); //volume externo
        translate([0,0,parede]) cube([profundidade, largura, altura], center=true); //volume real
    }
}

module tampa(){
    difference(){
        cube([profundidade+parede, largura+parede, parede], center=true);
        translate([9,0,0]) cube([profDHT, largDHT, 10], center=true);
        } 
}
translate([0,35,-4]) tampa();

caixa();

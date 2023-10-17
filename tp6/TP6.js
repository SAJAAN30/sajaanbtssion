function calcul_moyenne(){
    var n1= prompt("Donner la premiere note:");
    var n2= prompt("Donner la deuzieme note:");
    var n3= prompt("Donner la troiseme note:");

    var somme = Number(n1)+Number(n2)+Number(n3);

    document.write ("Voici la somme: "+somme+ "<Hr>");
    var moyenne= somme/3;

    document.write("Voici la moyenne: "+moyenne+ "<br>");

    if (moyenne<10)
    document.write("Vous etes Redoublant");
    else if (moyenne<14)
    document.write("Admis passable");
    else
    document.write("Admis Bien");
    

}

function test_age(){
    let age = prompt("Quelle est votre age")

    if (age<18){
        document.write("<font size='8em' color='grey' > "+"Vous etes mineur"+"</font>");

        document.bgColor= "red";
        }

        else{
            document.write("<font size= '8' color='pink' >"+"Vous etes majeur"+"</font>")

            document.bgColor="green"
        }


        


}
function simple_affichage(){
    let name = prompt("Donner votre prenom");

    let familyName = prompt("Donner votre nom")

    document.write('<div style="margin:auto; width:50%; border:6px solid red;">');


    document.write("Bonjour "+ name + " " +familyName);
    document.write('<div>');

}


function test_couleur(){
    let c = prompt("Donner une couleur");
    if (c == "rouge" || c == "ROUGE"){
        document.body.style.background = "red";
        }
        else if (c == "bleu" || c == "BLEU"){
            document.body.style.background = "blue";

        }
        else if (c == "rose"|| c == "ROSE"){
            document.body.style.background = "pink"
        }
            


}
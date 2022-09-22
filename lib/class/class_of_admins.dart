
import 'dart:ui';
import 'package:flutter/material.dart';

class ModelOfDivisions {
  ModelOfDivisions(this.division, this.color1, this.color2);

  String division;
  Color color1;
  Color color2;

}


class ModelOfSubdivisions {
  ModelOfSubdivisions(this.subdivision);

  String subdivision;

}



class ListOfAdmin {

  final List<ModelOfDivisions> divisionsList =[
    ModelOfDivisions("Logone - Et - Chari", Colors.yellow, Colors.transparent),
    ModelOfDivisions("Mayo-Sava", Colors.yellow, Colors.transparent),
    ModelOfDivisions("Diamaré", Colors.yellow, Colors.transparent),
    ModelOfDivisions("Mayo-Tsanaga", Colors.yellow, Colors.transparent),
    ModelOfDivisions("Mayo-Danay", Colors.yellow, Colors.transparent),
    ModelOfDivisions("Mayo-Kani", Colors.yellow, Colors.transparent),
    ModelOfDivisions("Mayo-Louti",const Color.fromRGBO(72, 209, 204, 1.0), Colors.transparent),
    ModelOfDivisions("Bénoue",const Color.fromRGBO(72, 209, 204, 1.0), Colors.transparent),
    ModelOfDivisions("Mayo - Rey",const Color.fromRGBO(72, 209, 204, 1.0), Colors.transparent),
    ModelOfDivisions("Faro",const Color.fromRGBO(72, 209, 204, 1.0), Colors.transparent),
    ModelOfDivisions("Faro - Et - Déo",const Color(0xfff3dbed), Colors.transparent),
    ModelOfDivisions("Vina",const Color(0xfff3dbed), Colors.transparent),
    ModelOfDivisions("Mayo-Banyo",const Color(0xfff3dbed), Colors.transparent),
    ModelOfDivisions("Donga - Mantung",const Color.fromRGBO(171, 56, 224, 0.75), Colors.transparent),
    ModelOfDivisions("Djerem",const Color(0xfff3dbed), Colors.transparent),
    ModelOfDivisions("Menchum",const Color.fromRGBO(171, 56, 224, 0.75), Colors.transparent),
    ModelOfDivisions("Mbéré",const Color(0xfff3dbed), Colors.transparent),
    ModelOfDivisions("Boyo",const Color.fromRGBO(171, 56, 224, 0.75), Colors.transparent),
    ModelOfDivisions("Manyu",const Color.fromRGBO(79, 60, 201, 0.7), Colors.transparent),
    ModelOfDivisions("Bui",const Color.fromRGBO(171, 56, 224, 0.75), Colors.transparent),
    ModelOfDivisions("Mezam",const Color.fromRGBO(171, 56, 224, 0.75), Colors.transparent),
    ModelOfDivisions("Momo",const Color.fromRGBO(171, 56, 224, 0.75), Colors.transparent),
    ModelOfDivisions("Mbam - Et - Kim",const Color.fromRGBO(99, 164, 230, 1), Colors.transparent),
    ModelOfDivisions("Noun",const Color.fromRGBO(126, 247, 74, 0.75), Colors.transparent),
    ModelOfDivisions("Ngo-Ketunjia",const Color.fromRGBO(171, 56, 224, 0.75), Colors.transparent),
    ModelOfDivisions("Lom - Et - Djerem",const Color(0xfff9bf73), Colors.transparent),
    ModelOfDivisions("Bamboutos",const Color.fromRGBO(126, 247, 74, 0.75), Colors.transparent),
    ModelOfDivisions("Ménoua",const Color.fromRGBO(126, 247, 74, 0.75), Colors.transparent),
    ModelOfDivisions("Lebialem",const Color.fromRGBO(79, 60, 201, 0.7), Colors.transparent),
    ModelOfDivisions("Kupé Manenguba",const Color.fromRGBO(79, 60, 201, 0.7), Colors.transparent),
    ModelOfDivisions("Ndian",const Color.fromRGBO(79, 60, 201, 0.7), Colors.transparent),
    ModelOfDivisions("Haut-Nkam",const Color.fromRGBO(126, 247, 74, 0.75), Colors.transparent),
    ModelOfDivisions("Hauts-Plateaux",const Color.fromRGBO(126, 247, 74, 0.75), Colors.transparent),
    ModelOfDivisions("Moungo",Colors.teal, Colors.transparent),
    ModelOfDivisions("Haute - Sanaga",const Color.fromRGBO(99, 164, 230, 1), Colors.transparent),
    ModelOfDivisions("Nde",const Color.fromRGBO(126, 247, 74, 0.75), Colors.transparent),
    ModelOfDivisions("Mbam - Et - Inoubou",const Color.fromRGBO(99, 164, 230, 1), Colors.transparent),
    ModelOfDivisions("Nkam",Colors.teal, Colors.transparent),
    ModelOfDivisions("Meme",const Color.fromRGBO(79, 60, 201, 0.7), Colors.transparent),
    ModelOfDivisions("Haut - Nyong",const Color(0xfff9bf73), Colors.transparent),
    ModelOfDivisions("Sanaga - Maritime",Colors.teal, Colors.transparent),
    ModelOfDivisions("Lékié",const Color.fromRGBO(99, 164, 230, 1), Colors.transparent),
    ModelOfDivisions("Fako", const Color.fromRGBO(79, 60, 201, 0.7), Colors.transparent),
    ModelOfDivisions("Nyong - Et - Mfoumou",const Color.fromRGBO(99, 164, 230, 1), Colors.transparent),
    ModelOfDivisions("Méfou - Et - Afamba", const Color.fromRGBO(99, 164, 230, 1), Colors.transparent),
    ModelOfDivisions("Wouri",Colors.teal, Colors.transparent),
    ModelOfDivisions("Nyong - Et - Kéllé",const Color.fromRGBO(99, 164, 230, 1), Colors.transparent),
    ModelOfDivisions("Boumba - Et - Ngoko",const Color(0xfff9bf73), Colors.transparent),
    ModelOfDivisions("Nyong - Et - So'o",const Color.fromRGBO(99, 164, 230, 1), Colors.transparent),
    ModelOfDivisions("Méfou - Et - Akono",const Color.fromRGBO(99, 164, 230, 1), Colors.transparent),
    ModelOfDivisions("Dja - Et - Lobo",const Color(0xffdfd6f6), Colors.transparent),
    ModelOfDivisions("Océan",const Color(0xffdfd6f6), Colors.transparent),
    ModelOfDivisions("Mvila",const Color(0xffdfd6f6), Colors.transparent),
    ModelOfDivisions("Vallée - Du - Ntem", const Color(0xffdfd6f6),Colors.transparent),
    ModelOfDivisions("Kadeï",const Color(0xfff9bf73), Colors.transparent),
    ModelOfDivisions("Mfoundi",const Color.fromRGBO(99, 164, 230, 1), Colors.transparent),
    ModelOfDivisions("Mifi",const Color.fromRGBO(126, 247, 74, 0.75), Colors.transparent ),
    ModelOfDivisions("Koung-Khi", const Color.fromRGBO(126, 247, 74, 0.75), Colors.transparent),

  ];


  final List<ModelOfSubdivisions> subdivisionsList=[
    ModelOfSubdivisions("Tignère"),
    ModelOfSubdivisions("Poli"),
    ModelOfSubdivisions("Touboro"),
    ModelOfSubdivisions("Lagdo"),
    ModelOfSubdivisions("Tcholliré"),
    ModelOfSubdivisions("Mbé"),
    ModelOfSubdivisions("Mayo-Baléo"),
    ModelOfSubdivisions("Béka"),
    ModelOfSubdivisions("Kumba 2"),
    ModelOfSubdivisions("Makary"),
    ModelOfSubdivisions("Banka"),
    ModelOfSubdivisions("Makondo"),
    ModelOfSubdivisions("Hilé - Halifa"),
    ModelOfSubdivisions("Logbadjeck"),
    ModelOfSubdivisions("Petté"),
    ModelOfSubdivisions("Sangmelima"),
    ModelOfSubdivisions("Bamendjou"),
    ModelOfSubdivisions("Zoétélé"),
    ModelOfSubdivisions("Limbe 3"),
    ModelOfSubdivisions("Dembo"),
    ModelOfSubdivisions("Porhi"),
    ModelOfSubdivisions("Edéa 2"),
    ModelOfSubdivisions("Massok"),
    ModelOfSubdivisions("Kontcha"),
    ModelOfSubdivisions("Moulvoudaye"),
    ModelOfSubdivisions("Bourrha"),
    ModelOfSubdivisions("Mora"),
    ModelOfSubdivisions("Rey-Bouba"),
    ModelOfSubdivisions("Bibemi"),
    ModelOfSubdivisions("Meiganga"),
    ModelOfSubdivisions("Ndikinimeki"),
    ModelOfSubdivisions("Bankim"),
    ModelOfSubdivisions("Isangele"),
    ModelOfSubdivisions("Ako"),
    ModelOfSubdivisions("Tibati"),
    ModelOfSubdivisions("Furu Awa"),
    ModelOfSubdivisions("Misaje"),
    ModelOfSubdivisions("Ngaoundal"),
    ModelOfSubdivisions("Nwa"),
    ModelOfSubdivisions("Fungom"),
    ModelOfSubdivisions("Bum"),
    ModelOfSubdivisions("Nkambe"),
    ModelOfSubdivisions("Menchum Valley"),
    ModelOfSubdivisions("Ndu"),
    ModelOfSubdivisions("Akwaya"),
    ModelOfSubdivisions("Gobo"),
    ModelOfSubdivisions("Kaélé"),
    ModelOfSubdivisions("Idenau"),
    ModelOfSubdivisions("Salapoumbé"),
    ModelOfSubdivisions("Kyé Ossi"),
    ModelOfSubdivisions("Yoko"),
    ModelOfSubdivisions("Magba"),
    ModelOfSubdivisions("Abong Mbang"),
    ModelOfSubdivisions("Nkongsamba 3"),
    ModelOfSubdivisions("Wum"),
    ModelOfSubdivisions("Mokolo"),
    ModelOfSubdivisions("Tchatibali"),
    ModelOfSubdivisions("Ngaoundéré 2"),
    ModelOfSubdivisions("Garoua 1"),
    ModelOfSubdivisions("Widikum-Menka"),
    ModelOfSubdivisions("Bétaré Oya"),
    ModelOfSubdivisions("Kribi 2"),
    ModelOfSubdivisions("Biwong-Bulu"),
    ModelOfSubdivisions("Mamfe"),
    ModelOfSubdivisions("Messaména"),
    ModelOfSubdivisions("Bibé"),
    ModelOfSubdivisions("Eyumojock"),
    ModelOfSubdivisions("Nkolafamba"),
    ModelOfSubdivisions("Ngambé"),
    ModelOfSubdivisions("Galim"),
    ModelOfSubdivisions("Upper Bayang"),
    ModelOfSubdivisions("Kouoptamo"),
    ModelOfSubdivisions("Koutaba"),
    ModelOfSubdivisions("Mbouda"),
    ModelOfSubdivisions("Nkum"),
    ModelOfSubdivisions("Lembe"),
    ModelOfSubdivisions("Mindif"),
    ModelOfSubdivisions("Mélong"),
    ModelOfSubdivisions("Mundemba"),
    ModelOfSubdivisions("Tiko"),
    ModelOfSubdivisions("Mengang"),
    ModelOfSubdivisions("Bangangté"),
    ModelOfSubdivisions("Ndoukoula"),
    ModelOfSubdivisions("Batié"),
    ModelOfSubdivisions("Meyomessi"),
    ModelOfSubdivisions("Bangem"),
    ModelOfSubdivisions("Edéa 1"),
    ModelOfSubdivisions("Bana"),
    ModelOfSubdivisions("Tombel"),
    ModelOfSubdivisions("Figuil"),
    ModelOfSubdivisions("Nguti"),
    ModelOfSubdivisions("Dzeng"),
    ModelOfSubdivisions("Makenene"),
    ModelOfSubdivisions("Ekondo Titi"),
    ModelOfSubdivisions("Bayagam"),
    ModelOfSubdivisions("Bélel"),
    ModelOfSubdivisions("Banyo"),
    ModelOfSubdivisions("Bengbis"),
    ModelOfSubdivisions("Dir"),
    ModelOfSubdivisions("Mbven"),
    ModelOfSubdivisions("Belo"),
    ModelOfSubdivisions("Bafut"),
    ModelOfSubdivisions("Yokadouma"),
    ModelOfSubdivisions("Yingui"),
    ModelOfSubdivisions("Yabassi"),
    ModelOfSubdivisions("Bot-Makak"),
    ModelOfSubdivisions("Nguibassal"),
    ModelOfSubdivisions("Mvangan"),
    ModelOfSubdivisions("Nkondjock"),
    ModelOfSubdivisions("Konye"),
    ModelOfSubdivisions("Mbanga"),
    ModelOfSubdivisions("Bamusso"),
    ModelOfSubdivisions("Wabane"),
    ModelOfSubdivisions("Alou"),
    ModelOfSubdivisions("Nkongsamba 1"),
    ModelOfSubdivisions("Bamenda 2"),
    ModelOfSubdivisions("Idabato"),
    ModelOfSubdivisions("Akonolinga"),
    ModelOfSubdivisions("Fotokol"),
    ModelOfSubdivisions("Nkoteng"),
    ModelOfSubdivisions("Ebebda"),
    ModelOfSubdivisions("Sa'a"),
    ModelOfSubdivisions("Maroua 3"),
    ModelOfSubdivisions("Mbandjock"),
    ModelOfSubdivisions("Douala 4"),
    ModelOfSubdivisions("Yaoundé 1"),
    ModelOfSubdivisions("Elig-Mfomo"),
    ModelOfSubdivisions("Ngie"),
    ModelOfSubdivisions("Galim-Tignère"),
    ModelOfSubdivisions("Edzendoum"),
    ModelOfSubdivisions("Lolodorf"),
    ModelOfSubdivisions("Gari-Gombo"),
    ModelOfSubdivisions("Mayo-Darley"),
    ModelOfSubdivisions("Kong-ni"),
    ModelOfSubdivisions("Mouanko"),
    ModelOfSubdivisions("Kétté"),
    ModelOfSubdivisions("Nlonako"),
    ModelOfSubdivisions("Mayo-Oulo"),
    ModelOfSubdivisions("Guider"),
    ModelOfSubdivisions("Djohong"),
    ModelOfSubdivisions("Hina"),
    ModelOfSubdivisions("Lokoundje"),
    ModelOfSubdivisions("Ndom"),
    ModelOfSubdivisions("Nguélébok"),
    ModelOfSubdivisions("Lomié"),
    ModelOfSubdivisions("Mengong"),
    ModelOfSubdivisions("Oveng"),
    ModelOfSubdivisions("Djoum"),
    ModelOfSubdivisions("Waza"),
    ModelOfSubdivisions("Ayos"),
    ModelOfSubdivisions("Doumé"),
    ModelOfSubdivisions("Kékem"),
    ModelOfSubdivisions("Fonfoué"),
    ModelOfSubdivisions("Madingring"),
    ModelOfSubdivisions("Ngoura"),
    ModelOfSubdivisions("Wina"),
    ModelOfSubdivisions("Fundong"),
    ModelOfSubdivisions("Oku"),
    ModelOfSubdivisions("Yaoundé 6"),
    ModelOfSubdivisions("Njikwa"),
    ModelOfSubdivisions("Mbonge"),
    ModelOfSubdivisions("Njinikom"),
    ModelOfSubdivisions("Kai-Kai"),
    ModelOfSubdivisions("Mbengwi"),
    ModelOfSubdivisions("Meyomessala"),
    ModelOfSubdivisions("Méri"),
    ModelOfSubdivisions("Jakiri"),
    ModelOfSubdivisions("Tubah"),
    ModelOfSubdivisions("Biwong-Bane"),
    ModelOfSubdivisions("Nganha"),
    ModelOfSubdivisions("Nyambaka"),
    ModelOfSubdivisions("Martap"),
    ModelOfSubdivisions("Eséka"),
    ModelOfSubdivisions("Muyuka"),
    ModelOfSubdivisions("Yaoundé 3"),
    ModelOfSubdivisions("Doumetang"),
    ModelOfSubdivisions("Garoua Boulaï"),
    ModelOfSubdivisions("Gachiga"),
    ModelOfSubdivisions("Massangam"),
    ModelOfSubdivisions("Batouri"),
    ModelOfSubdivisions("Babadjou"),
    ModelOfSubdivisions("Mintom"),
    ModelOfSubdivisions("Kribi 1"),
    ModelOfSubdivisions("Noni"),
    ModelOfSubdivisions("Ndélélé"),
    ModelOfSubdivisions("Mbang"),
    ModelOfSubdivisions("Kombo Abedimo"),
    ModelOfSubdivisions("Nitoukou"),
    ModelOfSubdivisions("Mbangassina"),
    ModelOfSubdivisions("Moloundou"),
    ModelOfSubdivisions("Limbe 2"),
    ModelOfSubdivisions("Akono"),
    ModelOfSubdivisions("Ndobian"),
    ModelOfSubdivisions("Limbe 1"),
    ModelOfSubdivisions("Yaoundé 2"),
    ModelOfSubdivisions("Kumba 3"),
    ModelOfSubdivisions("Obala"),
    ModelOfSubdivisions("Kumbo"),
    ModelOfSubdivisions("Ma'an"),
    ModelOfSubdivisions("Ambam"),
    ModelOfSubdivisions("Baschéo"),
    ModelOfSubdivisions("Pitoa"),
    ModelOfSubdivisions("Tcheboa"),
    ModelOfSubdivisions("Penka-Michel"),
    ModelOfSubdivisions("Baleng"),
    ModelOfSubdivisions("Baré-Bakem"),
    ModelOfSubdivisions("Bafoussam 1"),
    ModelOfSubdivisions("Njombé-Penja"),
    ModelOfSubdivisions("Nsem"),
    ModelOfSubdivisions("Bonaléa"),
    ModelOfSubdivisions("Okola"),
    ModelOfSubdivisions("Mayo Moskota"),
    ModelOfSubdivisions("Mengueme"),
    ModelOfSubdivisions("Dibang"),
    ModelOfSubdivisions("Matomb"),
    ModelOfSubdivisions("Santchou"),
    ModelOfSubdivisions("Ebolowa 1"),
    ModelOfSubdivisions("Taibong"),
    ModelOfSubdivisions("Maroua 1"),
    ModelOfSubdivisions("Ngambé-Tikar"),
    ModelOfSubdivisions("Babessi"),
    ModelOfSubdivisions("Messondo"),
    ModelOfSubdivisions("Efoulan"),
    ModelOfSubdivisions("Mfou"),
    ModelOfSubdivisions("Ebolowa 2"),
    ModelOfSubdivisions("Nkongsamba 2"),
    ModelOfSubdivisions("Makak"),
    ModelOfSubdivisions("Gazawa"),
    ModelOfSubdivisions("Garoua 3"),
    ModelOfSubdivisions("Douala 5"),
    ModelOfSubdivisions("Batchenga"),
    ModelOfSubdivisions("Garoua 2"),
    ModelOfSubdivisions("Olamzé"),
    ModelOfSubdivisions("Fongo-Tongo"),
    ModelOfSubdivisions("Bangourain"),
    ModelOfSubdivisions("Monatélé"),
    ModelOfSubdivisions("Ngaoui"),
    ModelOfSubdivisions("Foumban"),
    ModelOfSubdivisions("Balikumbat"),
    ModelOfSubdivisions("Bamenda 3"),
    ModelOfSubdivisions("Afanloum"),
    ModelOfSubdivisions("Batibo"),
    ModelOfSubdivisions("Kar-Hay"),
    ModelOfSubdivisions("Nyanon"),
    ModelOfSubdivisions("Santa"),
    ModelOfSubdivisions("Bali"),
    ModelOfSubdivisions("Douala 1"),
    ModelOfSubdivisions("Soa"),
    ModelOfSubdivisions("Toko"),
    ModelOfSubdivisions("Mindourou"),
    ModelOfSubdivisions("Malantouen"),
    ModelOfSubdivisions("Ngoulemakong"),
    ModelOfSubdivisions("Campo"),
    ModelOfSubdivisions("Bikok"),
    ModelOfSubdivisions("Maroua 2"),
    ModelOfSubdivisions("Touroua"),
    ModelOfSubdivisions("Bertoua 2"),
    ModelOfSubdivisions("Ndop"),
    ModelOfSubdivisions("Dschang"),
    ModelOfSubdivisions("Douala 2"),
    ModelOfSubdivisions("Mbalmayo"),
    ModelOfSubdivisions("Batcham"),
    ModelOfSubdivisions("Foumbot"),
    ModelOfSubdivisions("Zina"),
    ModelOfSubdivisions("Manoka"),
    ModelOfSubdivisions("Fontem"),
    ModelOfSubdivisions("Kombo Itindi"),
    ModelOfSubdivisions("Yagoua"),
    ModelOfSubdivisions("Buea"),
    ModelOfSubdivisions("Bardanké"),
    ModelOfSubdivisions("Bandja"),
    ModelOfSubdivisions("Nguelemendouka"),
    ModelOfSubdivisions("Bamenda 1"),
    ModelOfSubdivisions("Atok"),
    ModelOfSubdivisions("Evodoula"),
    ModelOfSubdivisions("Ngoro"),
    ModelOfSubdivisions("Endom"),
    ModelOfSubdivisions("Mandjou"),
    ModelOfSubdivisions("Ngoumou"),
    ModelOfSubdivisions("Minta"),
    ModelOfSubdivisions("Bangou"),
    ModelOfSubdivisions("Somalomo"),
    ModelOfSubdivisions("Nanga-Eboko"),
    ModelOfSubdivisions("Dargala"),
    ModelOfSubdivisions("Banwa"),
    ModelOfSubdivisions("Mvengue"),
    ModelOfSubdivisions("Deuk"),
    ModelOfSubdivisions("Bazou"),
    ModelOfSubdivisions("Ngaoundéré 1"),
    ModelOfSubdivisions("Koza"),
    ModelOfSubdivisions("Bakou"),
    ModelOfSubdivisions("Ngaoundéré 3"),
    ModelOfSubdivisions("Olanguina"),
    ModelOfSubdivisions("Ngoila"),
    ModelOfSubdivisions("Ngomedzap"),
    ModelOfSubdivisions("Tonga"),
    ModelOfSubdivisions("Bafang"),
    ModelOfSubdivisions("Pouma"),
    ModelOfSubdivisions("Ngog-Mapubi"),
    ModelOfSubdivisions("Manjo"),
    ModelOfSubdivisions("Kumba 1"),
    ModelOfSubdivisions("Kom-Yambette"),
    ModelOfSubdivisions("Loum"),
    ModelOfSubdivisions("Diang"),
    ModelOfSubdivisions("Lobo"),
    ModelOfSubdivisions("Belabo"),
    ModelOfSubdivisions("Bokito"),
    ModelOfSubdivisions("Ntui"),
    ModelOfSubdivisions("Mbotoro"),
    ModelOfSubdivisions("Mbankomo"),
    ModelOfSubdivisions("Dizangué"),
    ModelOfSubdivisions("Yaoundé 7"),
    ModelOfSubdivisions("Bipindi"),
    ModelOfSubdivisions("Massok"),
    ModelOfSubdivisions("Dibombari"),
    ModelOfSubdivisions("Dikoume-Balue"),
    ModelOfSubdivisions("Bamougoum"),
    ModelOfSubdivisions("Mombo"),
    ModelOfSubdivisions("Bandjoum"),
    ModelOfSubdivisions("Douala 3"),
    ModelOfSubdivisions("Djebem"),
    ModelOfSubdivisions("Djimon"),
    ModelOfSubdivisions("Bassamba"),
    ModelOfSubdivisions("Kousseri"),
    ModelOfSubdivisions("Yaoundé 4"),
    ModelOfSubdivisions("Goulfey"),
    ModelOfSubdivisions("Logone Birni"),
    ModelOfSubdivisions("Darrak"),
    ModelOfSubdivisions("Akom II"),
    ModelOfSubdivisions("Kentzou"),
    ModelOfSubdivisions("Niété"),
    ModelOfSubdivisions("Blangoua"),
    ModelOfSubdivisions("Kolofata"),
    ModelOfSubdivisions("Moutourwa"),
    ModelOfSubdivisions("Bafia"),
    ModelOfSubdivisions("Yaoundé 5"),
    ModelOfSubdivisions("Angossas"),
    ModelOfSubdivisions("Bondjock"),
    ModelOfSubdivisions("Kikki"),
    ModelOfSubdivisions("Guidiguis"),
    ModelOfSubdivisions("Kobdombo"),
    ModelOfSubdivisions("Guéré"),
    ModelOfSubdivisions("Nkolmetet"),
    ModelOfSubdivisions("Baham"),
    ModelOfSubdivisions("Biyouha"),
    ModelOfSubdivisions("Bertoua 1"),
    ModelOfSubdivisions("Awaé"),
    ModelOfSubdivisions("Ombessa"),
    ModelOfSubdivisions("Dimako"),
    ModelOfSubdivisions("Esse"),
    ModelOfSubdivisions("Mogodé"),
    ModelOfSubdivisions("Kalfou"),
    ModelOfSubdivisions("Tokombéré"),
    ModelOfSubdivisions("Bogo"),
    ModelOfSubdivisions("Akoeman"),
    ModelOfSubdivisions("Mboma"),
    ModelOfSubdivisions("Maga"),
    ModelOfSubdivisions("Datchéka"),
    ModelOfSubdivisions("Soulèdé Roua"),
    ModelOfSubdivisions("Vélé"),

  ];


}
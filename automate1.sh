#!/bin/bash
set -e

read FILE
read LINE_NO
TIME=$(date +%H:%M:%S)
SEC=$(date +%S)
#echo "$TIME"

LOREM=(HomerSimpson MargeSimpson BartSimpson LisaSimpson MaggieSimpson AbrahamSimpson SantasLittleHelper SnowballII ApuNahasapeemapetilon BarneyGumble BleedingGumsMurphy ChiefClancyWiggum DeweyLargo Eddie EdnaKrabappel ItchyAndScratchy JaneyPowell JasperBeardly KentBrockman KrustyTheClown LennyLeonard Lou MartinPrince MarvinMonroe MilhouseVanHouten MoeSzyslak MrBurns NedFlanders OttoMann PattyBouvier RalphWiggum ReverendTimothyLovejoy SelmaBouvier SeymourSkinner SherriAndTerri SideshowBob ToddFlanders WaylonSmithers CarlCarlson DolphStarbeam DrJuliusHibbert DrNickRiviera ElizabethHoover HelenLovejoy HermanHermann JacquelineBouvier JimboJones KearneyZzyzwicz LionelHutz MaudeFlanders MayorJoeQuimby NelsonMuntz PrincessKashmir ProfessorJonathanFrink RainierWolfcastle RodFlanders SideshowMel TroyMcClure WiseGuy AgnesSkinner AkiraKurosawa Blue-HairedLawyer ComicBookGuy GroundskeeperWillie JudgeRoySnyder KangAndKodos LuannVanHouten MrTeeny SnakeJailbird ArniePye BerniceHibbert BumblebeeMan DrederickTatum HansMoleman KirkVanHouten LunchladyDoris OldJewishMan RuthPowers SeaCaptain SqueakyVoicedTeen BabyGerald CletusSpuckler LuigiRisotto MissSpringfield SuperintendentGaryChalmers AliceGlick Database TheRichTexan SarahWiggum ÜterZörker BrandineSpuckler DiscoStu FatTony Louie MonaSimpson Legs GilGunderson ManjulaNahasapeemapetilon LindseyNaegle MrsVanderbilt ArtieZiff Duffman GloriaJailbird TheYesGuy CookieKwan JohnnyTightlips RabbiHymanKrustofsky CrazyCatLady JessicaLovejoy Booberella CapitalCityGoofball Leprechaun LingBouvier Julio MrsMuntz ChazzBusby RogerMeyersJr ShaunaChalmers KumikoAlbertson SurlyDuff)

sed -i -e "${LINE_NO}s/^/${TIME} ${LOREM[$SEC]} ${LOREM[$SEC*2]}NL/g" $FILE
sed -i -e 's/NL/\
/g' $FILE

LOREM1=${LOREM[$SEC]}
LOREM2=${LOREM[$SEC*2]}

git commit -am "automate2.sh adding \`$TIME $LOREM1 $LOREM2\` to line $LINE_NO of $FILE"
#
##git pull-request


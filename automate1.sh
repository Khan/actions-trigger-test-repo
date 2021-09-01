#!/bin/bash
set -e

if [ $# -eq 0 ]
  then
    read -p "File? " FILE 
    read -p "Line No? " LINE_NO
elif [ $# -eq 1 ]
  then
    FILE=$1      
    read -p "Line No? " LINE_NO
else
  FILE=$1
  LINE_NO=$2
fi

TIME=$(date +%H:%M:%S)
SEC=$(date +%S)


LOREM=(HOMER_SIMPSON MARGE_SIMPSON BART_SIMPSON LISA_SIMPSON MAGGIE_SIMPSON ABRAHAM_SIMPSON SANTAS_LITTLE_HELPER SNOWBALL_II APU_NAHASAPEEMAPETILON BARNEY_GUMBLE BLEEDING_GUMS_MURPHY CHIEF_CLANCY_WIGGUM DEWEY_LARGO EDDIE EDNA_KRABAPPEL ITCHY_AND_SCRATCHY JANEY_POWELL JASPER_BEARDLY KENT_BROCKMAN KRUSTY_THE_CLOWN LENNY_LEONARD LOU MARTIN_PRINCE MARVIN_MONROE MILHOUSE_VAN_HOUTEN MOE_SZYSLAK MR_BURNS NED_FLANDERS OTTO_MANN PATTY_BOUVIER RALPH_WIGGUM REVEREND_TIMOTHY_LOVEJOY SELMA_BOUVIER SEYMOUR_SKINNER SHERRI_AND_TERRI SIDESHOW_BOB TODD_FLANDERS WAYLON_SMITHERS CARL_CARLSON DOLPH_STARBEAM DR_JULIUS_HIBBERT DR_NICK_RIVIERA ELIZABETH_HOOVER HELEN_LOVEJOY HERMAN_HERMANN JACQUELINE_BOUVIER JIMBO_JONES KEARNEY_ZZYZWICZ LIONEL_HUTZ MAUDE_FLANDERS MAYOR_JOE_QUIMBY NELSON_MUNTZ PRINCESS_KASHMIR PROFESSOR_JONATHAN_FRINK RAINIER_WOLFCASTLE ROD_FLANDERS SIDESHOW_MEL TROY_MCCLURE WISE_GUY AGNES_SKINNER AKIRA_KUROSAWA BLUE-HAIRED_LAWYER COMIC_BOOK_GUY GROUNDSKEEPER_WILLIE JUDGE_ROY_SNYDER KANG_AND_KODOS LUANN_VAN_HOUTEN MR_TEENY SNAKE_JAILBIRD ARNIE_PYE BERNICE_HIBBERT BUMBLEBEE_MAN DREDERICK_TATUM HANS_MOLEMAN KIRK_VAN_HOUTEN LUNCHLADY_DORIS OLD_JEWISH_MAN RUTH_POWERS SEA_CAPTAIN SQUEAKY-VOICED_TEEN BABY_GERALD CLETUS_SPUCKLER LUIGI_RISOTTO MISS_SPRINGFIELD SUPERINTENDENT_GARY_CHALMERS ALICE_GLICK DATABASE THE_RICH_TEXAN SARAH_WIGGUM ÜTER_ZÖRKER BRANDINE_SPUCKLER DISCO_STU FAT_TONY LOUIE MONA_SIMPSON LEGS GIL_GUNDERSON MANJULA_NAHASAPEEMAPETILON LINDSEY_NAEGLE MRS_VANDERBILT ARTIE_ZIFF DUFFMAN GLORIA_JAILBIRD THE_YES_GUY COOKIE_KWAN JOHNNY_TIGHTLIPS RABBI_HYMAN_KRUSTOFSKY CRAZY_CAT_LADY JESSICA_LOVEJOY BOOBERELLA CAPITAL_CITY_GOOFBALL LEPRECHAUN LING_BOUVIER JULIO MRS_MUNTZ CHAZZ_BUSBY ROGER_MEYERS_JR SHAUNA_CHALMERS KUMIKO_ALBERTSON SURLY_DUFF)

LOREM1=${LOREM[$SEC]}
LOREM2=${LOREM[$SEC*2]}


echo "Updating file..."
sed -i -e "${LINE_NO}s/^/${LINE_NO} ${TIME} ${LOREM1} ${LOREM2}NL/g" $FILE
sed -i -e 's/NL/\
/g' $FILE


echo "Committing change..."
set -x
git commit -am "automate2.sh adding \`$TIME $LOREM1 $LOREM2\` to line $LINE_NO of $FILE"



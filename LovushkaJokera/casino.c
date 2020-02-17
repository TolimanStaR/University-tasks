#include <stdlib.h>
#include <stdio.h>
#include "structures.h"

char class[4][8] = {
        "Diamond",
        "Heart  ",
        "Club   ",
        "Spade  ",
};

char id[13][6] = {
        "Two  ",
        "Three",
        "Four ",
        "Five ",
        "Six  ",
        "Seven",
        "Eight",
        "Nine ",
        "Ten  ",
        "Jack ",
        "Queen",
        "King ",
        "Ace  ",
};

struct Deck create(int cards, struct Deck deck) {
     deck.stack = (struct Card *) calloc(cards, sizeof(struct Card));

     for (int i = 0; i < cards; ++i) {
          for (int k = 0; class[(i * 4) / cards][k] != '\0'; ++k) {
               deck.stack[i].class[k] = class[(i * 4) / cards][k];
          }
          for (int k = 0; id[i % (cards / 4)][k] != '\0'; ++k) {
               deck.stack[i].id[k] = id[i % (cards / 4)][k];
          }
     }
     return deck;
}

struct Deck shuffle(int cards, struct Deck deck, int iden) {
     struct Card temp;
     int toShuffle;
     int shuffled;
     srand(iden);

     for (unsigned int i = 0; i < 1000; ++i) {
          toShuffle = rand() % cards;
          shuffled = rand() % cards;

          // Поехал индусский код: (Перетасовка колоды)

          for (int k = 0; deck.stack[toShuffle].class[k] != '\0'; ++k) {
               temp.class[k] = deck.stack[toShuffle].class[k];
               deck.stack[toShuffle].class[k] = deck.stack[shuffled].class[k];
               deck.stack[shuffled].class[k] = temp.class[k];
          }
          for (int k = 0; deck.stack[toShuffle].id[k] != '\0'; ++k) {
               temp.id[k] = deck.stack[toShuffle].id[k];
               deck.stack[toShuffle].id[k] = deck.stack[shuffled].id[k];
               deck.stack[shuffled].id[k] = temp.id[k];
          }
     }
     return deck;
}

void game (int players, int cards, struct Deck deck, int iden) {

     int Continue = 1;
     while(Continue) {
          ++iden;
          int cardsForEachPlayer = cards / players;
          struct Deck *difichento = (struct Deck *) calloc(players, sizeof(struct Deck));
          deck = shuffle(cards, deck, iden);

          for (int i = 0; i < players; ++i) {
               difichento[i].stack = (struct Card *) calloc(cardsForEachPlayer, sizeof(struct Card));
          }

          for (int i = 0; i < players * cardsForEachPlayer; ++i) {
               for (int k = 0; deck.stack[i].class[k] != '\0'; ++k) {
                    difichento[i % players].stack[i / players].class[k] = deck.stack[i].class[k];
               }
               for (int k = 0; deck.stack[i].id[k] != '\0'; ++k) {
                    difichento[i % players].stack[i / players].id[k] = deck.stack[i].id[k];
               }
          }

          for (int i = 0; i < players; ++i) {
               printf("Player number %d received the following cards:\n", i + 1);
               for (int j = 0; j < cardsForEachPlayer; ++j) {
                    printf("%s - %s\n", difichento[i].stack[j].class, difichento[i].stack[j].id);
               }
          }
          puts("Do you want to continue game? (1 - Yes, 0 - No)\n");
          scanf("%d", &Continue);
     }
}

void LovushkaJokera() {
     char joker[] = "..............................................................................................................\n..............................................................................................................\n..............................................................................................................\n..............................................................................................................\n..............................................................................................................\n..............................................................................................................\n..............................................................................................................\n..............................................................................................................\n..............................................................................................................\n..............................................................................................................\n..............................................................................................................\n.................................,@,..........................................................................\n...............................,G@@@#2,.......................................................................\n..............................@@@@@@@@@@Mr.,.................................@@,@.............................\n..............................9@@@@@@@@@@@@@,...........................@@@@@@@@@3............................\n..............................,@@@@@@@@@@@@@@@G.,...................A@@@@@@@@@@@9.............................\n...............................@@@@@@@@@@@@@@@@@@@G.G@r.....,r@G@@@@@@@s3@@@@@@@;.............................\n...............................,@@@@@@@.,@S@@,r@@@@@@@@...;A@@@@@S.;As,.@@@@@@@,..............................\n................................,@@@@@@@@3,,,,M@@@@@@@@@@#@@@@@@@@@@@@@@@@@@@@2...............................\n..................................A@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@:...............................\n..................................:@@@@@@@@@@@@@@@@@@@i....r@@@@@@@@@@@@@@A,......r...........................\n....................................@@@@@@@@@@@@@@@@@H......,@,@@@@@@@@@@@.......,:...........................\n.....................................,M@@@@@@@@@G@............:@.,,9@@MSiis;.....&,...........................\n..............................,,.......@@@@@@;....A..................:..........:r............................\n............................,.AAA:..............................................A:............................\n..............................,AAAA,...........................................,A.............................\n..............................,hAAAr...........H@............................;AA,.............................\n..............................,.XA3,,........:2iG............................AH,,.............................\n.................................GAAB.....................................,;A&,...............................\n.................................9AA,..........,,,........................3A&,................................\n..................................;AH,..,,........i@.........,H,........,,A&..................................\n...................................,A2,A&,..........:@9...,,@,......,,2AAAH,..................................\n....................................,9AAS.,,.,..........XX.........:GHHAAA,...................................\n......................................rAAAAAA3.,...............,,3HBHAAA&.....................................\n.......................................:AAHHHHHHHAAHHAHi,,2AAHHHHAAAHA:.......................................\n........................................,9XAAAAAAAHHHHHHHHHHHHAAAAA,,.........................................\n...........................................,9GA&HAAAAAHHHAAAAAAAA;,...........................................\n...............................................iHAAAAAAAAAAAAAH;.,............................................\n..................................................,,.,:;;::,2,,...............................................\n.................,#@@r.......................,................................................................\n...............,@@@@@....,@@@@@r...@@@@@@@@,.@@@....@@@.,@@M..@@@,.:@@S.s@@,.:@@@@.....,,G@,..................\n............,,@@@@@@@...;@@.,,@@@,.:@@...X@@.@@5....@@i..@@,...@@...@@..,@@.,@@@.....,:@@@@...................\n............M@@@.,@@@...@@,....;@h.,@@@@@@@,,@@@,...@@s..@@,...@@...@@,.,@@@@h......,@@s.@@...................\n..........,@@@@,..@@@..,@@.....,@@.,@@..,,@@A.@@@:..@@s..@@,...@@...@@,.,@@@@,.....,@@,..@@...................\n..........@@@i....@@@..,@@.....,@@.,@@.....@@..9@@@;@@s..@@,...@@...@@,.,@@@@@,....@@....@@...................\n.........@@@H.....@@@...@@:...,s@@.,@@...,@@@...,,@@@@s..@@,...@@...@@,.,@@,@@,...,@@BMMM@@...................\n........,@@@......@@@...H@@....@@..,@@,,:@@@........@@...@@,...@@...@@,.,@@..@@,...@@@@@@@@...................\n........@@@:......@@@...,@@..,@@@..,@@@@@@,,...,..,,@@...@@,...@@...@@,.,@@...@@,,:@B....@@...................\n........@@@,......@@@.....@@@@@;,..;@@@A,......@@@@@@....@@@@@@@@@@@@@,.,@@.,.H@@,X@@...,@@,..................\n........:@@9......@@@.............,,..........................................................................\n.........@@@,.....@@@,........,.,,:,,,..,,..,,,,,,,s@@@X....:,,,..,,,.,:,,,,,,:,.:,,,,,,:,......,,............\n........,HHHHX....HHHA,.,:@@@@@,..,@@@..@@.,@@@.,i@@@@@@@M...@@,.@@@,..@@@@@@@@..,@@@@@@@@...,@@@@,...........\n......................,;@@@@@@@......@@@@@@@@,,..@@,....@@...@@@@@,....@@@@@@@,...@@...,@@,.@@@.@@,...........\n......................@@@@;,@@@.......@@@@@@.....@@......@@..@@@2.,....@@,...,....@@..@@X.,@@...@@,...........\n....................:@@@....@@@.....,.@@@@@@;....@@....,.@@..@@@@,,....@@,........@@.@@...@@h...@@,...........\n..................,:@@@,....@@@.....,@@,@@.@@...,@@.....@@@..@@,@@,....@@,........@@@@....@@....@@,...........\n...................@@@,,....@@@....,@@,.@@.,@@,..@@,....@@,..@@.,@@,...@@,........@@@.....@@@@@@@@,...........\n...................@@@......@@@...,@@...@@.,.@@,.,@@:..@@M...@@...@@,..@@,........@@.....,@#....@@............\n...................@@@......@@@..,@@@,..@@...B@@,..@@@@@@....@@...@@@,,@@@@@@@@@..@@,...,:@@....@@,...........\n...................@@@......@@@..,..,..,,....,....,.,.,,...,,..,..,..,..........,:..,...,.........,...........\n..................,@@@......@@@...............................................................................\n..................,@@@......@@@...............................................................................\n.................@@@@@@@@@@@@@@@@,............................................................................\n.................@@@@@@@@@@@@@@@@.............................................................................\n................,..,............@.............................................................................";
     printf("%s", joker);
}

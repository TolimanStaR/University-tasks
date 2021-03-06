#ifndef CHATSERVER_DATA_H
#define CHATSERVER_DATA_H

#include<sys/socket.h>
#include<arpa/inet.h>
#include <pthread.h>
#include <time.h>
#include <stdlib.h>

#define MESSAGE_LENGTH 500
#define None (int)0

#define MAX_USERS 128
#define MAX_CHATS 64
#define MAX_GROUPS 32


enum userStatus {
    Online,
    Busy,
    Offline,
};

enum retCode {
    OK,
    ERROR,
};

const char userCommand[10][120] = {
        "/reg",
        "/login",
        "/list",
        "/request",
        "/accept",
        "/decline",
        "/leave",
};


typedef struct User {
    pthread_t thread;
    int userID;
    char username[30];
    char password[30];
    int socket;
    int status;
    int currentChatID;
} User;


typedef struct Message {
    char messageText[200];
    long int sendTime;
    int ownerID;
} Message;


typedef struct Chat {
    User firstUser;
    User secondUser;
    int firstSocket;
    int secondSocket;
    int chatID;
} Chat;


typedef struct Group {
    User *userList;
    User groupOwner;
} Group;


int usersCount;
User usersList[MAX_USERS];

int chatsCount;
Chat chatsList[MAX_CHATS];


#endif

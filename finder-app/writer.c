#include <syslog.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {

    openlog("writer", LOG_PID | LOG_CONS, LOG_USER);

    if(argc != 3)
    {
        syslog(LOG_ERR, "There is an error upon an argument \n");
        exit(EXIT_FAILURE);
        
    }
    
    const char *file = argv[1];

    FILE *fp = fopen(file, "w");
    if (fp == NULL) {
        syslog(LOG_ERR, "Error while opening file");
        exit(EXIT_FAILURE);
    }

    fprintf(fp, "%s\n", argv[2]);

    syslog(LOG_DEBUG, "Writing %s to %s", argv[2], file);
    printf("File created successful\n");
    fclose(fp);
    closelog();

    return 0;
}
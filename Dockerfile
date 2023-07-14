FROM anapsix/alpine-java 
COPY /target/addressbook.war /home/addressbook.war
CMD ["java","-war","/home/addressbook.war"]

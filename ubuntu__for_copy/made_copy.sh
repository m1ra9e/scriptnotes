#!/bin/bash
clear

echo "-----Start_of_copy_process-----"

echo "Started copying to the 'backup(3)(in_progress)'."
rm -rf "/home/shamsutdinov_lr/workspace/backup(3)(in_progress)"
mkdir "/home/shamsutdinov_lr/workspace/backup(3)(in_progress)"

echo " - copying the 'codekeeper'"
cp -a -R "/home/shamsutdinov_lr/workspace/codekeeper" "/home/shamsutdinov_lr/workspace/backup(3)(in_progress)"

echo " - copying the 'codekeeper-internal'"
cp -a -R "/home/shamsutdinov_lr/workspace/codekeeper-internal" "/home/shamsutdinov_lr/workspace/backup(3)(in_progress)"

echo " - copying the 'pgcodekeeper-docs'"
cp -a -R "/home/shamsutdinov_lr/workspace/pgcodekeeper-docs" "/home/shamsutdinov_lr/workspace/backup(3)(in_progress)"

echo "Done."

echo "--------------------"

echo "Started copying to the 'backup(2)(just_in_case)'."
rm -rf "/home/shamsutdinov_lr/workspace/backup(2)(just_in_case)"
mkdir "/home/shamsutdinov_lr/workspace/backup(2)(just_in_case)"

echo " - copying the 'codekeeper'"
cp -a -R "/home/shamsutdinov_lr/workspace/codekeeper" "/home/shamsutdinov_lr/workspace/backup(2)(just_in_case)"

echo " - copying the 'codekeeper-internal'"
cp -a -R "/home/shamsutdinov_lr/workspace/codekeeper-internal" "/home/shamsutdinov_lr/workspace/backup(2)(just_in_case)"

echo " - copying the 'pgcodekeeper-docs'"
cp -a -R "/home/shamsutdinov_lr/workspace/pgcodekeeper-docs" "/home/shamsutdinov_lr/workspace/backup(2)(just_in_case)"

echo "Done."

echo "-----End_of_copy_process-----"
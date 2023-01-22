for file in {0..10}
do
        echo welcome > "$file.txt"
done

git branch develop
git checkout develop
git add .
git commit -m "develop commit"
git checkout master

read var1
read var2
if [ $var1=$var2 ]
then
        tar -cvf files.tar /home/vagrant/task-directory
        git add files.tar
        git commit -m "commit to master"
        git push origin master
else
        git push origin develop
fi

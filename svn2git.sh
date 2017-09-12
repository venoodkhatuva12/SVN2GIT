
read -p 'Please Enter your Full Name with space like this "John Smith": ' Fullname
git config --global user.name "$Fullname"

read -p 'Please Enter your EMAIL ID: ' mailid
git config --global user.email "$mailid"


#Which Repo you need to get from svn
read -p "Please enter the reponame you wish to get from SVN : " svnrepo

#ask user about allowed hostname
read -p "Please Enter name which you need to give converted gitrepo : " projectname
git svn clone $svnrepo $projectname
cd $projectname

#ask user about password
read -p "Please Enter the URL of git repo where you want to put the svn repo : " repogit
git remote add beanstalk $repogit
git push beanstalk master

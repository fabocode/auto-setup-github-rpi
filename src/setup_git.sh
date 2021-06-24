# Run Script to setup github account 
# usage call program with the following command 
# sh setup_git.sh -u username -p password

# pass username and password as parameters 
while getopts u:p:e: flag # take -u and -p as parameters 
do
    case "${flag}" in
        u) username=${OPTARG};; # save -u into username 
        p) password=${OPTARG};; # save -p into password 
        e) email=${OPTARG};; # save -e into email
    esac
done
echo "Username: $username"; # github account 
echo "Age: $password";  # password 
echo "email: $email"; # email 

# setup git with username and email
git config --global user.name $username
git config --global user.email $email

# enable colored output in the terminal
git config --global colorl.ui true

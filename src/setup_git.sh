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

# abort if no input is supplied 
if [ $# -eq 0 ]
    then 
        echo "No arguments supplied"
        exit 1
fi

echo "Username: $username"; # github account 
echo "password: $password";  # password 
echo "email: $email"; # email 

# setup git with username and email
git config --global user.name $username
git config --global user.email $email

# enable colored output in the terminal
git config --global colorl.ui true

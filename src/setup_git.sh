# Run Script to setup github account 
# usage call program with the following command 
# sh setup_git.sh -u username -p password

# pass username and password as parameters 
while getopts u:p: flag # take -u and -p as parameters 
do
    case "${flag}" in
        u) username=${OPTARG};; # save -u into username 
        p) password=${OPTARG};; # save -p into password 
    esac
done
echo "Username: $username"; # github account 
echo "Age: $password";  # password 



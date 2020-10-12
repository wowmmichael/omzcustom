tips() {

cat <<EOF
1. pfd print the path of the topmost Finder directory;
2. ofd open the current directory in Finder;
3. pfs print the selections in Finder.
4. launch jacquard & skippy
    docker-compose run -p 1731:1731 -p 1732:1732 jacquard-integrations bash
    docker-compose run -p 8008:8008 -p 8009:8009 skippy-integrations bash
EOF

}

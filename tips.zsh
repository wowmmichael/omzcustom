tips() {

cat <<EOF
1. pfd print the path of the topmost Finder directory;
2. ofd open the current directory in Finder;
3. pfs print the selections in Finder.
4. export variable from dotenv file: 'export \$(cat .env | xargs)'
EOF

}


tips-rg() {
    
cat <<EOF
1. use 'rg --files | rg ...' for searching file or directory names;
2. use 'rg -P' to switch the regex engine to pcre2 to be able to use look-around and back-reference; 
3. print the file names only with 'rg -l'; conversely, use 'rg -I' to hide file names;
4. search in specific file types: checkout 'rg -t ', 'rg --type-list', 'rg --add-type'; there is also the 'include' directive;
5. use '-F' for fixed string matching instead of pattern matching
6. use '-o' to output the matching part only; handy to work together with replacement '-r' 

EOF

# referencers:
# 1. https://learnbyexample.github.io/substitution-with-ripgrep/

}

tips-jq() {

cat <<EOF
TBD
EOF

}

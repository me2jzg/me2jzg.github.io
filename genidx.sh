#! /bin/sh

cd "$(dirname $0)"


cat <<EOF
<!DOCTYPE html>
<html>
<head>
    <title>MyDocs</title>
</head>
<body>
<h2>My Documents</h2>
<hr/>
<br/>
EOF

for f in `ls .` ; do 
    if [ "${f: -4}" != 'Docs' ]; then continue; fi

    echo "<a href=\"$f/index.html\">$f</a><br/>"
done


cat <<EOF
<br/>
<hr/>
</body>
</html>
EOF


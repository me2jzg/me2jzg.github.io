#! /bin/sh

cd "$(dirname $0)"


cat <<EOF
<!DOCTYPE html>
<html>
<head>
    <title>MyDocs</title>

    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="expires" content="0" />
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


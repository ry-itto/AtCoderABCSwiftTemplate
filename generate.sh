mkdir -p A
mkdir -p B
mkdir -p C
mkdir -p D
mkdir -p E
mkdir -p F

for i in `ls -d */`
do
    cp main.swift $i
done

/bin/echo -n 'Project Name: '; read name
sed -e "s/PROJECT_NAME/$name/g" project_template.yml > project.yml

xcodegen

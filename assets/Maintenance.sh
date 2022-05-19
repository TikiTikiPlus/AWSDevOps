for f in `find ./src -type f -name "*.ts"`
      do
        sed -i.bak '1 i\//Huey Olegario 1522057' $f
        echo "$f"
      done
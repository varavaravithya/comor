for file in *.html; do
	if [ -f "$file" ]; then
		iconv -f TIS-620 -t UTF-8 "$file" > "$file.converted" && mv -f "$file.converted" "$file"
	fi
done

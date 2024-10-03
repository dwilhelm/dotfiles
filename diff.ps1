foreach ($file in (git ls-files home/)) {
    echo "Checking ${file}"
    $homepath = Join-Path "${HOME}" ($file -replace "home/")
    if (Test-Path "${homepath}") {
        git diff $homepath $file
    } else {
        echo   "    Not found ${file}"
    }
}

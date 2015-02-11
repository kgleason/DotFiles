dd()
{
    local dd=$(which dd); [ "$dd" ] || {
        echo "'dd' is not installed!" >&2
        return 1
    }

    local pv=$(which pv); [ "$pv" ] || {
        echo "'pv' is not installed!" >&2
        "$dd" "$@"
        return $?
    }

    local arg arg2 infile
    local -a args
    for arg in "$@"
    do
        arg2=${arg#if=}
        if [ "$arg2" != "$arg" ]
        then
            infile=$arg2
        else
            args[${#args[@]}]=$arg
        fi
    done

    "$pv" -tpreb "$infile" | "$dd" "${args[@]}"
}

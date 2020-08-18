function rstudio
    # Env exists but is not activated :
    if test -e pyproject.toml -a ! -n "$VIRTUAL_ENV"
        echo pyproject.toml was found in (pwd) 
        echo However the virtualenv is not active
        echo please run \"poetry shell\" first
    # Env exists and is activated :
    else if test -n "$VIRTUAL_ENV"
        if test -e update_data_lock.py
            python update_data_lock.py
        end
        open -a RStudio .
    # Env does not exist
    else
        open -a RStudio .
    end
end
